import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_sevice.dart';
//
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/news_list_view.dart';

//import 'package:news_app/widgets/home_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            text: 'News',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoryList()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 6,
                ),
              ),
              NewsListBuilder(category: 'general'),
            ],
          )),
    );
  }
}

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var articles;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    articles = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: articles,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops,there is an error, try later.'),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
//  Column(
//           children: [
//             CategoryList(),
//             SizedBox(
//               height: 20,
//             ),
//             NewsListView(),
//           ],
//         ),


    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : SliverToBoxAdapter(
    //             child: Text('oops,there is an error, try later.'),
    //           );