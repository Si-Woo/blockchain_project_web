import 'package:flutter/material.dart';
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
                margin: const EdgeInsets.only(top: 20, bottom: 20),
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
              Container(
                margin: const EdgeInsets.all(20),
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
                margin: const EdgeInsets.all(20),
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
                margin: const EdgeInsets.all(20),
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
                margin: const EdgeInsets.all(20),
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
              const SizedBox(height: 50),
            ],
          ),
        ),
      );
    }
  }
}
