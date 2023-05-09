//메인 리스트 게시판

// 최종 수정: 2023.4.24
// 작업자: 정해수

//추가 작업 예정 사항:
// **필터에서 받은 카테고리만 띄우기
// 광고 배너 추가
// 최대 리스트 수
// 최대 리스트 수보다 적은 케이스
// 참여자 사진 출력 stack 오류
// 리스트 필터 화면 이동 아이콘
// 지도 화면 이동 아이콘
// 현재 위치 설정
// 하단 고정 바

import 'package:flutter/material.dart';
import 'mainListView.dart';

class MainListBoard extends StatefulWidget {
  const MainListBoard({Key? key}) : super(key: key);

  @override
  State<MainListBoard> createState() => _MainListBoardState();
}

class _MainListBoardState extends State<MainListBoard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오늘의 건수',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: ListView( // 메인 리스트 스크롤 뷰
        children: <Widget>[
          const SizedBox(height: 24.0,), //
          const Text('   📣 주변의 새 이벤트',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 19.0,),
          mainListView(text: 'test 1'), //건수 리스트
          const SizedBox(height: 18.0,),
          mainListView(text: 'test 2'),
          const SizedBox(height: 18.0,),
          mainListView(text: 'test 3'),
          const SizedBox(height: 18.0,),
        ],
      ),
    );
  }
}