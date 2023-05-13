// 건수 상세 정보 클래스

// 최종 수정: 2023.5.2
// 작업자: 정해수

//추가 작업 예정 사항:
//db 연결 고려

class List {
  //추가로 필요한 정보
  //방장 아이콘
  //사진
  //참가자 사진
  //댓글
  //등록 시각

  // 호스트 정보 (사용자 프로필 클래스 필요)
  String hostName; //호스트 이름
  //호스트 사진
  int hostAge; //호스트 나이

  //모임 등록 정보
  String category; //모임 카테고리
  String location; //모임 장소
  String address; //모임 장소 주소
  int year;
  int month; // 모집 달
  int date; //모집 일
  int hour; // 마감 시
  int minute; //마감 분
  bool age; //모집 나이
  int userNum; //모집 인원 수
  int fee; //참가비
  String title; //모임 제목
  String content; //모임 내용
  bool approval; // 자동 승인 여부
  //모임 사진

  //모임 현재 정보
  int complete; //모집 완료 여부
  int commentNum; //댓글 수
  int curUserNum; //현재 모집된 인원 수

  List(this.hostName, this.hostAge, this.category, this.location, this.address,
      this.year, this.month, this.date, this.hour, this.minute, this.age,
      this.userNum, this.fee, this.title, this.content, this.approval,
      this.complete, this.commentNum, this.curUserNum);

  List.clone(List list) : this(list.hostName, list.hostAge, list.hostName,
      list.location, list.address, list.month, list.year, list.date, list.hour,
      list.minute, list.age, list.userNum, list.fee, list.title, list.content,
      list.approval, list.complete, list.commentNum, list.curUserNum);

}