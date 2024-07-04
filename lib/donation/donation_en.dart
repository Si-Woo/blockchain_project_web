import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planetchain/component/color.dart';
import 'package:planetchain/drawer/drawer_en.dart';
import 'package:planetchain/router/route_path.dart';
import 'package:planetchain/router/router_delegate.dart';

class DonationEn extends StatelessWidget {
  const DonationEn({super.key});

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
                            delegate.changePage(RoutePath.homeEn());
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
                            //     "Introduce",
                            //     style: TextStyle(
                            //       fontSize: 22,
                            //       color: textColor,
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(width: 20),
                            const Text(
                              "Donation",
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
                          "MetaMask Address: ",
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
                      "How to Donate",
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
                        text: "Extension",
                        height: 50,
                      ),
                      Tab(
                        text: "Mobile",
                        height: 50,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2400,
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
                                      "1. From the landing page of your wallet, make sure you're in the account from which you want to transact, and hit the 'send' button in the middle of the screen.\n",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: textColor,
                                      ),
                                    ),
                                    Text(
                                      "2. Now you need to input the public address of the recipient. If you already have addresses saved in your address book, they will appear now.",
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
                                  "3. Enter the amount of tokens you want to send and click next.",
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
                              margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              child: const Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "4. Now you're presented with the estimated gas fees of your transaction, which you can also adjust. Double-checking the recipient address before clicking 'Confirm' to proceed with the transaction is generally a good idea.",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: textColor,
                                      ),
                                    ),
                                    // Text(
                                    //   "    '확인'을 클릭하여 거래를 진행하기 전에 수신자 주소를 다시 확인하는 것이 좋습니다.",
                                    //   style: TextStyle(
                                    //     fontSize: 20,
                                    //     color: textColor,
                                    //   ),
                                    // ),
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
                              margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              child: const Center(
                                child: Text(
                                  "5. You will then be redirected to the homepage, where you can see a list of your recent transactions on the 'Activity' tab.",
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
                                "Source: METAMASK",
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
                                child: Text(
                                  "1. From anywhere in MetaMask, click the wallet actions button in the middle of the tab bar. From here, tap the'send' button.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: textColor,
                                  ),
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
                                  "2. Now you'll need to input the address you want to send to. Either paste in the address from your clipboard (i.e. another app) or select one from your address book.",
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
                                  "3. Now you'll be taken to a screen where you can input the amount you want to send. You can also change the token type if needed by tapping its name in the blue box directly above the amount.",
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
                                  "4. When you tap 'Next', you will see the confirmation screen. Here you will see the details of your transaction, including the gas fee you're going to pay.",
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
              "Donation",
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
          drawer: const DrawerMenuEn(),
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
                        "MetaMask Address",
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
                                  content: Text("The address has been copied."),
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
                      "How to Donate",
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
                      text: "Extension",
                      height: 50,
                    ),
                    Tab(
                      text: "Mobile",
                      height: 50,
                    )
                  ],
                ),
                SizedBox(
                  height: 2800,
                  child: TabBarView(
                    children: [
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
                                      "1. From the landing page of your wallet, make sure you're in the account from which you want to transact, and hit the 'send' button in the middle of the screen.\n",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: textColor,
                                      ),
                                    ),
                                    Text(
                                      "2. Now you need to input the public address of the recipient. If you already have addresses saved in your address book, they will appear now.",
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
                                  "3. Enter the amount of tokens you want to send and click next.",
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "4. Now you're presented with the estimated gas fees of your transaction, which you can also adjust. Double-checking the recipient address before clicking 'Confirm' to proceed with the transaction is generally a good idea.",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: textColor,
                                      ),
                                    ),
                                    // Text(
                                    //   "    '확인'을 클릭하여 거래를 진행하기 전에 수신자 주소를 다시 확인하는 것이 좋습니다.",
                                    //   style: TextStyle(
                                    //     fontSize: 20,
                                    //     color: textColor,
                                    //   ),
                                    // ),
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
                              margin: const EdgeInsets.all(20),
                              child: const Center(
                                child: Text(
                                  "5. You will then be redirected to the homepage, where you can see a list of your recent transactions on the 'Activity' tab.",
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
                                "Source: METAMASK",
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
                              margin: const EdgeInsets.all(20),
                              child: const Center(
                                child: Text(
                                  "1. From anywhere in MetaMask, click the wallet actions button in the middle of the tab bar. From here, tap the'send' button.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: textColor,
                                  ),
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
                                  "2. Now you'll need to input the address you want to send to. Either paste in the address from your clipboard (i.e. another app) or select one from your address book.",
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
                                  "3. Now you'll be taken to a screen where you can input the amount you want to send. You can also change the token type if needed by tapping its name in the blue box directly above the amount.",
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
                                  "4. When you tap 'Next', you will see the confirmation screen. Here you will see the details of your transaction, including the gas fee you're going to pay.",
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
