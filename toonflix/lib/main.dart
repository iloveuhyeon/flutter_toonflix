import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/card.dart';

void main() {
  runApp(const App());
  print('hello world');
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // scaffold : 하나의 뼈대라 보면 됨 ( 머리 가슴 배 처럼 앱바 바디 액션버튼 등으로 나뉨)
        backgroundColor: const Color(0xFF181818), // 배경 색 지정
        body: SingleChildScrollView(
          child: Padding(
            // padding으로 벽으로부터 간격 두기
            padding: const EdgeInsets.symmetric(
                horizontal: 15), // 20 이라는 값정도로 벽과 거리 두기
            child: Column(
              // Column은 세로 정렬
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  // sizebox는 한마디로 그냥 박스를 생성
                  height: 80,
                ),
                Row(
                  // row는 가로 정렬
                  mainAxisAlignment: MainAxisAlignment
                      .end, // Row라는 위젯 ( 안에 들어있는것들 포함 )을 왼쪽으로 정렬
                  children: [
                    Column(
                      // 세로정렬
                      crossAxisAlignment: CrossAxisAlignment.end, // 글자를 왼쪽으로 정렬
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      backgroundColor: const Color(0xFFF2B33A),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      backgroundColor: const Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 248',
                  icon: Icons.euro,
                  num: 0,
                ),
                CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 234',
                  icon: Icons.currency_bitcoin,
                  num: 1,
                ),
                CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '12 345',
                  icon: Icons.monetization_on_outlined,
                  num: 2,
                ),
                CurrencyCard(
                  name: 'Apple',
                  code: 'ATC',
                  amount: '-123 045',
                  icon: Icons.apple,
                  num: 3,
                ),
                CurrencyCard(
                  name: 'Samsung',
                  code: 'STC',
                  amount: '-999 999',
                  icon: Icons.smart_display_rounded,
                  num: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
