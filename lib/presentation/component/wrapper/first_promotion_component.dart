import 'package:flutter/material.dart';

class FirstPromotionComponent extends StatelessWidget {
  const FirstPromotionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Container(color: Colors.white, padding: const EdgeInsets.only(top: 28), child: Image.asset('assets/images/snowing_cafe.png')));
  }
}
