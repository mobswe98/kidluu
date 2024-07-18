import 'package:flutter/material.dart';
import 'package:flutter_sixvalley_ecommerce/localization/language_constrants.dart';
import 'package:flutter_sixvalley_ecommerce/provider/onboarding_provider.dart';
import 'package:flutter_sixvalley_ecommerce/provider/splash_provider.dart';
import 'package:flutter_sixvalley_ecommerce/utill/custom_themes.dart';
import 'package:flutter_sixvalley_ecommerce/utill/dimensions.dart';
import 'package:flutter_sixvalley_ecommerce/view/screen/auth/auth_screen.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utill/app_constants.dart';
import '../../basewidget/select_language_bottom_sheet.dart';
import '../setting/settings_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  final Color indicatorColor;
  final Color selectedIndicatorColor;

  OnBoardingScreen({Key? key,
    this.indicatorColor = Colors.grey,
    this.selectedIndicatorColor = Colors.black,
  }) : super(key: key);

  //modified
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final items = [
    Image.asset('assets/images/Slide1_image.png'),
    Image.asset('assets/images/Slide2_image.png'),
    Image.asset('assets/images/Slide3_image.png'),
  ];

  @override
  Widget build(BuildContext context) {
    Provider.of<OnBoardingProvider>(context, listen: false).initBoardingList(context);


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

  //   return Scaffold(
  //     body: Stack(
  //       clipBehavior: Clip.none,
  //       children: [
  //
  //         Consumer<OnBoardingProvider>(
  //           builder: (context, onBoardingList, child) => ListView(
  //             children: [
  //               SizedBox(
  //                 height: height*0.7,
  //                 child: PageView.builder(
  //
  //                   itemCount: onBoardingList.onBoardingList.length,
  //                   controller: _pageController,
  //                   itemBuilder: (context, index) {
  //                     return Padding(padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
  //                       child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center,
  //                         mainAxisAlignment: MainAxisAlignment.end, children: [
  //                           Image.asset(onBoardingList.onBoardingList[index].imageUrl,),
  //                           Padding(padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeDefault),
  //                             child: Text(onBoardingList.onBoardingList[index].title, style: titilliumBold.copyWith(fontSize: 18), textAlign: TextAlign.center),),
  //                           Text(onBoardingList.onBoardingList[index].description, textAlign: TextAlign.center, style: titilliumRegular.copyWith(
  //                             fontSize: Dimensions.fontSizeDefault)),
  //                           const SizedBox(height: Dimensions.paddingSizeDefault),
  //                         ],
  //                       ),
  //                     );
  //                   },
  //                   onPageChanged: (index) {
  //                     onBoardingList.changeSelectIndex(index);
  //                   },
  //                 ),
  //               ),
  //
  //
  //               Padding(padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
  //                 child: Stack(children: [
  //                   if(onBoardingList.onBoardingList.isNotEmpty)
  //                   Center(child: SizedBox(height: 50, width: 50,
  //                       child: CircularProgressIndicator(
  //                         valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor.withOpacity(.6)),
  //                         value: (onBoardingList.selectedIndex + 1) / onBoardingList.onBoardingList.length,
  //                         backgroundColor: Theme.of(context).primaryColor.withOpacity(.125),
  //                       ),
  //                     ),
  //                   ),
  //                   Align(alignment: Alignment.center,
  //                     child: GestureDetector(
  //                       onTap: () {
  //                         if (onBoardingList.selectedIndex == onBoardingList.onBoardingList.length - 1) {
  //                           Provider.of<SplashProvider>(context, listen: false).disableIntro();
  //                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AuthScreen()));
  //                         } else {
  //                           _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  //                         }
  //                       },
  //                       child: Container(
  //                         height: 40,
  //                         width: 40,
  //                         margin: const EdgeInsets.only(top: 5),
  //                         decoration: const BoxDecoration(shape: BoxShape.circle,),
  //                         child: Icon(onBoardingList.selectedIndex == onBoardingList.onBoardingList.length - 1 ? Icons.check : Icons.navigate_next,
  //                           color: Theme.of(context).primaryColor,
  //                           size: 30,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ]),
  //               )
  //             ],
  //           ),
  //         ),
  //
  //         Positioned(child: Align(alignment: Alignment.topRight, child: InkWell(
  //           onTap: (){
  //             Provider.of<SplashProvider>(context, listen: false).disableIntro();
  //             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AuthScreen()));
  //           },
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
  //             child: Text('${getTranslated('skip', context)}', style: textMedium.copyWith(color: Theme.of(context).primaryColor)),
  //           ),
  //         )))
  //       ],
  //     ),
  //   );
  // }
    return Consumer<OnBoardingProvider>(
      builder: (context, onBoardingList, child) =>
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          title:  Column(
            children: [
              Text(AppConstants.welcome_to_kidluu,
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal
                  )),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue,
        body:
           SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 16),
                        children: [
                          TextSpan(text:getTranslated('welcome_note', context)),
                          // TextSpan(text:' learning with you. Our mission is to provide a safe and '),
                          // TextSpan(text: 'supportive space for kids to explore their emotions and'),
                          // TextSpan(text:' develop essential life skills.')

                        ]
                    )),

                SizedBox(
                  height: height*0.50,
                  child: PageView(
                    controller: _pageController,
                    children: items,
                  ),

                )
              ],
            ),
          ),

        bottomSheet: BottomSheet(
          backgroundColor: Colors.lightBlue,
          builder: (BuildContext ctx) => Container(
            color: Colors.transparent,
            height: height*0.20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120.0),
                    topRight: Radius.circular(90.0)
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController, count: 3,
                      effect: SlideEffect(
                        activeDotColor: Colors.lightBlue,
                        dotColor: Colors.lightBlueAccent.shade100,
                        dotHeight: 6.0,
                        dotWidth: 40.0,
                      ),
                    ),
                    SizedBox(height: 40,),

                    SizedBox(
                      width: width*0.90,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: (){

                                        //Provider.of<SplashProvider>(context, listen: false).disableIntro();
                                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SettingsScreen()));
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AuthScreen()));
                          },

                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              elevation: 4,
                              shadowColor: Colors.lightBlue,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)
                              )
                          ),
                          child: Text(getTranslated("get_started",context)?? "Get Started!",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    )

                  ],
                ),
              ),
            ),
          ), onClosing: () {  },
        ),
      ),
    );
  }

}
