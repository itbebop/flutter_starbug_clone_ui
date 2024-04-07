import 'package:flutter/material.dart';
import 'package:flutter_starbug_clone_ui/presentation/tab/home_tab.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HeaderComponent extends StatefulWidget {
  final bool visible;
  const HeaderComponent({super.key, required this.visible});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AnimatedOpacity(
        opacity: widget.visible ? 1 : 0,
        duration: const Duration(seconds: 1),
        child: Column(
          children: [
            Stack(
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
                  bottom: 100,
                  right: 50,
                  child: Text(
                    '내용 보기',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(.4),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  right: 20,
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black.withOpacity(.4),
                  ),
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
                      child: Image.asset(
                        'assets/images/Fotoram.png',
                      ),
                    ))
              ],
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: // 별점 시작
                        Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 13),
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
                              color: Color.fromARGB(120, 50, 50, 50),
                            ),
                            const Text('until Green Level')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 260,
                              height: 30,
                              child: LinearPercentIndicator(
                                width: 260.0,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
