import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      drawer: Drawer(
        child: Text('User'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: 0,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _onAdd),
    );
  }

  void _onItemTapped(int index) {
    if (index == 0) {
      Get.toNamed(Routes.CHAT);
    }
  }

  void _onAdd() {}
}
