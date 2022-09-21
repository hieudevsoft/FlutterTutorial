import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tech_news_app/common/colors.dart';
import 'package:flutter_tutorial/tech_news_app/data/remote/news_dto/news_dto.dart';
import 'package:flutter_tutorial/tech_news_app/data/repository/base_news_repository.dart';
import 'package:flutter_tutorial/tech_news_app/domain/news_repository.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/appbar.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/news_box.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/search_bar.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/text.dart';

class HomeTechNew extends StatefulWidget {
  const HomeTechNew({super.key});

  @override
  State<HomeTechNew> createState() => _HomeTechNewState();
}

class _HomeTechNewState extends State<HomeTechNew> {
  late final BaseNewrepository repository;
  late String currentQuery = '';
  int currentPage = 1;
  late ScrollController _scrollController;
  late NewsDto newsBox;
  bool _isFirstLoading = false;
  bool _isLoading = false;
  @override
  void initState() {
    repository = NewsRepository();
    _scrollController = ScrollController()
      ..addListener(() async {
        if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent) {
          setState(() {
            _isLoading = true;
          });
          currentPage += 1;

          final newArticles =
              (await repository.fetchNews(currentQuery, currentPage)).articles;
          newsBox =
              newsBox.copyWith(articles: newsBox.articles! + newArticles!);
          setState(() {
            _isLoading = false;
          });
        }
      });
    _firstLoadData();
    super.initState();
  }

  _firstLoadData() async {
    newsBox = await repository.fetchNews(currentQuery, currentPage);
    print(newsBox);
    _isFirstLoading = true;
    setState(() {});
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void resetWithSearch(String query) async {
    setState(() {
      _isLoading = true;
    });
    currentQuery = query;
    currentPage = 1;
    newsBox = await repository.fetchNews(currentQuery, currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const MyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchBar(
            onSearchListener: (query) {
              //resetWithSearch(query);
              // setState(() {
              //   _isLoading = false;
              // });
            },
          ),
          Expanded(
              child: !_isFirstLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      controller: _scrollController,
                      itemCount: newsBox.articles?.length,
                      itemBuilder: (context, index) {
                        final article = newsBox.articles?[index];
                        if (index + 1 == newsBox.articles?.length &&
                            _isLoading) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primary,
                            ),
                          );
                        } else {
                          return NewsBox(
                            imageurl: article?.urlToImage ?? "",
                            title: article?.title ?? "",
                            time: article?.publishedAt ?? "",
                            description: article?.description ?? "",
                            url: article?.url ?? "",
                            author: article?.author ?? "NewsTech",
                          );
                        }
                      },
                    )),
        ],
      ),
    );
  }
}
