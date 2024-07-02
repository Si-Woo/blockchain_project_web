import 'package:flutter/material.dart';
import 'package:planetchain/component/color.dart';
import 'package:planetchain/drawer/drawer.dart';
import 'package:planetchain/router/route_path.dart';
import 'package:planetchain/router/router_delegate.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 765) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          final delegate = Router.of(context).routerDelegate
                              as MyRouterDelegate;
                          delegate.changePage(RoutePath.home());
                        },
                        child: Image.asset(
                          "images/logo.png",
                          width: 150,
                        ),
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          // InkWell(
                          //   onTap: () {
                          //     // Navigator.pushNamed(context, '/info');
                          //   },
                          //   child: const Text(
                          //     "소개",
                          //     style: TextStyle(
                          //       fontSize: 22,
                          //       color: textColor,
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(width: 20),
                          const Text(
                            "도네이션",
                            style: TextStyle(
                              fontSize: 22,
                              color: textColor,
                              decoration: TextDecoration.underline,
                              decorationColor: textColor,
                            ),
                          ),
                          const SizedBox(width: 20),
                          // const Text(
                          //   "Contact",
                          //   style: TextStyle(
                          //     fontSize: 22,
                          //     color: textColor,
                          //   ),
                          // ),
                        ],
                      ),
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
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Center(
                  child: Text(
                    "도네이션 방법",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. 지갑 방문 페이지에서 거래하려는 계정을 사용 중인지 확인한 후 화면 중앙의 '보내기' 버튼을 누르십시오.",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                      Text(
                        "2. 이제 수령인의 공개 주소를 입력해야 합니다. 주소록에 이미 주소를 저장했다면 이 단계에서 주소가 표시됩니다.",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/web1.gif',
                  scale: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: const Center(
                  child: Text(
                    "3. 보낼 ETH 금액을 입력하고 '다음'을 클릭하십시오.",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/web2.gif',
                  scale: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4. 이제 거래의 예상 가스 요금이 표시되며, 이 요금은 조정할 수 있습니다.",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                      Text(
                        "    '확인'을 클릭하여 거래를 진행하기 전에 수신자 주소를 다시 확인하는 것이 좋습니다.",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/web3.gif',
                  scale: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: const Center(
                  child: Text(
                    "5. 그러면 '작업'탭에서 최근 거래 목록을 볼 수 있는 메인 페이지로 리디렉션됩니다.",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(right: 50),
                child: const Text(
                  "출처: METAMASK",
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(height: 50),
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
          iconTheme: const IconThemeData(color: textColor),
          centerTitle: true,
          title: const Text(
            "도네이션",
            style: TextStyle(fontSize: 22, color: textColor),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4), // 경계선의 높이 지정
            child: Container(
              color: Colors.deepOrange, // 경계선 색상 설정
              height: 2.0,
            ),
          ),
        ),
        drawer: const DrawerMenu(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Center(
                  child: Text(
                    "도네이션 방법",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. 지갑 방문 페이지에서 거래하려는 계정을 사용 중인지 확인한 후 화면 중앙의 '보내기' 버튼을 누르십시오.\n",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                      Text(
                        "2. 이제 수령인의 공개 주소를 입력해야 합니다. 주소록에 이미 주소를 저장했다면 이 단계에서 주소가 표시됩니다.",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/web1.gif',
                  scale: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: const Center(
                  child: Text(
                    "3. 보낼 ETH 금액을 입력하고 '다음'을 클릭하십시오.",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/web2.gif',
                  scale: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(
                    "4. 이제 거래의 예상 가스 요금이 표시되며, 이 요금은 조정할 수 있습니다. '확인'을 클릭하여 거래를 진행하기 전에 수신자 주소를 다시 확인하는 것이 좋습니다.",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'images/web3.gif',
                  scale: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(
                    "5. 그러면 '작업' 탭에서 최근 거래 목록을 볼 수 있는 메인 페이지로 리디렉션됩니다.",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(right: 50),
                child: const Text(
                  "출처: METAMASK",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      );
    }
  }
}
