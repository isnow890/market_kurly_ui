import 'package:flutter/material.dart';
import 'package:impl/screens/components/text_menu_card.dart';
import 'package:impl/screens/my_kurly/components/my_kurly_header.dart';

import '../../models/text_menu.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyKurlyHeader(),
        buildPaddingTextMenuCard("비회원 주문 조회", () {}),
        SizedBox(
          height: (55 * textMenuList.length).toDouble(),
          child: ListView.separated(
              //iOS에서 스크롤 끝까지 했을 경우 바운싱 효과 없애줌
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 55,
                  child: TextMenuCard(
                    title: textMenuList[index].text,
                    icon: textMenuList[index].icon,
                    press: () {},
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                    height: 0.0,
                  ),
              itemCount: textMenuList.length),
        )
      ],
    );
  }
}

buildPaddingTextMenuCard(String text, GestureTapCallback press) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: SizedBox(
      height: 55,
      child: TextMenuCard(
        title: text,
        icon: "assets/icons/right-arrow.svg",
        press: press,
        textColor: Colors.black,
      ),
    ),
  );
}
