import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homzes/constants/colors_constants.dart';
import 'package:homzes/constants/image_constants.dart';
import 'package:homzes/theme/widgets/service_card.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final height = Get.height;
  final double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.bg1),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withValues(alpha: 0.7),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: SizedBox(
              height: height,
              child: Stack(
                children: [
                  // title area
                  Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // logo
                          Image.asset(ImageConstants.logoPng, height: 30),
                          // icon button
                          InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: const ShapeDecoration(
                                shape: CircleBorder(
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Icon(Icons.menu, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // content area
                  Positioned(
                    top: height * 0.5,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "Find the best \nplace for you",
                          style: Theme.of(
                            context,
                          ).textTheme.displayLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 60),

                        // Category tabs
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics(),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 15),
                              // tab
                              ServicesCards(
                                text: "Rent",
                                icon: ImageConstants.rentHome24,
                                color: AppColors.backgroundColor1,
                              ),
                              // tab
                              ServicesCards(
                                text: "Buy",
                                icon: ImageConstants.buyHome24,
                                color: AppColors.backgroundColor2,
                              ),
                              ServicesCards(
                                text: "Sell",
                                icon: ImageConstants.sellHome24,
                                color: AppColors.backgroundColor3,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        // button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed("/home-screen");
                              },
                              child: Text(
                                "Create an account",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
