import 'package:flutter/material.dart';
import 'package:fresh_store_ui/constants/assets_const.dart';
import 'package:fresh_store_ui/network/models/timeslot.dart';
import 'package:fresh_store_ui/network/services/common_service.dart';

import '../../global.dart';
import '../../network/models/category.dart';
import '../tabbar/tabbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String route() => '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () async {
      Future.wait(
              [CommonService().getCategories(), CommonService().getTimeslot()])
          .then((value) {
        Global.categories = (value[0]['data'] as List)
            .map((category) => Category.fromMap(category))
            .toList();
        Global.timeSlot = TimeSlot.fromMap(value[1]['data'][0]);

        Navigator.pushNamedAndRemoveUntil(
            context, FRTabbarScreen.route(), (route) => false);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsConst.splash,
          height: MediaQuery.sizeOf(context).height * 0.2,
          width: MediaQuery.sizeOf(context).width * 0.8,
          fit: BoxFit.fill,
        ),
      ),
      /* body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsConst.splash))
        ),
      ),*/
    );
  }
}
