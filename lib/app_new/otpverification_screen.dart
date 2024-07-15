import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sixvalley_ecommerce/app_new/loginscreen.dart';
import 'package:flutter_sixvalley_ecommerce/app_new/pin_creatingscreen.dart';
import 'package:flutter_sixvalley_ecommerce/localization/language_constrants.dart';
import 'package:flutter_sixvalley_ecommerce/provider/auth_provider.dart';
import 'package:flutter_sixvalley_ecommerce/utill/color_resources.dart';
import 'package:flutter_sixvalley_ecommerce/view/basewidget/custom_exit_card.dart';
import 'package:flutter_sixvalley_ecommerce/view/screen/dashboard/dashboard_screen.dart';
import 'package:flutter_sixvalley_ecommerce/view/screen/setting/settings_screen.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../../utill/font_size.dart';
import '../view/basewidget/custom_slider/custom_textformfield.dart';

class OtpVerification extends StatefulWidget{
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> with SingleTickerProviderStateMixin {

  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    Provider.of<AuthProvider>(context, listen: false).updateSelectedIndex(0, notify: false);
    super.initState();
  }
  bool scrolled = false;
  @override
  Widget build(BuildContext context) {

   final TextEditingController _pinPutController = TextEditingController();
   final FocusNode _pinPutFocusNode = FocusNode();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool _value = false;

    return WillPopScope(
      onWillPop: () async {
        if (Provider.of<AuthProvider>(context, listen: false).selectedIndex != 0) {
          Provider.of<AuthProvider>(context, listen: false).updateSelectedIndex(0);
          return false;
        } else {
          if(Navigator.canPop(context)){
            Navigator.of(context).pop();
          }else{
            showModalBottomSheet(backgroundColor: Colors.transparent,
                context: context, builder: (_)=> const CustomExitCard());
          }

        }
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xfff6fcfe),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Consumer<AuthProvider>(
            builder: (context, authProvider,_) {
              return SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(getTranslated('enter_otp', context)!,style: TextStyle(
                        color: ColorResources.header_textColor,
                        fontSize: FontSize.FONT_30,
                        fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: 6,),

                    Text(getTranslated('otp_note', context)!,style: TextStyle(
                        color: ColorResources.black,
                        fontSize: FontSize.FONT_16,
                        fontWeight: FontWeight.w500
                    ),),

                    SizedBox(height: 12,),

                    Padding(
                        padding: EdgeInsets.all(10),
                      child: Center(
                        child: Pinput(
                          length: 6,
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          keyboardType: TextInputType.number,
                          closeKeyboardWhenCompleted: true,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                          onTap: () {
                            _pinPutController.clear();
                          },
                          onCompleted: (pin) async{

                          },
                        ),
                      ),

                    ),



                    //     Stack(children: [
                    //       Container(height: 200, decoration: BoxDecoration(color: Theme.of(context).primaryColor)),
                    //       Image.asset(Images.loginBg,fit: BoxFit.cover,height: 200, opacity : const AlwaysStoppedAnimation(.15)),
                    //       Padding(
                    //         padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
                    //         child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    //           Image.asset(Images.splashLogo, width: 130, height: 100)]),
                    //       ),
                    //
                    //
                    //       ],
                    //     ),
                    //
                    //     AnimatedContainer(
                    //       transform: Matrix4.translationValues(0, -20, 0),
                    //       curve: Curves.fastOutSlowIn,
                    //       decoration: BoxDecoration(
                    //           color: Theme.of(context).scaffoldBackgroundColor,
                    //           borderRadius: const BorderRadius.vertical(top: Radius.circular(Dimensions.radiusExtraLarge))),
                    //       duration: const Duration(seconds: 2),
                    //       child: SingleChildScrollView(
                    //         child: Padding(
                    //           padding: const EdgeInsets.only(top: Dimensions.paddingSizeDefault),
                    //           child: Column(mainAxisSize: MainAxisSize.min, children: [
                    //             Padding(padding: const EdgeInsets.all(Dimensions.marginSizeLarge),
                    //               child: Row(children: [
                    //
                    //                 InkWell(onTap: () => authProvider.updateSelectedIndex(0),
                    //                     child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    //                       Text(getTranslated('sign_in', context)!, style: authProvider.selectedIndex == 0 ?
                    //                       titleRegular.copyWith(color: Theme.of(context).primaryColor, fontSize: Dimensions.fontSizeLarge) : titleRegular.copyWith(fontSize: Dimensions.fontSizeLarge)),
                    //                       Container(height: 3, width: 25, margin: const EdgeInsets.only(top: 8),
                    //                         decoration: BoxDecoration(
                    //                             borderRadius: BorderRadius.circular(Dimensions.paddingSizeSmall),
                    //                             color: authProvider.selectedIndex == 0 ? Theme.of(context).primaryColor : Colors.transparent
                    //                         ),
                    //                       )])),
                    //                 const SizedBox(width: Dimensions.paddingSizeExtraLarge),
                    //
                    //
                    //                 InkWell(onTap: () => authProvider.updateSelectedIndex(1),
                    //                     child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    //
                    //                       Text(getTranslated('sign_up', context)!, style: authProvider.selectedIndex == 1 ?
                    //                       titleRegular.copyWith(color: Theme.of(context).primaryColor, fontSize: Dimensions.fontSizeLarge) :
                    //                       titleRegular.copyWith(fontSize: Dimensions.fontSizeLarge)),
                    //                       Container(height: 3, width: 25, margin: const EdgeInsets.only(top: 8),
                    //                         decoration: BoxDecoration(
                    //                             borderRadius: BorderRadius.circular(Dimensions.paddingSizeSmall),
                    //                             color: authProvider.selectedIndex == 1 ? Theme.of(context).primaryColor : Colors.transparent
                    //                         ),
                    //                       )]))
                    //               ],
                    //               ),
                    //             ),
                    //
                    //             authProvider.selectedIndex == 0? const SignInWidget() : const SignUpWidget(),
                    //           ],),
                    //         ),
                    //       ),
                    //     )
                    Container(
                      margin: EdgeInsets.only(top: height *0.50,right: 10,left: 10) ,
                      width: width*0.90,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: (){

                            //Provider.of<SplashProvider>(context, listen: false).disableIntro();

                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const PinSetScreen()));
                          },

                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              elevation: 4,
                              shadowColor: Colors.lightBlue,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)
                              )
                          ),
                          child: Text(getTranslated("next",context)?? "Next!",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    )

                  ],
                ),
              );
            }
        ),
      ),
    );
  }


}

