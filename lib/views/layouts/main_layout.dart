import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainLayout extends StatelessWidget {
  late List<String> tabs = [];
  late Widget content;

  MainLayout({super.key, required this.tabs, required this.content});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorWeight: 3,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.white,
            tabs: tabs
                .map((title) => Tab(
                      child: Text(title),
                    ))
                .toList(),
          ),
        ),
        body: content,
      ),
    );
  }
}
