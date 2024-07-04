import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      return DefaultTabController(
        length: 2,
        child: Scaffold(
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
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "MetaMask 지갑 주소: ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 3),
                          child: const SelectableText(
                            "0x9Eb7EED3B851317872238d4b7A29E09bbDc514Ca",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                const SizedBox(
                  width: 500,
                  child: TabBar(
                    indicatorColor: Colors.deepOrange,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        text: "웹 확장 프로그램",
                        height: 50,
                      ),
                      Tab(
                        text: "MetaMask 앱",
                        height: 50,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2500,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
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
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 20),
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
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 20),
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
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 20),
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
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              child: const Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1. 계정 페이지로 이동하십시오. 여기서 '전송' 버튼을 누르십시오. 또한 홈페이지의 '자산' 탭에 표시된 토큰 자체를 클릭하여 토큰을 보낼 수도 있습니다.",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: textColor,
                                      ),
                                    ),
                                    Text(
                                      "2. 이제 보낼 주소를 입력해야 합니다. 클립보드의 주소(예: 다른 앱)에 붙여넣거나 주소록에서 주소를 선택하십시오.",
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
                                'images/mobile1.gif',
                                height: 700,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              child: const Center(
                                child: Text(
                                  "3. 이제 보낼 금액을 입력할 수 있는 화면으로 이동하십시오. 필요한 경우 금액 바로 위에 있는 파란색 상자에서 토큰 이름을 눌러 토큰 유형을 변경할 수도 있습니다.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'images/mobile2.png',
                                scale: 4,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              child: const Center(
                                child: Text(
                                  "4. '다음'을 누르면 확인 화면이 표시됩니다. 여기에 결제할 가스 요금을 포함한 거래의 세부 정보가 표시됩니다.",
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
                                scale: 2.3,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              child: const Center(
                                child: Text(
                                  "또한 '예상 가스 요금' 박스에서 강조 표시된 이더리움 수량을 눌러 거래에 따르는 가스 설정을 편집할 수 있습니다.\n'전송'을 눌러 거래를 확인하고 프로세스를 완료하십시오.",
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
                    ],
                  ),
                ),
              ],
            ),
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
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            backgroundColor: backgroundColor,
            iconTheme: const IconThemeData(color: textColor),
            centerTitle: true,
            title: const Text(
              "도네이션",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
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
                  margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.deepOrange,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "MetaMask 주소",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              margin:
                                  const EdgeInsets.only(left: 15, bottom: 3),
                              child: const Text(
                                "0x9Eb7EED3B851317872238d4b7A29E09bbDc514Ca",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: textColor,
                                ),
                                maxLines: 2,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.copy,
                              size: 18,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              Clipboard.setData(const ClipboardData(
                                  text:
                                      "0x9Eb7EED3B851317872238d4b7A29E09bbDc514Ca"));
                              // 사용자에게 텍스트가 복사되었다는 피드백을 제공할 수 있습니다.

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("주소가 복사되었습니다."),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
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
                const TabBar(
                  indicatorColor: Colors.deepOrange,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      text: "웹 확장 프로그램",
                      height: 50,
                    ),
                    Tab(
                      text: "MetaMask 앱",
                      height: 50,
                    )
                  ],
                ),
                SizedBox(
                  height: 2800,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: const Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1. 지갑 방문 페이지에서 거래하려는 계정을 사용 중인지 확인한 후 화면 중앙의 '보내기' 버튼을 누르십시오.\n",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: textColor,
                                    ),
                                  ),
                                  Text(
                                    "2. 이제 수령인의 공개 주소를 입력해야 합니다. 주소록에 이미 주소를 저장했다면 이 단계에서 주소가 표시됩니다.",
                                    style: TextStyle(
                                      fontSize: 18,
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
                            margin: const EdgeInsets.all(20),
                            child: const Center(
                              child: Text(
                                "3. 보낼 ETH 금액을 입력하고 '다음'을 클릭하십시오.",
                                style: TextStyle(
                                  fontSize: 18,
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
                                  fontSize: 18,
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
                                  fontSize: 18,
                                  color: textColor,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 20),
                            child: const Text(
                              "출처: METAMASK",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: const Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1. 계정 페이지로 이동하십시오. 여기서 '전송' 버튼을 누르십시오. 또한 홈페이지의 '자산' 탭에 표시된 토큰 자체를 클릭하여 토큰을 보낼 수도 있습니다.",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: textColor,
                                      ),
                                    ),
                                    Text(
                                      "2. 이제 보낼 주소를 입력해야 합니다. 클립보드의 주소(예: 다른 앱)에 붙여넣거나 주소록에서 주소를 선택하십시오.",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: textColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'images/mobile1.gif',
                                height: 700,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: const Center(
                                child: Text(
                                  "3. 이제 보낼 금액을 입력할 수 있는 화면으로 이동하십시오. 필요한 경우 금액 바로 위에 있는 파란색 상자에서 토큰 이름을 눌러 토큰 유형을 변경할 수도 있습니다.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'images/mobile2.png',
                                scale: 4,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: const Center(
                                child: Text(
                                  "4. '다음'을 누르면 확인 화면이 표시됩니다. 여기에 결제할 가스 요금을 포함한 거래의 세부 정보가 표시됩니다.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'images/web3.gif',
                                scale: 2.3,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: const Center(
                                child: Text(
                                  "또한 '예상 가스 요금' 박스에서 강조 표시된 이더리움 수량을 눌러 거래에 따르는 가스 설정을 편집할 수 있습니다.\n'전송'을 눌러 거래를 확인하고 프로세스를 완료하십시오.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 20),
                              child: const Text(
                                "출처: METAMASK",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
