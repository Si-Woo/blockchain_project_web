import 'package:flutter/material.dart';
import 'package:planetchain/component/color.dart';
import 'package:planetchain/router/route_path.dart';
import 'package:planetchain/router/router_delegate.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: backgroundColor,
              border: Border(
                bottom: BorderSide(
                  color: Colors.deepOrange, // 밑면 경계선의 색상 지정
                  width: 2.0, // 밑면 경계선의 두께 지정
                ),
              ),
            ),
            child: Image.asset(
              'images/logo.png',
              height: 10,
            ),
          ),
          ListTile(
            title: const Text('홈'),
            onTap: () {
              final delegate =
                  Router.of(context).routerDelegate as MyRouterDelegate;
              delegate.changePage(RoutePath.home());
            },
          ),
          // ListTile(
          //   title: const Text('구성원'),
          //   onTap: () {
          //     // final delegate =
          //     //     Router.of(context).routerDelegate as MyRouterDelegate;
          //     // delegate.changePage(RoutePath.home());
          //   },
          // ),
          ListTile(
            title: const Text('도네이션'),
            onTap: () {
              final delegate =
                  Router.of(context).routerDelegate as MyRouterDelegate;
              delegate.changePage(RoutePath.donation());
            },
          ),
        ],
      ),
    );
  }
}
