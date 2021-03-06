import 'package:flutter/material.dart';
import 'package:gankcamp_flutter/constant/app_colors.dart';
import 'package:gankcamp_flutter/ui/pages/about_page.dart';
import 'package:gankcamp_flutter/ui/pages/push_gank_page.dart';
import 'package:gankcamp_flutter/ui/pages/collection_page.dart';

class MainTabMe extends StatelessWidget {
  Widget _genItemWidget(
      IconData iconData, String itemText, VoidCallback callback) {
    return FlatButton(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(
          top: 12,
          bottom: 12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              iconData,
              size: 22,
              color: AppColors.MAIN_COLOR,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                itemText,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      onPressed: callback,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffebebeb),
      child: Column(
        children: <Widget>[
          Image.asset(
            'images/banner.jpeg',
            fit: BoxFit.cover,
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: _genItemWidget(Icons.collections, '我的收藏', () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CollectionPage(),
                ),
              );
            }),
          ),
          _genItemWidget(Icons.arrow_upward, '提交干货', () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PushGankPage(),
              ),
            );
          }),
          _genItemWidget(Icons.person, '关于', () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AboutPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
