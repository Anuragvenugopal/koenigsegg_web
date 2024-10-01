import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koenigsegg_web/utils/app_colors.dart';
import 'package:koenigsegg_web/widget/build_icon_widget.dart';
import 'package:koenigsegg_web/widget/build_text_button.dart';

import 'package:koenigsegg_web/widget/build_text_widget.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class WebScreenView extends StatefulWidget {
  const WebScreenView({Key? key}) : super(key: key);

  @override
  State<WebScreenView> createState() => _WebScreenViewState();
}

class _WebScreenViewState extends State<WebScreenView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.grey,
        elevation: 0,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 50),
              Image.asset(
                "assets/images/Koenigsegg-Logo1.png",
                color: Colors.white,
                height: 100,
              ),
              Spacer(),
              BuildTextButton(
                text: "MEGACARS",
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              SizedBox(width: 150),
              BuildTextButton(
                text: "TECHNOLOGY",
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              SizedBox(width: 150),
              BuildIconWidget(
                icon: Icon(
                  Icons.drag_handle,
                  color: AppColors.white,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        controller: context.scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Image.png',
                  width: screenWidth,
                  height: screenHeight / 0.9,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 350,
                  child: SvgPicture.asset(
                    'assets/images/CC850_w_logo.svg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: screenHeight / 8,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.black.withOpacity(0.9),
                          AppColors.black.withOpacity(0.0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230, right: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BuildTextWidget(
                        text: 'Discover',
                        color: AppColors.white,
                        fontSize: 16,
                      ),
                      BuildIconWidget(
                        icon: Icon(
                          Icons.arrow_right_alt,
                          color: AppColors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: screenWidth,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.black.withOpacity(0.9),
                    AppColors.black.withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/image.jpeg',
                      fit: BoxFit.cover,
                      width: screenWidth,
                      height: screenHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 220),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 2,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "WORLDS FIRST",
                              style: TextStyle(
                                  fontSize: 80,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          // SlideInDown(
                          //   globalKey:GlobalKey(),
                          //   delay: Duration(milliseconds: 600),
                          //   // repeat: true,
                          //   child: Text(
                          //     "WORLDS FIRST",
                          //     style: TextStyle(
                          //         fontSize: 80,
                          //         color: AppColors.white,
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // ),

                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: WidgetAnimator(
                              incomingEffect: WidgetTransitionEffects
                                  .incomingSlideInFromBottom(),
                              atRestEffect: WidgetRestingEffects.bounce(
                                  numberOfPlays: 2,
                                  delay: AnimateList.defaultInterval),
                              child: TextAnimator(
                                "MEGA GT FOR FOUR",
                                style: TextStyle(
                                    fontSize: 80,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          // BuildTextWidget(
                          //   text: 'WORLDS FIRST',
                          //   color: AppColors.white,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 60,
                          // ),

                          // Padding(
                          //   padding: const EdgeInsets.only(left: 100),
                          //   child:
                          //   BuildAnimatedText(text: 'MEGA GT FOR FOUR',
                          //     textStyle:TextStyle(
                          //         letterSpacing: 3,
                          //         fontSize: 80,
                          //         fontWeight:
                          //         FontWeight.bold
                          //     ), colors: AppColors.white,),
                          //
                          // BuildTextWidget(
                          //   text: 'MEGA GT FOR FOUR',
                          //   color: AppColors.white,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 60,
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight / 0.7,
              color: AppColors.black,
              child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 50),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 200, left: 100),
                              child: AutoSizeText(
                                'TECHNOLOGICAL\nACHIEVEMENTS',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 2,
                                minFontSize: 12,
                                maxFontSize: 36,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 250),
                                    child: WidgetAnimator(
                                      incomingEffect: WidgetTransitionEffects
                                          .incomingSlideInFromBottom(),
                                      atRestEffect: WidgetRestingEffects.bounce(
                                          numberOfPlays: 3,
                                          delay: AnimateList.defaultInterval),
                                      child: TextAnimator(
                                        "IN-HOUSE",
                                        style: TextStyle(
                                            fontSize: 100,
                                            color: AppColors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 200),
                                    child: WidgetAnimator(
                                      incomingEffect: WidgetTransitionEffects
                                          .incomingSlideInFromBottom(),
                                      atRestEffect: WidgetRestingEffects.bounce(
                                          numberOfPlays: 3,
                                          delay: Durations.extralong1),
                                      child: TextAnimator(
                                        "INNOVATIONS",
                                        style: TextStyle(
                                            fontSize: 100,
                                            color: AppColors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),

                                    // BuildTextWidget(
                                    //   text: 'INNOVATIONS',
                                    //   color: AppColors.white,
                                    //   fontWeight: FontWeight.bold,
                                    //   fontSize: 100,
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 100, bottom: 300),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BuildTextWidget(
                                      text:
                                          'Staying ahead of the curve in a very\n'
                                          'competitive e-mobility landscape in true\n'
                                          'Koenigsegg fashion, we are offering our\n'
                                          'ground-breaking components to visionary\n'
                                          'clientele. Sharing this technology enables\n'
                                          'Koenigsegg to have a positive impact on\n'
                                          'CO2 reduction.',
                                      color: AppColors.white,
                                      fontSize: 17,
                                    ),
                                    SizedBox(height: 100),
                                    Row(
                                      children: [
                                        BuildTextWidget(
                                          text: 'Discover our solutions',
                                          color: AppColors.white,
                                          fontSize: 18,
                                        ),
                                        BuildIconWidget(
                                          icon: Icon(
                                            Icons.arrow_right_alt,
                                            color: AppColors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Container(
                                  height: 500,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Terrier combi_4.png'),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.centerRight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              width: screenWidth,
              height: screenHeight / 0.8,
              color: AppColors.white,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 150, top: 150),
                        child: Container(
                          height: 380,
                          width: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/image3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 80, left: 500),
                            child: BuildTextWidget(
                              text: 'ABOUT US',
                              color: AppColors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 4,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "WHY WE",
                              style: TextStyle(
                                  fontSize: 60,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: WidgetAnimator(
                              incomingEffect: WidgetTransitionEffects
                                  .incomingSlideInFromBottom(),
                              atRestEffect: WidgetRestingEffects.bounce(
                                  numberOfPlays: 4,
                                  delay: AnimateList.defaultInterval),
                              child: TextAnimator(
                                "DO WHAT",
                                style: TextStyle(
                                    fontSize: 60,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 4,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "WE DO",
                              style: TextStyle(
                                  fontSize: 60,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 400,
                              top: 100,
                            ),
                            child: BuildTextWidget(
                              text:
                                  'Every single detail of a Koenigsegg car is\n'
                                  'measured against our continuing goal: to\n'
                                  'enhance vehicle performance.\n',
                              color: AppColors.black,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 400),
                            child: Row(
                              children: [
                                BuildTextWidget(
                                  text: 'Discover more',
                                  color: AppColors.black,
                                  fontSize: 18,
                                ),
                                BuildIconWidget(
                                  icon: Icon(
                                    Icons.arrow_right_alt,
                                    color: AppColors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight / 0.8,
              color: AppColors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Container(
                        height: 700,
                        width: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/4.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 150),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BuildTextWidget(
                          text: 'OUR HISTOR',
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 4,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "DELIVERING ON",
                              style: TextStyle(
                                  fontSize: 60,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 4,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "A SINGULAR",
                              style: TextStyle(
                                  fontSize: 60,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 4,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "VISION",
                              style: TextStyle(
                                  fontSize: 60,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 70,
                            left: 300,
                          ),
                          child: BuildTextWidget(
                            text:
                                'On August 12, 1994, a 22-year-old Christian\n'
                                'von Koenigsegg decided to follow his dream\n'
                                'and build the world’s greatest sports car.\n'
                                'Koenigsegg Automotive is born.\n',
                            color: AppColors.black,
                            fontSize: 16,
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     BuildTextWidget(
                        //       text: 'Discover',
                        //       color: AppColors.black,
                        //       fontSize: 16,
                        //     ),
                        //     BuildIconWidget(
                        //       icon: Icon(
                        //         Icons.arrow_right_alt,
                        //         color: AppColors.black,
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight / 1,
              color: AppColors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 500),

                        WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects
                              .incomingSlideInFromBottom(),
                          atRestEffect: WidgetRestingEffects.bounce(
                              numberOfPlays: 4,
                              delay: AnimateList.defaultInterval),
                          child: TextAnimator(
                            "THE",
                            style: TextStyle(
                                fontSize: 70,
                                color: AppColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // BuildTextWidget(
                        //   text: 'THE',
                        //   color: AppColors.black,
                        //   fontSize: 70,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 4,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "SHOW",
                              style: TextStyle(
                                  fontSize: 70,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          // BuildTextWidget(
                          //   text: 'SHOW',
                          //   color: AppColors.black,
                          //   fontSize: 70,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        SizedBox(width: 500),
                        WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects
                              .incomingSlideInFromBottom(),
                          atRestEffect: WidgetRestingEffects.bounce(
                              numberOfPlays: 4,
                              delay: AnimateList.defaultInterval),
                          child: TextAnimator(
                            "MUST",
                            style: TextStyle(
                                fontSize: 70,
                                color: AppColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        // BuildTextWidget(
                        //   text: 'MUST',
                        //   color: AppColors.black,
                        //   fontSize: 60,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(
                                numberOfPlays: 4,
                                delay: AnimateList.defaultInterval),
                            child: TextAnimator(
                              "GO ON",
                              style: TextStyle(
                                  fontSize: 70,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          // BuildTextWidget(
                          //   text: 'GO ON',
                          //   color: AppColors.black,
                          //   fontSize: 70,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 250, left: 350),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BuildTextWidget(
                                    text: 'Megacars',
                                    color: AppColors.black,
                                    fontSize: 18,
                                  ),
                                  SizedBox(height: 20),
                                  BuildTextWidget(
                                    text: 'Technology',
                                    color: AppColors.black,
                                    fontSize: 18,
                                  ),
                                  SizedBox(height: 20),
                                  BuildTextWidget(
                                    text: 'About',
                                    color: AppColors.black,
                                    fontSize: 18,
                                  ),
                                  SizedBox(height: 20),
                                  BuildTextWidget(
                                    text: 'History',
                                    color: AppColors.black,
                                    fontSize: 18,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 150, bottom: 50),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BuildTextWidget(
                                      text: 'Dealer locator',
                                      color: AppColors.black,
                                      fontSize: 12,
                                    ),
                                    SizedBox(height: 20),
                                    BuildTextWidget(
                                      text: 'Shop',
                                      color: AppColors.black,
                                      fontSize: 12,
                                    ),
                                    SizedBox(height: 20),
                                    BuildTextWidget(
                                      text: 'Contact',
                                      color: AppColors.black,
                                      fontSize: 12,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 120, bottom: 50),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BuildTextWidget(
                                      text: 'Dealer locator',
                                      color: AppColors.black,
                                      fontSize: 12,
                                    ),
                                    SizedBox(height: 20),
                                    BuildTextWidget(
                                      text: 'Shop',
                                      color: AppColors.black,
                                      fontSize: 12,
                                    ),
                                    SizedBox(height: 20),
                                    BuildTextWidget(
                                      text: 'Contact',
                                      color: AppColors.black,
                                      fontSize: 12,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 100),
                        Padding(
                          padding: const EdgeInsets.only(left: 150, right: 100),
                          child: Row(
                            children: [
                              BuildIconWidget(
                                svgPicture: SvgPicture.asset(
                                  'assets/images/instagram_logo.svg',
                                  width: 15,
                                  height: 18,
                                ),
                              ),
                              BuildIconWidget(
                                svgPicture: SvgPicture.asset(
                                  'assets/images/twiter_log.svg',
                                  width: 15,
                                  height: 18,
                                ),
                              ),
                              BuildIconWidget(
                                svgPicture: SvgPicture.asset(
                                  'assets/images/faceboo_logo.svg',
                                  width: 15,
                                  height: 18,
                                ),
                              ),
                              BuildIconWidget(
                                svgPicture: SvgPicture.asset(
                                  'assets/images/youtube_Logo.svg',
                                  width: 15,
                                  height: 18,
                                ),
                              ),
                              Spacer(),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoLR7RQCrG1rvZ1Peqbp__46ZbHHi5dtY4VLsILM0882EjxoBSJx7_MJX81ZBYFocMRcQ&usqp=CAU',
                                height: 150,
                                width: 150,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 150),
                                child: Row(
                                  children: [
                                    BuildTextWidget(
                                      text:
                                          'Copyright © since 1994 – Koenigsegg Automotive AB',
                                      color: AppColors.black,
                                      fontSize: 10,
                                    ),
                                    Spacer(),
                                    BuildTextWidget(
                                      text: 'Sitemap',
                                      color: AppColors.black,
                                      fontSize: 10,
                                    ),
                                    SizedBox(width: 100),
                                    BuildTextWidget(
                                      text: 'Cookie Policy',
                                      color: AppColors.black,
                                      fontSize: 10,
                                    ),
                                    SizedBox(width: 100),
                                    BuildTextWidget(
                                      text: 'Legal Links',
                                      color: AppColors.black,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 130,
                    right: 130,
                    child: Divider(
                      color: AppColors.black,
                      thickness: 0.3,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 130,
                    right: 130,
                    child: Divider(
                      color: AppColors.black,
                      thickness: 0.3,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
