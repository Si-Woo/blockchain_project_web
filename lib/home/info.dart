import 'package:flutter/material.dart';
import 'package:planetchain/component/color.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: <Widget>[
          Image.asset("images/logo.png"),
          Container(
            margin: const EdgeInsets.only(left: 70, right: 70),
            alignment: Alignment.center,
            child: const Text(
              "BlockChain Project는 혁신성과 잠재력으로 우리의 세상을 변화시키고 있는 블록체인 기술을 통해 더 나은 세상을 만들고자 합니다.",
              style: TextStyle(
                fontSize: 24,
                color: textColor,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 70, right: 70),
            alignment: Alignment.center,
            child: const Text(
              "투명성, 신뢰성, 그리고 탈중앙화된 시스템을 기반으로 한 블록체인 기술이 다양한 산업에서 변화를 이끌어 낼 수 있다고 믿습니다.",
              style: TextStyle(
                fontSize: 24,
                color: textColor,
              ),
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}
