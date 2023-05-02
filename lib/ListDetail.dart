// 건수 상세 정보 출력 페이지

// 최종 수정: 2023.5.2
// 작업자: 정해수

//추가 작업 예정 사항:
// 참가 인원 리스트 출력
// 버튼 이동 페이지 연결
// 지도 출력
// 하단 바 고정

import 'package:flutter/material.dart';
import 'List.dart';
import 'CategoryContainer.dart';

//List 클래스 더미 객체
List test1 = new List('호스트', 25, '게임', '대구광역시 용산구 121-2', '용산동', 2023, 6, 30, 17, 00, true, 8, 20000, '내가 이 과목 왜했지', 'ㄹㅇ 인생 최대 실수\n과거의 나야 그만둬\n지금 학점이 문제가 아닙니다', true, 0, 0, 1);

class ListDetail extends StatefulWidget {
  const ListDetail({Key? key}) : super(key: key);

  @override
  State<ListDetail> createState() => _ListDetailState();
}

class _ListDetailState extends State<ListDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘의 건수',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: ListView( // 메인 리스트 스크롤 뷰
        children: <Widget>[
          //모임 사진
          const SizedBox(height: 16,),
          Row(
            children: [
              const SizedBox(width: 24,),
              CategoryContainer(category: test1.category,),
              const SizedBox(width: 6,),
              Complete(test1.complete),
              const SizedBox(width: 157,),
              const StringText('모집 마감 시간: ', 12, 'PretendardRegular', 0xff000000),
              IntText(test1.hour, 12, 'PretendardRegular', 0xff000000),
              const StringText(':', 12, 'PretendardRegular', 0xff000000),
              IntText(test1.minute, 12, 'PretendardRegular', 0xff000000),
            ],
          ), //카테고리, 마감시간

          const SizedBox(height: 12,),
          Row(
            children: [
              const SizedBox(width: 24,),
              StringText(test1.title, 24, 'PretendardBold', 0xff2F3036)
            ],
          ), //모임 제목

          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 24,),
              //호스트 사진
              const SizedBox(width: 10,),
              StringText(test1.hostName, 12, 'PretendardRegular', 0xff000000),
            ],
          ), //호스트 사진, 이름

          const SizedBox(height: 10,),
          Row(
              children: [
                const SizedBox(width: 24,),
                ButtonTheme(
                  child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text('미구현 기능입니다 (참가하기)')));
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(47, 15, 47, 15),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/List_Icon/List_icon_participate.png',
                            width: 20, height: 20),
                        const SizedBox(width: 7.75,),
                        const StringText('참가하기', 14, 'PretendardBold', 0xff5E5F68),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12,),
                ButtonTheme(
                  child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text('미구현 기능입니다 (초대하기)')));
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(47, 15, 47, 15),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/List_Icon/List_icon_invite.png',
                            width: 20, height: 20),
                        const SizedBox(width: 7.75,),
                        const StringText('초대하기', 14, 'PretendardBold', 0xff5E5F68),
                      ],
                    ),
                  ),
                ),
              ]
          ), //참가하기, 초대하기 버튼

          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 24,),
              ButtonTheme(
                child: OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                      ..removeCurrentSnackBar()
                      ..showSnackBar(SnackBar(content: Text('미구현 기능입니다 (채팅방 입장)')));
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(132, 15, 133, 15),
                    backgroundColor: const Color(0xff4874EA),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/List_Icon/List_icon_comments2.png',
                          width: 20, height: 20),
                      const SizedBox(width: 7.75,),
                      const StringText('채팅방 입장', 14, 'PretendardBold', 0xffFFFFFF),
                    ],
                  ),
                ),
              ),
            ],
          ), //채팅방 입장 버튼

          const SizedBox(height: 16,),
          const Center(
            child: SizedBox(
              width: 365,
              child: Divider(
                color: Color(0xffF0F1F5),
                thickness: 1.0,
              ),
            ),
          ), //구분선

          const SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 24,),
              const StringText('내용', 12, 'PretendardBold', 0xff000000),
              const SizedBox(width: 50,),
              StringText(test1.content, 14, 'PretendardRegular', 0xff5E5F68),
            ],
          ), //모임 내용

          const SizedBox(height: 16,),
          const Center(
            child: SizedBox(
              width: 365,
              child: Divider(
                color: Color(0xffF0F1F5),
                thickness: 1.0,
              ),
            ),
          ), //구분선

          const SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 24,),
              const StringText('시간', 12, 'PretendardBold', 0xff000000),
              const SizedBox(width: 50,),
              IntText(test1.year, 14, 'PretendardRegular', 0xff5E5F68),
              const StringText('년 ', 14, 'PretendardRegular', 0xff5E5F68),
              IntText(test1.month, 14, 'PretendardRegular', 0xff5E5F68),
              const StringText('월 ', 14, 'PretendardRegular', 0xff5E5F68),
              IntText(test1.date, 14, 'PretendardRegular', 0xff5E5F68),
              const StringText('일 ', 14, 'PretendardRegular', 0xff5E5F68),
              IntText(test1.hour, 14, 'PretendardRegular', 0xff5E5F68),
              const StringText(':', 14, 'PretendardRegular', 0xff5E5F68),
              IntText(test1.minute, 14, 'PretendardRegular', 0xff5E5F68),
            ],
          ), //모임 날짜 및 시각

          const SizedBox(height: 16,),
          const Center(
            child: SizedBox(
              width: 365,
              child: Divider(
                color: Color(0xffF0F1F5),
                thickness: 1.0,
              ),
            ),
          ), //구분선

          const SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 24,),
              const StringText('장소', 12, 'PretendardBold', 0xff000000),
              const SizedBox(width: 50,),
              StringText(test1.location, 14, 'PretendardRegular', 0xff5E5F68),
            ],
          ), //모임 장소

          const SizedBox(height: 16,),
          Center(
            child: Container(
              width: 365,
              height: 300,
              color: const Color(0xffF0F1F5),
              child: Center(child: Text('(지도 출력)')),
            ),
          ), //지도 출력

          const SizedBox(height: 16,),
          const Center(
            child: SizedBox(
              width: 365,
              child: Divider(
                color: Color(0xffF0F1F5),
                thickness: 1.0,
              ),
            ),
          ), //구분선

          const SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 24,),
              const StringText('참여 연령', 12, 'PretendardBold', 0xff000000),
              const SizedBox(width: 35,),
              Age(test1.age),
            ],
          ), //참여 연령 제한

          const SizedBox(height: 16,),
          const Center(
            child: SizedBox(
              width: 365,
              child: Divider(
                color: Color(0xffF0F1F5),
                thickness: 1.0,
              ),
            ),
          ), //구분선

          const SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 24,),
              const StringText('참가비', 12, 'PretendardBold', 0xff000000),
              const SizedBox(width: 50,),
              IntText(test1.fee, 14, 'PretendardRegular', 0xff5E5F68),
              const StringText('원', 14, 'PretendardRegular', 0xff5E5F68),
            ],
          ), //참가비

          const SizedBox(height: 16,),
          const Center(
            child: SizedBox(
              width: 365,
              child: Divider(
                color: Color(0xffF0F1F5),
                thickness: 1.0,
              ),
            ),
          ), //구분선

          const SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 24,),
              const StringText('참가 인원', 12, 'PretendardBold', 0xff000000),
              const SizedBox(width: 35,),
              IntText(test1.curUserNum, 14, 'PretendardRegular', 0xff5E5F68),
              const StringText('명 참여중 / 최대 ', 14, 'PretendardRegular', 0xff5E5F68),
              IntText(test1.userNum, 14, 'PretendardRegular', 0xff5E5F68),
              const StringText(' 명까지', 14, 'PretendardRegular', 0xff5E5F68),

            ],
          ), //참가 인원

          const SizedBox(height: 25,),
          Row(
            children: [
              const SizedBox(width: 24,),
              //호스트 사진
              const SizedBox(width: 10,),
              StringText(test1.hostName, 12, 'PretendardRegular', 0xff000000),
              const SizedBox(width: 250,),
              Image.asset('assets/images/List_Icon/List_icon_host.png',
                  width: 24, height: 24),
              const SizedBox(width: 4,),
              StringText('호스트', 12, 'PretendardRegular', 0xffB78C00),
              const SizedBox(width: 10,),
            ],
          ), //참가자 리스트

          const SizedBox(height: 16,),
          const Center(
            child: SizedBox(
              width: 365,
              child: Divider(
                color: Color(0xffF0F1F5),
                thickness: 1.0,
              ),
            ),
          ), //구분선

          const SizedBox(height: 16,),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 24,),
              StringText('댓글', 12, 'PretendardBold', 0xffAEAFB3),
            ],
          ), //댓글

          //댓글 내용

          const SizedBox(height: 28,),
          Center(
            child: Row(
              children: [
                const SizedBox(width: 24,),
                ButtonTheme(
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text('미구현 기능입니다 (전체 댓글 보기)')));
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(138, 15, 138, 15),
                      backgroundColor: const Color(0xffF0F1F5),
                      elevation: 0,
                    ),
                    child: Row(
                      children: [
                        const StringText('전체 댓글 보기', 14, 'PretendardBold', 0xffA8A8B2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 28,),
        ]
      )
    );
  }
}

