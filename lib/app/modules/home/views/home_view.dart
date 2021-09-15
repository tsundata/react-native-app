import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import 'package:flow/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.share))
        ],
      ),
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              otherAccountsPictures: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
                GFAvatar(
                  child: Text("ab"),
                )
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('profile'),
              onTap: () => Get.toNamed(Routes.PROFILE),
            ),
            ListTile(
              title: Text('setting'),
              onTap: () => Get.toNamed(Routes.SETTING),
            ),
            ListTile(
              title: Text('logout'),
              onTap: () => Get.toNamed(Routes.LOGIN),
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _onAdd),
      body: ListView(
        children: [
          GFListTile(
            avatar: GFAvatar(
              shape: GFAvatarShape.standard,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg'),
            ),
            titleText: 'Assistant',
            subTitleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
            onTap: _onChat,
          ),
          GFListTile(
            avatar: GFAvatar(
              shape: GFAvatarShape.standard,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg'),
            ),
            titleText: 'Group a',
            subTitleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
            icon: Icon(Icons.volume_mute_outlined),
            onTap: _onChat,
          ),
        ],
      ),
    );
  }

  void _onAdd() {
    Get.toNamed(Routes.GROUP);
  }

  void _onChat() {
    Get.toNamed(Routes.CHAT);
  }
}
