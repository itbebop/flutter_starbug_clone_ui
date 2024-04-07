import 'package:flutter_starbug_clone_ui/model/whats_new.dart';

class NewsRepository {
  List<WhatsNew> getNews() {
    return List<WhatsNew>.generate(10, (index) => WhatsNew(ulrPath: 'assets/images/news.png', title: 'title$index', description: '안전한 서비스 이용을 위하여 Pay 탭 이용, 다중 기기/해외 로그인 시 인증 절차 적용'));
  }
}
