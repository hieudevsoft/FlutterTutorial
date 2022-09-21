import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_tutorial/tech_news_app/common/colors.dart';
import 'package:google_fonts/google_fonts.dart';

typedef OnSearchListener = Function(String query);

class SearchBar extends StatefulWidget {
  final OnSearchListener onSearchListener;
  const SearchBar({super.key, required this.onSearchListener});
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String currentValue = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        widget.onSearchListener.call(value);
                        currentValue = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Search a Keyword or a Phrase',
                        hintStyle: GoogleFonts.lato(),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (() {
            FocusScope.of(context).unfocus();
            widget.onSearchListener.call(currentValue);
          }),
          child: Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: AppColors.darkGrey,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search_rounded,
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}
