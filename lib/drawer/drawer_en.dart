import 'package:flutter/material.dart';
import 'package:planetchain/component/color.dart';
import 'package:planetchain/router/route_path.dart';
import 'package:planetchain/router/router_delegate.dart';

class DrawerMenuEn extends StatefulWidget {
  const DrawerMenuEn({super.key});

  @override
  State<DrawerMenuEn> createState() => _DrawerMenuEnState();
}

class _DrawerMenuEnState extends State<DrawerMenuEn> {
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
            title: const Text('Home'),
            onTap: () {
              final delegate =
                  Router.of(context).routerDelegate as MyRouterDelegate;
              delegate.changePage(RoutePath.homeEn());
            },
          ),
          // ListTile(
          //   title: const Text('Member'),
          //   onTap: () {
          //     final delegate =
          //         Router.of(context).routerDelegate as MyRouterDelegate;
          //     delegate.changePage(RoutePath.homeEn());
          //   },
          // ),
          ListTile(
            title: const Text('Donation'),
            onTap: () {
              final delegate =
                  Router.of(context).routerDelegate as MyRouterDelegate;
              delegate.changePage(RoutePath.donationEn());
            },
          ),
        ],
      ),
    );
  }
}
