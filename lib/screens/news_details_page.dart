import 'package:flutter/material.dart';
import 'package:new_c10_monday/models/NewsSearchModel.dart';
import 'package:new_c10_monday/shared/styles/my_theme_data.dart';

class NewsDetailsPage extends StatelessWidget {
  static const String routeName = 'news_details';

  final Articles articles;

  const NewsDetailsPage({required this.articles});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyThemeData.whiteColor,
          image:
              DecorationImage(image: AssetImage("assets/images/pattern.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('News Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.network(
                    articles.urlToImage ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                articles.title ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyThemeData.whiteColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        articles.content ?? "",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Source: ${articles.source?.name ?? ""}',
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 160),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Text(
                                "View Full Article",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 180.0),
                                child: Icon(Icons.arrow_right),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
