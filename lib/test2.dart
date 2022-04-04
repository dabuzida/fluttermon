import 'package:flutter/material.dart';

Widget _buildUIPressItem({required String imagePath, required VoidCallback onPressed}) {
  return Container(
    padding: const EdgeInsets.all(11),
    child: Expanded(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            onPressed.call();
          },
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              Text('data'),
              Text('data'),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildUIPress() {
  return CommonDesktopClippingWidth(
    child: PaddingHorizontalXL(
      child: Column(
        children: <Widget>[
          Center(
            child: PaddingHorizontalXL(
              child: FittedBox(
                child: TextXL(
                  text: '7월1일방문요양 언론보도',
                  color: Preset.colorNeutralFont.value,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const BlankColL(),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  _buildUIPressItem(
                    imagePath: 'assets/images/happy.jpg',
                    onPressed: () {
                      debugPrint('press_01');
                    },
                  ),
                  const BlankRowM(),
                  _buildUIPressItem(
                    imagePath: 'assets/images/happy.jpg',
                    onPressed: () {
                      debugPrint('press_02');
                    },
                  ),
                  const BlankRowM(),
                  _buildUIPressItem(
                    imagePath: 'assets/images/happy.jpg',
                    onPressed: () {
                      debugPrint('press_03');
                    },
                  ),
                ],
              ),
              const BlankColM(),
              Row(
                children: <Widget>[
                  _buildUIPressItem(
                    imagePath: 'assets/images/happy.jpg',
                    onPressed: () {
                      debugPrint('press_04');
                    },
                  ),
                  const BlankRowM(),
                  _buildUIPressItem(
                    imagePath: 'assets/images/happy.jpg',
                    onPressed: () {
                      debugPrint('press_05');
                    },
                  ),
                  const BlankRowM(),
                  _buildUIPressItem(
                    imagePath: 'assets/images/happy.jpg',
                    onPressed: () {
                      debugPrint('press_06');
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
