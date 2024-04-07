import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      toolbarHeight: 0,
      shadowColor: Colors.grey,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 14),
                Icon(Icons.mail_outline, color: Colors.black.withOpacity(0.4)),
                SizedBox(width: 8),
                Text("What's New", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300)),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    'assets/images/ticket.png',
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                SizedBox(width: 8),
                Text("Coupon", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300)),
              ],
            ),
            Icon(
              Icons.notifications_none,
              size: 30,
              color: Colors.black.withOpacity(0.4),
            )
          ],
        ),
        titlePadding: EdgeInsetsDirectional.only(start: 20, end: 24, bottom: 8),
      ),
    );
  }
}
