import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsappalpha1/controller/main_wrapper_controller.dart';
import 'package:utsappalpha1/hometab.dart';
import 'package:utsappalpha1/profile.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});

  final MainWrapperController controller = Get.put(MainWrapperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: PageView(
        controller: controller.pageController,
        physics: const BouncingScrollPhysics(),
        children: [HomeTab(), ProfileTab()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBar(
                context,
                icon: Icons.home,
                page: 0,
              ),
              _bottomAppBar(
                context,
                icon: Icons.person,
                page: 1,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBar(BuildContext context, {required icon, required page}) {
    return ZoomTapAnimation(
      onTap: () => controller.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(
            icon,
          ),
        ]),
      ),
    );
  }

  // Widget Test1(BuildContext context, {required icon, required page}) {
  //   return ZoomTapAnimation(
  //     onTap: () {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => ProfileTab()));
  //     },
  //     child: Container(
  //       color: Colors.transparent,
  //       child: Column(mainAxisSize: MainAxisSize.min, children: [
  //         Icon(
  //           icon,
  //         ),
  //       ]),
  //     ),
  //   );
  // }
}
