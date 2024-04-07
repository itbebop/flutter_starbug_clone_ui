import 'package:flutter/material.dart';

class SecondPromotionComponent extends StatelessWidget {
  const SecondPromotionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
            decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 8, spreadRadius: 2, offset: const Offset(0, 4))]),
            child: Image.asset('assets/images/bottom_image.png')),
      ),
    );
  }
}
