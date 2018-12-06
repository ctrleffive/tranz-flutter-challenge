import 'dart:async';
import 'package:flutter/material.dart';
import 'package:transaction/ui/home_view.dart';
import 'package:transaction/ui/notifications_view.dart';
import 'package:transaction/ui/profile_view.dart';
import 'package:transaction/ui/transactions_view.dart';

class InnerPage extends StatefulWidget {
  @override
  InnerPageState createState() {
    return new InnerPageState();
  }
}

class InnerPageState extends State<InnerPage> {
  final StreamController<int> navigationIndex = StreamController<int>.broadcast();

  @override
  void dispose() {
    navigationIndex.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        initialData: 0,
        stream: this.navigationIndex.stream,
        builder: (BuildContext context, AsyncSnapshot<int> navigationSnapshot) {
          switch (navigationSnapshot.data) {
            case 0:
              return HomeView();
              break;
            case 1:
              return TransactionsView();
              break;
            case 2:
              return NotificationsView();
              break;
            case 3:
              return ProfileView();
              break;
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: StreamBuilder(
        initialData: 0,
        stream: this.navigationIndex.stream,
        builder: (BuildContext context, AsyncSnapshot<int> navigationSnapshot) {
          return BottomNavigationBar(
            currentIndex: navigationSnapshot.data,
            type: BottomNavigationBarType.fixed,
            onTap: (int pageIndex) => this.navigationIndex.sink.add(pageIndex),
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 40,
                  child: Icon(Icons.home),
                ),
                title: SizedBox()
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 40,
                  child: Icon(Icons.list),
                ),
                title: SizedBox()
              ),
              BottomNavigationBarItem(
                icon: SizedBox(),
                title: SizedBox()
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 40,
                  child: Icon(Icons.notifications),
                ),
                title: SizedBox()
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 40,
                  child: Icon(Icons.person),
                ),
                title: SizedBox()
              ),
            ],
          );
        },
      ),
    );
  }
}