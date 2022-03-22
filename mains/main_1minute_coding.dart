// 1분코딩 웹사이트 레이아웃
// import 'dart:ui';
import 'package:flutter/material.dart';
import './custom_card.dart';
import 'package:flutter/rendering.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

void showBaselines() {
  debugPaintBaselinesEnabled = true;
}

void main() {
  // showLayoutGuidelines();
  // showBaselines();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        /* theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.orange,
            // displayColor: Colors.orange,
          ),
        ), */

        /* theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'Georgia',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ), */
        debugShowCheckedModeBanner: false,
        title: '웹사이트: 1분코딩 레이아웃',
        home: SingleChildScrollView(
            child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 247, 247, 244),
                ),
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                // margin: const EdgeInsets.all(10.0),
                height: 1100,
                child: Container(
                    child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: _header(),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 28,
                      child: _content(),
                    ),
                    const Spacer(),
                    const Divider(
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 1,
                      child: _footer(),
                    ),
                  ],
                )))));
  }

  Widget _header() {
    final dateToday = DateTime.now();
    String date = dateToday.toString().substring(0, 10);
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('$date',
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                      )),
                ],
              ),
            )),
        Container(
          margin: EdgeInsets.only(bottom: 2),
          color: Colors.grey,
          height: 1,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 3),
          color: Colors.black,
          height: 1,
        ),
        Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'images/lake.jpg',
                    width: 210,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'images/lake.jpg',
                    width: 400,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'images/lake.jpg',
                    width: 210,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.only(top: 2, bottom: 2),
          color: Colors.grey,
          height: 1,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 3),
          color: Colors.black,
          height: 1,
        ),
        Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('1분코딩',
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                const Text('<튜토리얼/>',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                const Text('아티클',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                const Text('제품',
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                const Text('여기는',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
              ],
            )),
        Container(
          margin: EdgeInsets.only(top: 2, bottom: 2),
          color: Colors.black,
          height: 1,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 3),
          color: Colors.grey,
          height: 1,
        ),
      ],
    );
  }

  Widget _content() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 1, child: _contentLeft()),
        Expanded(flex: 4, child: _contentCenter()),
        Expanded(flex: 1, child: _contentRight()),
      ],
    );
  }

  Widget _contentLeft() {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    color: Colors.black,
                    child: Row(children: [
                      const Text('유투브 111분코딩→',
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1,
                              color: Colors.white,
                              decoration: TextDecoration.none)),
                    ])),
                const Divider(color: Colors.transparent),
                Container(
                    color: Colors.black,
                    child: Row(children: [
                      const Text('페이스북 1분코딩→',
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1,
                              color: Colors.white,
                              decoration: TextDecoration.none)),
                    ])),
              ],
            ),
            const Divider(
              // height: 30,
              // thickness: 50,
              // indent: 20,
              // endIndent: 20,
              color: Colors.pink,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: const Text('최신 튜토리얼',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
            const Divider(
              color: Colors.pink,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Canvas로 경이로운 소문 융의 땅 만들기',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.black,
                      )),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  const Text(
                      '1월에 유튜브에 올렸던 영상인데, 글이 조금 늦었네요~Canvas를 이용해 드라마 경이로운 소문의 융의 땅을 만들어 봅니다. 융의 땅이 뭔지 모르셔도 그냥 저런 빛 움직임을 만드는 강의라고 생각하고 보시면 됩니다. 외부 라이브러리를…',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 1,
                        color: Colors.black,
                      )),
                  const Divider(color: Colors.transparent),
                  const Text('이번에야말로 CSS Grid를 익혀보자',
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.black,
                      )),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  const Text(
                      '이 포스트에는 실제 코드가 적용된 부분들이 있으므로, 해당 기능을 잘 지원하는 최신 웹 브라우저로 보시는게 좋습니다. (대충 인터넷 익스플로러로만 안보면 된다는 이야기) 이 튜토리얼은 “차세대 CSS 레이아웃” 시리즈의 두번째 포스트입니다.혹시…',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 1,
                        color: Colors.black,
                      )),
                ],
              ),
            )
          ],
        ));
  }

  Widget _contentCenter() {
    List<CustomCard> cards = [];

    for (var e in cardList) {
      cards.add(CustomCard(e.url, e.title));
    }
    return Container(
        decoration: BoxDecoration(
          // color: Color.fromARGB(255, 247, 247, 244),
          border: Border(
              right: BorderSide(
                  color: Colors.black, width: 0.4, style: BorderStyle.solid),
              left: BorderSide(
                  color: Colors.black, width: 0.4, style: BorderStyle.solid)),
        ),
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const Text('1분코딩',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.black,
                      ))
                ])),

            //1 map으로 구현

            Expanded(
                flex: 16,
                child: Row(
                    children: cardList.map((e) {
                  return CustomCard(e.url, e.title);
                }).toList())),

            /* //2 for문으로 구현
            Expanded(
                flex: 16, child: Row(children: [for (var item in cards) item])),
 */
            Expanded(
                flex: 3,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('1 2 다음 »',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Colors.black,
                              ))
                        ]))),
          ],
        ));
  }

  Widget _contentRight() {
    return Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/lake.jpg',
              // width: 90,
              height: 300,
              fit: BoxFit.cover,
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const Text(
                'Oh! 감탄사가 나오는 역동적인 인터랙티브 웹사이트 만들기 온라인 강좌 시리즈. 수강평을 확인해보세요 :)',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                )),
          ],
        ));
  }

  Widget _footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('© 2021 1분코딩 by 스튜디오밀',
            style: const TextStyle(
              fontSize: 16,
              letterSpacing: 1,
              color: Colors.black,
              decoration: TextDecoration.none,
            )),
      ],
    );
  }
}
