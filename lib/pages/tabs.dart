import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/category.dart';
import 'tabs/settings.dart';


class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const CategoryPage(),
    const SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: IconButton( // 左侧的按钮图标
              icon: const Icon(Icons.menu), onPressed: () {
                // print("左侧的按钮图标");
              },
            ),
            backgroundColor: Colors.red,
            title: const Text("hello, flutter"),
            actions: [ // 右侧的按钮图标
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // print("搜索图标");
                },
              ),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {
                  // print("搜索图标");
                },
              )
            ],
          ),
          body: _pages[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home), 
                label: "首页"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category), 
                label: "分类"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings), 
                label: "设置"
              ),
            ]
          ),
      );
  }
}