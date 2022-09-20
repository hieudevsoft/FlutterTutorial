import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/text.dart';

import '../../common/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.black,
      elevation: 0,
      title: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoldText(
                text: 'Tech',
                textSize: 20,
                color: AppColors.primary,
              ),
              SimpleText(
                text: 'Newz',
                textSize: 20,
                color: AppColors.lightWhite,
              )
            ],
          )),
      centerTitle: true,
    );
  }
}
