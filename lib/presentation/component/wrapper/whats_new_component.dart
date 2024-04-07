import 'package:flutter/material.dart';
import 'package:flutter_starbug_clone_ui/model/whats_new.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/wrapper/whats_new_card.dart';
import 'package:flutter_starbug_clone_ui/repository/new_repository.dart';

class WhatsNewComponent extends StatefulWidget {
  final NewsRepository repository;
  const WhatsNewComponent({super.key, required this.repository});

  @override
  State<WhatsNewComponent> createState() => _WhatsNewComponentState();
}

class _WhatsNewComponentState extends State<WhatsNewComponent> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "What's New",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                'See all',
                style: TextStyle(fontSize: 17, color: Colors.black),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _getNewsList().length,
                itemBuilder: (BuildContext context, int index) {
                  return WhatsNewCard(news: _getNewsList()[index]);
                }),
          )
        ],
      ),
    );
  }

  List<WhatsNew> _getNewsList() {
    return widget.repository.getNews();
  }
}
