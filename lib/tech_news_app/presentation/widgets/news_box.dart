import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tech_news_app/common/colors.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/text.dart';

import 'bottom_sheet.dart';

class NewsBox extends StatelessWidget {
  final String imageurl, title, time, description, url, author;
  const NewsBox(
      {Key? key,
      required this.imageurl,
      required this.title,
      required this.time,
      required this.description,
      required this.url,
      required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {
            showMyBottomSheet(context, title, description, imageurl, url);
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
            width: w,
            color: AppColors.black,
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imageurl,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow),
                  ),
                  placeholder: (context, url) =>
                      CircularProgressIndicator(color: AppColors.primary),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleText(
                          color: AppColors.white, textSize: 16, text: title),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SimpleText(
                              color: AppColors.lightWhite,
                              textSize: 12,
                              text: time),
                          BoldText(
                              color: AppColors.white,
                              textSize: 16,
                              text: author),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Divider(
            color: AppColors.primary,
          ),
        )
      ],
    );
  }
}
