// 메인 리스트에서 보여지는 약식 정보 뷰어

// 최종 수정: 2023.4.24
// 작업자: 정해수

//추가 작업 예정 사항:
// 리스트 필요 변수 연결
// 리스트 디테일 연결
// 프로필 연결
// 댓글창 연결
// 사진 출력 여부

import 'package:flutter/material.dart';
import 'ListDetail.dart';

class mainListView extends StatelessWidget { //건수 리스트 게시판 뷰
  final String text;
  //필요한 변수
  //카테고리 종류, 모집 마감 시간
  //건수 제목
  //방장 아이콘, 방장 이름
  //장소, 날짜, 시간
  //사진 (선택)
  //참가자 사진
  //댓글, 인원수

  mainListView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 0), //컨테이너 외부 공백 조절
        height: 380,
        decoration: BoxDecoration( //컨테이너 테두리 조절
          color: Color(0xffF7F8FA),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xffF7F8FA), width: 1),
        ),
        child: Column( //컨테이너 내부 컬럼 정렬
            children: [
              Row(
                children: [
                  const SizedBox(width: 18,),
                  Image.asset('assets/images/List_Category/List_cate_rest.png', //카테고리 이미지
                      width: 70, height: 55),
                  const SizedBox(width: 140,),
                  const Text('모집 마감 시간: 16:00', //모집 마감 시간 텍스트
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ), //카테고리, 마감시간
              const SizedBox(height: 12,),
              const Row(
                children: [
                  SizedBox(width: 20,),
                  Text('용산동에서 치맥하실 분~~!!', //건수 제목
                    style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ), //제목
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 18,),
                  InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text('미구현 기능입니다 (사용자 프로필 페이지)')));
                    }, //프로필 페이지로 이동
                    child: Row(
                      children: [
                        Image.asset('assets/images/User_Picture/User_pic_null.png',
                            width: 26, height: 26),  //사용자 사진
                        const SizedBox(width: 10,),
                        const Text('술주정뱅이', //사용자 이름
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  )
                ],
              ), //사용자 사진, 이름 -> 사용자 프로필 이동
              const SizedBox(height: 10,),
              const Row(
                children: [
                  SizedBox(width: 18,),
                  Text('용산동 ',
                      style: TextStyle(fontSize: 13,
                        color: Color(0xff949596),)
                  ), //동네 이름
                  Text('12-31',
                      style: TextStyle(fontSize: 13,
                        color: Color(0xff949596),)
                  ), //날짜
                  Text(' | ',
                      style: TextStyle(fontSize: 13,
                        color: Color(0xff949596),)
                  ),
                  Text('18:00',
                      style: TextStyle(fontSize: 13,
                        color: Color(0xff949596),)
                  ), //시간
                ],
              ), //동네, 날짜, 시간
              const SizedBox(height: 18,),
              Row(
                children: [
                  const SizedBox(width: 18,),
                  Image.asset('assets/images/List_Image/List_image_sample1.png',
                      width: 100, height: 100),  //건수 등록 이미지
                  const SizedBox(width: 2,),
                  Image.asset('assets/images/List_Image/List_image_sample2.png',
                      width: 100, height: 100),
                ],
              ), //등록 이미지
              const SizedBox(height: 18,),
              Row(
                children: [
                  const SizedBox(width: 18,),
                  Stack(
                    children: [
                      Positioned(
                        //left: 0,
                        child: Image.asset('assets/images/User_Picture/User_pic_sample1.png',
                            width: 26, height: 26),  //소속 사용자 이미지
                      ),/*
                    Positioned(
                      left: 30,
                      child: Image.asset('assets/images/User_Picture/User_pic_sample2.png',
                          width: 26, height: 26),
                    ),
                    Positioned(
                      left: 40,
                      child: Image.asset('assets/images/User_Picture/User_pic_sample3.png',
                          width: 30, height: 30),
                    ),*/
                    ],
                  )
                ],
              ), //참여중인 사용자 사진
              const SizedBox(height: 12,),
              Row(
                children: [
                  const SizedBox(width: 18,),
                  InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context)
                          ..removeCurrentSnackBar()
                          ..showSnackBar(SnackBar(content: Text('미구현 기능입니다 (댓글창 페이지)')));
                      }, //댓글창 페이지로 이동
                      child: Container(
                        width: 65,
                        height: 30,
                        decoration: BoxDecoration( //컨테이너 테두리 조절
                          color: Color(0xffEBECF0),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xffEBECF0), width: 1),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 14,),
                            Image.asset('assets/images/List_Icon/List_icon_comments.png',
                                width: 16, height: 16), //댓글 아이콘
                            const SizedBox(width: 6,),
                            const Text('11',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffA4A4A7),
                              ),
                            ),
                          ],
                        ),
                      )
                  ), //댓글창
                  const SizedBox(width: 185,),
                  Container(
                    width: 76,
                    height: 30,
                    decoration: BoxDecoration( //컨테이너 테두리 조절
                      color: const Color(0xffEBECF0),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: const Color(0xffEBECF0), width: 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 14,),
                        Image.asset('assets/images/List_Icon/List_icon_user.png',
                            width: 16, height: 16), //댓글 아이콘
                        const SizedBox(width: 6,),
                        const Text('3',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA4A4A7),
                          ),
                        ), //현재 인원수
                        const Text('/',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA4A4A7),
                          ),
                        ),
                        const Text('8',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA4A4A7),
                          ),
                        ), //최대 인원수
                      ],
                    ),
                  )
                ],
              ), //댓글 -> 댓글창으로 이동, 인원수
            ]
        ),
      ),
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => ListDetail()));
      }, // -> 건수 상세 페이지로 이동
    );
  }
}