class Complete extends StatelessWidget {
  final int complete;

  const Complete(this.complete, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(complete != 0)
      {
        return Container(
          width: 33,
          height: 20,
          decoration: BoxDecoration(
            color: const Color(0xffD0D1D8),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: StringText('완료', 9, 'PretendardBold', 0xffFFFFFF),
          ),
        );
      }
    else
      {
        return const SizedBox(width: 33,);
      }
  }
} //모집 완료 여부

class Age extends StatelessWidget {
  final bool age;

  const Age(this.age, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(age)
    {
      return Container(
        child: Row(
          children: [
            IntText(test1.hostAge - 5, 14, 'PretendardRegular', 0xff5E5F68),
            const StringText(' ~ ', 14, 'PretendardRegular', 0xff5E5F68),
            IntText(test1.hostAge + 5, 14, 'PretendardRegular', 0xff5E5F68),
          ],
        )
      );
    }
    else
    {
      return const StringText('연령 제한 없음', 14, 'PretendardRegular', 0xff5E5F68);
    }
  }
} //연령 제한 여부

class StringText extends StatelessWidget {
  final String string;
  final double size;
  final String font;
  final int color;

  const StringText(this.string, this.size, this.font, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(string,
      style: TextStyle(
        color: Color(color),
        fontSize: size,
        fontFamily: font,
      ),
    );
  }
} //문자열 출력

class IntText extends StatelessWidget {
  final int num;
  final double size;
  final String font;
  final int color;

  const IntText(this.num, this.size, this.font, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(num == 0)
      {
        return Text('00',
          style: TextStyle(
            color: Color(color),
            fontSize: size,
            fontFamily: font,
          ),
        );
      }
    else {
      return Text('$num',
        style: TextStyle(
          color: Color(color),
          fontSize: size,
          fontFamily: font,
        ),
      );
    }

  }
} //정수 출력