import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/home/widget/auction_grid.dart';
import 'package:mzadcom/home/cubit/home_cubit.dart';
import 'package:mzadcom/home/widget/expires-soon/expires_soon.dart';
import 'package:mzadcom/home/widget/search/home_search.dart';
import 'package:mzadcom/home/widget/home_shimmer.dart';
import 'package:mzadcom/home/widget/image_slider.dart';
import 'package:mzadcom/home/tab_item_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // context.read<HomeCubit>().getActive();
    context.read<HomeCubit>().getPrevious();
    context.read<HomeCubit>().getTotaleOfAuctions();

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
          },
          builder: (context, state) {
            final homeCubit = context.watch<HomeCubit>();

            if (state is LoadingActiveState) {
              return buildHomeShimmerEffect();
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.01),
                  SimpleImageSlider(),
                  SizedBox(height: screenHeight * 0.02),
                  HomeSearch(),
                  SizedBox(height: screenHeight * 0.02),
                  ExpiresSoonAuctions(),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                    child: Text(
                      "Home.auction".tr(),
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                      height: screenHeight * 0.005), 

                  Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.04, 
                    margin: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.004), 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      color: color2,
                    ),
                    child: TabBar(
                      controller: _tabController,
                        isScrollable:true,
                        
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: color1,
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        TabItemHome(
                          titleofauctions: "Home.active".tr(),
                          num: homeCubit.totalActive,

                        ),
                        TabItemHome(

                          titleofauctions: "Home.directness".tr(),
                          num: homeCubit.totalDirect,
                        ),
                        TabItemHome(

                          titleofauctions: "Home.upcoming".tr(),
                          num: homeCubit.totalFeatured,
                        ),
                        TabItemHome(

                          titleofauctions: "Home.previous".tr(),
                          num: homeCubit.totalPrevious,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    height: screenHeight * 0.5,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        AuctionGrid(
                          status: 'Home.active'.tr(),
                        ),
                        AuctionGrid(
                          status: 'Home.directness'.tr(),
                        ),
                        AuctionGrid(
                          status: 'Home.upcoming'.tr(),
                        ),
                        AuctionGrid(
                            status: 'Home.previous'.tr(),
                            data: context.read<HomeCubit>().previousAuctions),

                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
