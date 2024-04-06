import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Color _darkColor = const Color.fromARGB(120, 50, 50, 50);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  SizedBox(
                    width: 420,
                    child: Image.asset(
                      'assets/images/middle_image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    right: 50,
                    child: Text(
                      '내용 보기',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: _darkColor,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 80,
                    right: 20,
                    child: Icon(Icons.arrow_forward_rounded),
                  ),
                  const Positioned(
                    top: 50,
                    left: 20,
                    child: TextWidget(
                      text: '생존코딩과 함께\n ______ 를 마무리해요!',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Positioned(
                      top: 83,
                      left: 10,
                      child: SizedBox(
                        width: 90,
                        height: 50,
                        child: Image.asset('assets/images/Fotoram.png'),
                      ))
                ],
              ),
            ),
            Column(
              children: [
                // 별점 시작
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const Column(
                            children: [
                              TextWidget(
                                text: '1',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ],
                          ),
                          Icon(
                            Icons.star,
                            color: _darkColor,
                          ),
                          const Text('until Green Level')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 280,
                            height: 30,
                            child: LinearPercentIndicator(
                              width: 280.0,
                              animation: true,
                              animationDuration: 100,
                              lineHeight: 8.0,
                              leading: const Text(""),
                              trailing: const Text(""),
                              percent: 0.8,
                              center: const Text(""),
                              progressColor: const Color.fromARGB(200, 60, 60, 60),
                              barRadius: const Radius.circular(5),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const TextWidget(
                            text: '4',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          const Text('/5'),
                          const Icon(Icons.star)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 10),
                          const Icon(Icons.mail_outline),
                          const TextWidget(
                            text: "What's New",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                              'assets/images/ticket.png',
                            ),
                          ),
                          const TextWidget(
                            text: 'Coupon',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.notifications_none,
                            size: 30,
                            color: _darkColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // 카페사진 시작
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      SizedBox(height: 250, child: Image.asset('assets/images/snowing_cafe.png', fit: BoxFit.cover)),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 120,
                            child: Image.asset(
                              'assets/images/bottom_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 20,
                            child: SizedBox(
                              width: 170,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 0, 171, 91)),
                                onPressed: () {},
                                child: Image.asset('assets/images/button.png'),
                                // child: const TextWidget(
                                //   text: 'Delivers',
                                //   fontSize: 20,
                                //   fontWeight: FontWeight.bold,
                                //   color: Colors.white,
                                //   ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.play_arrow_outlined), label: 'Shorts'),
          NavigationDestination(icon: Icon(Icons.coffee_rounded), label: 'order'),
          NavigationDestination(icon: Icon(Icons.play_circle_outline_rounded), label: '구독'),
          NavigationDestination(icon: Icon(Icons.shop_two_rounded), label: '보관함'),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight fontWeight;
  final Color? color;
  const TextWidget({
    super.key,
    required this.text,
    required this.fontWeight,
    this.fontSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight,
      ),
    );
  }
}
