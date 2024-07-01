import 'package:flutter/material.dart';
import 'package:planetchain/component/color.dart';
import 'package:planetchain/home/home.dart';

class HomeEn extends StatelessWidget {
  const HomeEn({super.key});

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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        child: const Text(
                          "한국어",
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
                  "Blockchain Project aims to create a better world through blockchain technology, which is transforming our world with its innovativeness and potential.\n"
                  " We believe that blockchain technology, based on transparency, reliability, and a decentralized system, can lead to changes across various industries.\n\n"
                  "Blockchain Project's first initiative, ChainTalk, utilizes blockchain technology to allow users to own and manage all data that was traditionally stored in central databases. This approach returns data sovereignty to the users and provides a higher level of privacy and security.\n",
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
          actions: const [
            Row(
              children: [
                Text(
                  "한국어",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: textColor),
                ),
                Text(
                  "  |  ",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: textColor),
                ),
                Text(
                  "Eng",
                  style: TextStyle(color: textColor),
                ),
                SizedBox(width: 15),
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
                  margin: const EdgeInsets.only(left: 70, right: 70),
                  child: Image.asset(
                    "images/logo.png",
                    width: 500,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 80, right: 80),
                child: const Text(
                  "Blockchain Project aims to create a better world through blockchain technology, which is transforming our world with its innovativeness and potential."
                  " We believe that blockchain technology, based on transparency, reliability, and a decentralized system, can lead to changes across various industries.\n\n"
                  "Blockchain Project's first initiative, ChainTalk, utilizes blockchain technology to allow users to own and manage all data that was traditionally stored in central databases. This approach returns data sovereignty to the users and provides a higher level of privacy and security.\n",
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
