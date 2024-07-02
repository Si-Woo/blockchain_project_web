import 'package:flutter/material.dart';
import 'package:planetchain/component/color.dart';
import 'package:planetchain/home/home_en.dart';
import 'package:planetchain/router/route_path.dart';
import 'package:planetchain/router/router_delegate.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 765) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Image.asset(
                        "images/logo.png",
                        width: 150,
                      ),
                      const SizedBox(width: 30),
                      // Row(
                      //   children: [
                      //     InkWell(
                      //       onTap: () {
                      //         Navigator.pushNamed(context, '/info');
                      //       },
                      //       child: const Text(
                      //         "소개",
                      //         style: TextStyle(
                      //           fontSize: 22,
                      //           color: textColor,
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(width: 20),
                      //     Text(
                      //       "제품",
                      //       style: TextStyle(
                      //         fontSize: 22,
                      //         color: textColor,
                      //       ),
                      //     ),
                      //     const SizedBox(width: 20),
                      //     Text(
                      //       "Contact",
                      //       style: TextStyle(
                      //         fontSize: 22,
                      //         color: textColor,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                  Row(
                    children: [
                      // Text(
                      //   "한국어",
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, color: textColor),
                      // ),
                      // Text(
                      //   "  |  ",
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, color: textColor),
                      // ),
                      InkWell(
                        onTap: () {
                          final delegate = Router.of(context).routerDelegate
                              as MyRouterDelegate;
                          delegate.changePage(RoutePath.english());
                        },
                        child: const Text(
                          "ENG",
                          style: TextStyle(color: textColor, fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.deepOrange,
                margin: const EdgeInsets.only(top: 20),
                width: size.width,
                height: 2,
              ),
              // Container(
              //   color: Colors.white,
              //   margin: const EdgeInsets.only(top: 20),
              //   width: size.width,
              //   height: 150,
              //   child: Text(
              //     "앱 다운로드 링크 넣기",
              //   ),
              // ),
              Container(
                  margin: const EdgeInsets.only(left: 70, right: 70),
                  child: Image.asset("images/logo.png")),
              Container(
                margin: const EdgeInsets.only(left: 80, right: 80),
                child: const Text(
                  "BlockChain Project는 혁신성과 잠재력으로 우리의 세상을 변화시키고 있는 블록체인 기술을 통해 더 나은 세상을 만들고자 합니다.\n"
                  "투명성, 신뢰성, 그리고 탈중앙화된 시스템을 기반으로 한 블록체인 기술이 다양한 산업에서 변화를 이끌어 낼 수 있다고 믿습니다.\n\n"
                  "BlockChain Project의 첫 번째 프로젝트인 ChainTalk은 블록체인 기술을 활용하여 기존 중앙 DB에 저장되던 모든 데이터를 사용자가 직접 소유하고 관리할 수 있도록 합니다. 이를 통해 데이터의 주권을 사용자에게 돌려주고, 더 높은 수준의 프라이버시와 보안을 제공합니다.",
                  style: TextStyle(
                    fontSize: 24,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      );
    } else {
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////  ///////  //////////////        ///////          ///////                    ////  /////////////////////                 //////////////
////////////  /  ////  /  /////////  /////////  /////  ////////  /////////////  //////////////  /////////////////////  /////////////////////////////
///////////  //  ///  //  ///////  ////////////  ////  //////////  ///////////  //////////////  /////////////////////  /////////////////////////////
//////////  ///  //  ///  ///////  ////////////  ////  //////////  ///////////  //////////////  /////////////////////  /////////////////////////////
/////////  ////  /  ////  ///////  ////////////  ////  ////////  /////////////  //////////////  /////////////////////  /////////////////////////////
////////  /////  ///////  ///////  ////////////  ////          ///////////////  //////////////  /////////////////////                 //////////////
///////  ///////////////  ///////  ////////////  ////  ////////  /////////////  //////////////  /////////////////////  /////////////////////////////
//////  ////////////////  ///////  ////////////  ////  /////////  ////////////  //////////////  /////////////////////  /////////////////////////////
/////  /////////////////  ////////  /////////  //////  //////////  ///////////  //////////////  /////////////////////  /////////////////////////////
////  //////////////////  //////////        /////////             /////                   ////                  /////                  /////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          centerTitle: true,
          title: Image.asset(
            'images/logo.png',
            width: 130,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4), // 경계선의 높이 지정
            child: Container(
              color: Colors.deepOrange, // 경계선 색상 설정
              height: 2.0,
            ),
          ),
          actions: [
            Row(
              children: [
                // Text(
                //   "한국어",
                //   style:
                //       TextStyle(fontWeight: FontWeight.bold, color: textColor),
                // ),
                // Text(
                //   "  |  ",
                //   style:
                //       TextStyle(fontWeight: FontWeight.bold, color: textColor),
                // ),
                InkWell(
                  onTap: () {
                    final delegate =
                        Router.of(context).routerDelegate as MyRouterDelegate;
                    delegate.changePage(RoutePath.english());
                  },
                  child: const Text(
                    "Eng",
                    style: TextStyle(color: textColor),
                  ),
                ),
                const SizedBox(width: 15),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   color: Colors.white,
              //   margin: const EdgeInsets.only(top: 20),
              //   width: size.width,
              //   height: 100,
              //   child: Text(
              //     "앱 다운로드 링크 넣기",
              //   ),
              // ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Image.asset(
                    "images/logo.png",
                    width: 500,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: const Text(
                  "BlockChain Project는 혁신성과 잠재력으로 우리의 세상을 변화시키고 있는 블록체인 기술을 통해 더 나은 세상을 만들고자 합니다.\n"
                  "투명성, 신뢰성, 그리고 탈중앙화된 시스템을 기반으로 한 블록체인 기술이 다양한 산업에서 변화를 이끌어 낼 수 있다고 믿습니다.\n\n"
                  "BlockChain Project의 첫 번째 프로젝트인 ChainTalk은 블록체인 기술을 활용하여 기존 중앙 DB에 저장되던 모든 데이터를 사용자가 직접 소유하고 관리할 수 있도록 합니다. 이를 통해 데이터의 주권을 사용자에게 돌려주고, 더 높은 수준의 프라이버시와 보안을 제공합니다.",
                  style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      );
    }
  }
}
