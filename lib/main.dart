import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // scaffold : 하나의 뼈대라 보면 됨 ( 머리 가슴 배 처럼 앱바 바디 액션버튼 등으로 나뉨)
        backgroundColor: Color(0xFF181818), // 배경 색 지정
        body: Padding(
          // padding으로 벽으로부터 간격 두기
          padding: EdgeInsets.symmetric(horizontal: 20), // 20 이라는 값정도로 벽과 거리 두기
          child: Column(
            // Column은 세로 정렬
            children: [
              SizedBox(
                // sizebox는 한마디로 그냥 박스를 생성
                height: 80,
              ),
              Row(
                // row는 가로 정렬
                mainAxisAlignment:
                    MainAxisAlignment.end, // Row라는 위젯 ( 안에 들어있는것들 포함 )을 왼쪽으로 정렬
                children: [
                  Column(
                    // 세로정렬
                    crossAxisAlignment: CrossAxisAlignment.end, // 글자를 왼쪽으로 정렬
                    children: [
                      Text(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
