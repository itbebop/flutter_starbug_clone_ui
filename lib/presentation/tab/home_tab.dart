import 'package:flutter/material.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/header/header_component.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/wrapper/event_component.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/wrapper/whats_new_component.dart';
import 'package:flutter_starbug_clone_ui/repository/evnet_repository.dart';
import 'package:flutter_starbug_clone_ui/repository/new_repository.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/header/app_bar_component.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/wrapper/first_promotion_component.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/wrapper/second_promotion_component.dart';
import 'package:flutter/services.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late ScrollController _scrollController;
  bool _headerVisible = true;
  bool _floatButtonExtended = true;
  final int _currentIndex = 0;
  double minEx = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: SafeAreaPersistentHeaderDelegate(
                min: minEx,
                expandedHeight: 10,
                child: SizedBox(
                  height: 0,
                ),
              ),
            ),

            // 분리는 되는 건 좋은데 패딩 주기가 애매함..
            HeaderComponent(visible: _headerVisible),
            const AppBarComponent(),
            const FirstPromotionComponent(),
            const SecondPromotionComponent(),
            WhatsNewComponent(repository: NewsRepository()),
            EventComponent(repository: EventRepository()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          extendedIconLabelSpacing: _floatButtonExtended ? 10 : 5,
          extendedPadding: _floatButtonExtended ? null : const EdgeInsets.only(left: 16, top: 16, right: 12, bottom: 16),
          icon: const Icon(Icons.moped_outlined, color: Colors.white),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: Color.fromARGB(255, 0, 171, 91),
          onPressed: () {},
          label: AnimatedSize(
              duration: const Duration(milliseconds: 100),
              child: _floatButtonExtended
                  ? const Text(
                      'Delivers',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )
                  : const SizedBox())),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.payment_outlined), label: 'Pay'),
          NavigationDestination(icon: Icon(Icons.coffee_rounded), label: 'order'),
          NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: 'shop'),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'other'),
        ],
      ),
    );
  }

  void _scrollListener() {
    if (_scrollController.offset > 220) {
      setState(() {
        _floatButtonExtended = false;
      });
    } else if (_scrollController.offset > 130) {
      setState(() {
        _headerVisible = false;
        _floatButtonExtended = true;
        minEx = kToolbarHeight;
      });
    } else {
      setState(() {
        _headerVisible = true;
        minEx = 0;
      });
    }
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

class SafeAreaPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double min;
  final double expandedHeight;

  SafeAreaPersistentHeaderDelegate({required this.child, required this.expandedHeight, required this.min});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Align(child: SafeArea(top: false, bottom: false, child: SizedBox.expand(child: child)));
  }

  @override
  double get maxExtent => minExtent + 0.1;

  @override
  //double get minExtent => kToolbarHeight;
  double get minExtent => min;

  @override
  bool shouldRebuild(SafeAreaPersistentHeaderDelegate old) {
    if (old.child != child) {
      return true;
    }
    return false;
  }
}
