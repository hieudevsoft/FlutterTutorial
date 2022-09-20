import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tech_news_app/data/repository/base_news_repository.dart';
import 'package:flutter_tutorial/tech_news_app/domain/news_repository.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/appbar.dart';

class HomeTechNew extends StatefulWidget {
  const HomeTechNew({super.key});

  @override
  State<HomeTechNew> createState() => _HomeTechNewState();
}

class _HomeTechNewState extends State<HomeTechNew> {
  late final BaseNewrepository repository;

  @override
  void initState() {
    repository = NewsRepository();
    fetchNews();
    super.initState();
  }

  void fetchNews() async {
    (repository as NewsRepository).fetchNews('', 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
    );
  }
}
