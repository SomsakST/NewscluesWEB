import 'package:flutter/material.dart';
import 'package:web_admin/componants/app_colors.dart';
import 'package:web_admin/widgets/header/header_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.nWhite,
      body: SafeArea(
        child: Row(
          children: [Expanded(child: mainData())],
        ),
      ),
    );
  }

  Container mainData() {
    return Container(
      margin: const EdgeInsets.only(
        left: 35,
        right: 35,
        top: 35,
      ),
      child: Column(
        children: [
          const HeaderWidgets(),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/dec4.png',
                                scale: 2.5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'ส่วนวิเคราะห์ข้อมูลอาชญากรรมและการข่าว',
                                  style: TextStyle(
                                      color: AppColor.nBlack,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'กองเทคโนโลยีและศูนย์ข้อมูลการตรวจสอบ',
                                  style: TextStyle(
                                    color: AppColor.nBlack,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
