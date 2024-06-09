import 'package:ecommerce_app/config.dart';
import 'package:ecommerce_app/config/routes/app_router.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/home/data/data_sources/remote/home_remote_ds_impl.dart';
import 'package:ecommerce_app/features/home/data/models/products_model.dart';
import 'package:ecommerce_app/features/home/data/repositories/home_repo_impl.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_brands_use_case.dart';
import 'package:ecommerce_app/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:ecommerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/categories_tab.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/favorites_tab.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/home_tab.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/products_tab.dart';
import 'package:ecommerce_app/features/home/presentation/pages/tabs/profile_tab.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(const HomeEvent.getBrands())
        ..add(const HomeEvent.getCategories())
        ..add(const HomeEvent.getProducts())
        ..add(const HomeEvent.getCart())
        ..add(const HomeEvent.getWishList()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Image.asset(
                  AppImages.logo,
                  width: 66.w,
                  height: 22.h,
                  color: AppColors.blueColor,
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                actions: [
                  IconButton(
                      onPressed: () async{
                        await CacheHelper.saveData("token", "");
                        Navigator.pushNamed(context, AppRoutesName.login);
                      },
                      icon: Icon(
                        state.currentIndex == 3 ? Icons.logout : null,
                        color: AppColors.blueColor,
                        size: 32.r,
                      ))
                ],
              ),
              bottomNavigationBar: Container(
                decoration: const BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15))),
                child: BottomNavigationBar(
                  currentIndex:
                      state.currentIndex <= 3 ? state.currentIndex : 0,
                  onTap: (value) {
                    BlocProvider.of<HomeBloc>(context)
                        .add(HomeEvent.changeNavBar(value));
                  },
                  backgroundColor: Colors.transparent,
                  selectedFontSize: 0,
                  items: [
                    BottomNavBarItem(
                        index: 0,
                        currentIndex: state.currentIndex,
                        imagePath: AppImages.ic_home),
                    BottomNavBarItem(
                        index: 1,
                        currentIndex: state.currentIndex,
                        imagePath: AppImages.ic_categories),
                    BottomNavBarItem(
                        index: 2,
                        currentIndex: state.currentIndex,
                        imagePath: AppImages.ic_favorites),
                    BottomNavBarItem(
                        index: 3,
                        currentIndex: state.currentIndex,
                        imagePath: AppImages.ic_profile),
                  ],
                ),
              ),
              body: Padding(
                padding:
                    EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.0.h),
                child: Column(
                  children: [
                    state.currentIndex != 3
                        ? Row(
                            children: [
                              Expanded(
                                  child: TextFormField(
                                      style: Styles.searchBarTexStyle,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5.h),
                                          border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                width: 1,
                                                color: AppColors.blueColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.r)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                width: 1,
                                                color: AppColors.blueColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(25.r)),
                                          prefixIcon: const Icon(
                                            Icons.search,
                                            color: AppColors.blueColor,
                                          ),
                                          hintText: "what do you search for?",
                                          hintStyle:
                                              Styles.searchBarHintStyle))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Badge(
                                  alignment: Alignment.topCenter,
                                  label: Text(state.cartListLength! <= 9
                                      ? state.cartListLength.toString()
                                      : "+9"),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, AppRoutesName.cart);
                                      },
                                      icon: Image.asset(
                                        AppImages.ic_cart,
                                        width: 35.w,
                                        height: 35.h,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                            ],
                          )
                        : Container(),
                    Expanded(child: tabs[state.currentIndex])
                  ],
                ),
              ));
        },
      ),
    );
  }

  List<Widget> tabs = [
    HomeTab(),
    CategoriesTab(),
    FavoritesTab(),
    ProfileTab(),
    ProductsTab()
  ];
}
