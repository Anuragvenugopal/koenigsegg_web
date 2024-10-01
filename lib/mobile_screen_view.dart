import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koenigsegg_web/utils/app_colors.dart';
import 'package:koenigsegg_web/widget/build_icon_widget.dart';
import 'package:koenigsegg_web/widget/build_text_widget.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class MobileScreenView extends StatefulWidget {
  const MobileScreenView({super.key});

  @override
  State<MobileScreenView> createState() => _MobileScreenViewState();
}

class _MobileScreenViewState extends State<MobileScreenView> {
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
              SizedBox(width: 20),
              Image.asset(
                "assets/images/Koenigsegg-Logo1.png",
                color: Colors.white,
                height: 100,
              ),
              Spacer(),
              BuildIconWidget(
                icon: Icon(
                  Icons.drag_handle,
                  color: AppColors.white,
                  size: 30,
                ),
              ),
              // BuildTextWidget(
              //   text: 'MEGACARS',
              //   color: AppColors.white,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 13,
              // ),
              // SizedBox(width: 150),
              // BuildTextWidget(
              //   text: 'TECHNOLOGY',
              //   color: AppColors.white,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 13,
              // ),
              // SizedBox(width: 150),
              // BuildIconWidget(
              //   icon: Icon(
              //     Icons.drag_handle,
              //     color: AppColors.white,
              //   ),
              // ),
              SizedBox(width: 50),
            ],
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/car image.jpeg',
                  width: screenWidth / 0.1,
                  height: screenHeight / 0.9,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 250,
                  child: SvgPicture.asset(
                    'assets/images/CC850_w_logo.svg',
                    height: 50,
                    width: 50,
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
                // Padding(
                //   padding: const EdgeInsets.only(top:30,),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       BuildTextWidget(
                //         text: 'Discover',
                //         color: AppColors.white,
                //         fontSize: 16,
                //       ),
                //       BuildIconWidget(
                //         icon: Icon(
                //           Icons.arrow_right_alt,
                //           color: AppColors.white,
                //         ),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
            Container(
              width: screenWidth,
              height: 30,
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
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/carimage2.jpeg',
                    fit: BoxFit.cover,
                    width: screenWidth,
                    height: screenHeight/1.1,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 100,left:10  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects
                              .incomingSlideInFromBottom(),
                          atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                          child: TextAnimator(
                            "WORLDS FIRST",
                            style: TextStyle(
                                fontSize: 30,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        // BuildTextWidget(
                        //   text: 'WORLDS FIRST',
                        //   color: AppColors.white,
                        //   fontWeight: FontWeight.bold,
                        //   fontSize: 30,
                        // ),

                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                            child: TextAnimator(
                              "MEGA GT FOR FOUR",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        Container(
          width: screenWidth,
          height: screenHeight / 1,
          color: AppColors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child:
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                            child: TextAnimator(
                              "IN-HOUSE",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),


                          // BuildTextWidget(
                          //   text: 'IN-HOUSE',
                          //   color: AppColors.white,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 30,
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child:
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                            child: TextAnimator(
                              "INNOVATIONS",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),



                          // BuildTextWidget(
                          //   text: 'INNOVATIONS',
                          //   color: AppColors.white,
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 30,
                          // ),
                        ),
                      ],
                    ),
                  ],
                ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight / 2.6,
                          width: screenWidth / 1.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Terrier combi_4.png'),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ),
                        BuildTextWidget(
                          text:
                          'Staying ahead of the curve in a very  \n'
                              'competitive e-mobility landscape \n'
                              'in true Koenigsegg fashion, we are \n'
                              'offering our groundbreaking components  \n'
                              'clientele. Sharing this technology enables \n'
                              'to visionary Koenigsegg to have a  \n'
                              'positive impacton CO2 reduction.\n',
                          color: AppColors.white,
                          fontSize: 16,
                        ),
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
                            ),
                          ],
                        ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects
                              .incomingSlideInFromBottom(),
                          atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                          child: TextAnimator(
                            "WHY WE",
                            style: TextStyle(
                                fontSize: 40,
                                color: AppColors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),

                        // BuildTextWidget(
                        //   text: 'WHY WE',
                        //   color: AppColors.black,
                        //   fontSize: 40,
                        //   fontWeight: FontWeight.w700,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child:
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                            child: TextAnimator(
                              "DO WHAT",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),


                          // BuildTextWidget(
                          //   text: 'DO WHAT',
                          //   color: AppColors.black,
                          //   fontSize: 40,
                          //   fontWeight: FontWeight.w700,
                          // ),
                        ),
                        WidgetAnimator(
                          incomingEffect: WidgetTransitionEffects
                              .incomingSlideInFromBottom(),
                          atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                          child: TextAnimator(
                            "WE DO",
                            style: TextStyle(
                                fontSize: 40,
                                color: AppColors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        // BuildTextWidget(
                        //   text: 'WE DO',
                        //   color: AppColors.black,
                        //   fontSize: 40,
                        //   fontWeight: FontWeight.w700,
                        // ),
                        Container(
                          height: 480,
                          width: 320,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/image3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: BuildTextWidget(
                            text: 'Every single detail of a Koenigsegg car\n'
                                ' is measured against our continuing|\n'
                                'goal: to enhance vehicle performance.\n',
                            color: AppColors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Row(
                  //   children: [
                  //     BuildTextWidget(
                  //       text: 'Discover more',
                  //       color: AppColors.black,
                  //       fontSize: 15,
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
            Container(
                width: screenWidth,
                height: screenHeight / 0.7,
                color: AppColors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                            child: TextAnimator(
                              "DELIVERING ON",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          // BuildTextWidget(
                          //   text: 'DELIVERING ON',
                          //   color: AppColors.black,
                          //   fontSize: 30,
                          //   fontWeight: FontWeight.w700,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child:
                            WidgetAnimator(
                              incomingEffect: WidgetTransitionEffects
                                  .incomingSlideInFromBottom(),
                              atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                              child: TextAnimator(
                                "A SINGULAR",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            // BuildTextWidget(
                            //   text: 'A SINGULAR',
                            //   color: AppColors.black,
                            //   fontSize: 30,
                            //   fontWeight: FontWeight.w700,
                            // ),
                          ),
                          WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingSlideInFromBottom(),
                            atRestEffect: WidgetRestingEffects.bounce(numberOfPlays: 2,delay:AnimateList.defaultInterval ),
                            child: TextAnimator(
                              "VISION",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          // BuildTextWidget(
                          //   text: 'VISION',
                          //   color: AppColors.black,
                          //   fontSize: 30,
                          //   fontWeight: FontWeight.w700,
                          // ),
                          Container(
                            height: 480,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/4.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: BuildTextWidget(
                              text: 'On August 12, 1994, a 22-year-old \n'
                                  ' Christian von Koenigsegg decidedto \n'
                                  'follow his dream and build the world’s\n'
                                  ' greatest sports car. Koenigsegg\n'
                                  ' Automotive is born.\n',
                              color: AppColors.black,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              BuildTextWidget(
                                text: 'Discover more',
                                color: AppColors.black,
                                fontSize: 15,
                              ),
                              BuildIconWidget(
                                icon: Icon(
                                  Icons.arrow_right_alt,
                                  color: AppColors.black,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),

            // Container(
            //   width: screenWidth,
            //   height: screenHeight / 0.8,
            //   color: AppColors.white,
            //   child: Stack(
            //     children: [
            //       Align(
            //         alignment: Alignment.centerRight,
            //         child: Padding(
            //           padding: const EdgeInsets.only(right: 200),
            //           child: Container(
            //             height: 450,
            //             width: 300,
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage('assets/images/4.png'),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 150, top: 150),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             BuildTextWidget(
            //               text: 'OUR HISTOR',
            //               color: AppColors.black,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 16,
            //             ),
            //           ],
            //         ),
            //       ),
            //       Align(
            //         alignment: Alignment.centerLeft,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             BuildTextWidget(
            //               text: 'DELIVERING ON',
            //               color: AppColors.black,
            //               fontSize: 40,
            //               fontWeight: FontWeight.w700,
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 200),
            //               child: BuildTextWidget(
            //                 text: ' A SINGULAR',
            //                 color: AppColors.black,
            //                 fontSize: 40,
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(right: 170 ),
            //               child: BuildTextWidget(
            //                 text: 'VISION',
            //                 color: AppColors.black,
            //                 fontSize: 40,
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only( left: 180,top: 50),
            //               child: BuildTextWidget(
            //                 text:
            //                 'On August 12, 1994, a 22-year-old Christian\n'
            //                     'von Koenigsegg decided to follow his dream\n'
            //                     'and build the world’s greatest sports car.\n'
            //                     'Koenigsegg Automotive is born.\n',
            //                 color: AppColors.black,
            //                 fontSize: 16,
            //               ),
            //             ),
            //             // Row(
            //             //   children: [
            //             //     BuildTextWidget(
            //             //       text: 'Discover',
            //             //       color: AppColors.black,
            //             //       fontSize: 16,
            //             //     ),
            //             //     BuildIconWidget(
            //             //       icon: Icon(
            //             //         Icons.arrow_right_alt,
            //             //         color: AppColors.black,
            //             //       ),
            //             //     )
            //             //   ],
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Container(
              width: screenWidth,
              height: screenHeight / 1.5,
              color: AppColors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     SizedBox(width: 400),
                    //     BuildTextWidget(
                    //       text: 'THE',
                    //       color: AppColors.black,
                    //       fontSize: 50,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 250),
                    //       child: BuildTextWidget(
                    //         text: 'SHOW',
                    //         color: AppColors.black,
                    //         fontSize: 50,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     SizedBox(width: 400),
                    //     BuildTextWidget(
                    //       text: 'MUST',
                    //       color: AppColors.black,
                    //       fontSize: 50,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     Padding(
                    //       padding: EdgeInsets.only(left: 40),
                    //       child: BuildTextWidget(
                    //         text: 'GO ON',
                    //         color: AppColors.black,
                    //         fontSize: 50,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoLR7RQCrG1rvZ1Peqbp__46ZbHHi5dtY4VLsILM0882EjxoBSJx7_MJX81ZBYFocMRcQ&usqp=CAU',
                    height: 120,
                    width: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 80,left: 80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BuildTextWidget(
                              text: 'Megacars',
                              color: AppColors.black,
                              fontSize: 15,
                            ),
                            SizedBox(height: 20),
                            BuildTextWidget(
                              text: 'Technology',
                              color: AppColors.black,
                              fontSize: 15,
                            ),
                            SizedBox(height: 20),
                            BuildTextWidget(
                              text: 'About',
                              color: AppColors.black,
                              fontSize: 15,
                            ),
                            SizedBox(height: 20),
                            BuildTextWidget(
                              text: 'History',
                              color: AppColors.black,
                              fontSize: 15,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80, left: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BuildTextWidget(
                              text: 'Dealer locator',
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                            SizedBox(height: 10),
                            BuildTextWidget(
                              text: 'Shop',
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                            SizedBox(height: 10),
                            BuildTextWidget(
                              text: 'contact',
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                            SizedBox(height: 10),
                            BuildTextWidget(
                              text: 'Careera',
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                            SizedBox(height: 10),
                            BuildTextWidget(
                              text: 'press',
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                            SizedBox(height: 10),
                            BuildTextWidget(
                              text: 'Factory tours',
                              color: AppColors.black,
                              fontSize: 12,
                            ),
                                Padding(
                                  padding:  EdgeInsets.only(top: 30,right: 120),
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
                                    ],
                                  ),
                                ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Spacer(),

                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 150),
                        //   child: Row(
                        //     children: [
                        //       BuildTextWidget(
                        //         text:
                        //             'Copyright © since 1994 – Koenigsegg Automotive AB',
                        //         color: AppColors.black,
                        //         fontSize: 10,
                        //       ),
                        //       Spacer(),
                        //       BuildTextWidget(
                        //         text: 'sitemap',
                        //         color: AppColors.black,
                        //         fontSize: 10,
                        //       ),
                        //       SizedBox(
                        //         width: 100,
                        //       ),
                        //       BuildTextWidget(
                        //         text: 'Cookie Policy',
                        //         color: AppColors.black,
                        //         fontSize: 10,
                        //       ),
                        //       SizedBox(
                        //         width: 100,
                        //       ),
                        //       BuildTextWidget(
                        //         text: 'legal Links',
                        //         color: AppColors.black,
                        //         fontSize: 10,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        bottom: 80,
                        left: 100,
                        right: 100,
                        child: Divider(
                          color: AppColors.black,
                          thickness: 0.3,
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 100,
                        right: 100,
                        child: Column(
                          children: [
                            // Row(
                            //   children: [
                            //     BuildTextWidget(
                            //       text:
                            //           'Copyright © since 1994 – Koenigsegg Automotive AB',
                            //       color: AppColors.black,
                            //       fontSize: 10,
                            //     ),
                            //   ],
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BuildTextWidget(
                                    text: 'Sitemap',
                                    color: AppColors.black,
                                    fontSize: 10,
                                  ),
                                  BuildTextWidget(
                                    text: 'Cookie Policy',
                                    color: AppColors.black,
                                    fontSize: 10,
                                  ),
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
                      ),
                      Positioned(
                        top: 40,
                        left: 100,
                        right: 100,
                        child: Divider(
                          color: AppColors.black,
                          thickness: 0.3,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
