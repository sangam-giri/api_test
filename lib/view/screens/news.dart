import 'package:api_parsing/model/posts_model.dart';
import 'package:api_parsing/services/repository/news_repository.dart';
import 'package:api_parsing/services/route/route.dart';
import 'package:api_parsing/view/screens/news_desc.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<PostsModel> postModel = [];

  @override
  void initState() {
    super.initState();
    getAllNews();
  }

  getAllNews() {
    NewsRepository.getNews().then((value) {
      postModel = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("News"),
        centerTitle: true,
      ),
      body: Visibility(
        visible: postModel.isEmpty ? false : true,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
            itemCount: postModel.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => NewsDescScreen(
                    //         id: postModel[index].id,
                    //         title: postModel[index].title,
                    //         description: postModel[index].body)));
                    navigate(
                        context,
                        NewsDescScreen(
                            id: postModel[index].id,
                            title: postModel[index].title,
                            description: postModel[index].body));
                  },
                  leading: Text("${postModel[index].id}"),
                  title: Text(postModel[index].title),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              );
            }),
      ),
    );
  }
}
