import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/resources/resources.dart';

class Post {
  final String imageName;
  final String title;
  final String date;
  final String description;

  Post(
      {required this.imageName,
      required this.title,
      required this.date,
      required this.description});
}

class FeedListWidget extends StatelessWidget {
  FeedListWidget({super.key});
  final _posts = [
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста1',
        date: '22.09.2023',
        description: 'Очередное описание текста из поста'),
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста2',
        date: '20.09.2023',
        description: 'Очередное описание текста из поста'),
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста1',
        date: '22.09.2023',
        description: 'Очередное описание текста из поста'),
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста2',
        date: '20.09.2023',
        description: 'Очередное описание текста из поста'),
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста1',
        date: '22.09.2023',
        description: 'Очередное описание текста из поста'),
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста2',
        date: '20.09.2023',
        description: 'Очередное описание текста из поста'),
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста1',
        date: '22.09.2023',
        description: 'Очередное описание текста из поста'),
    Post(
        imageName: AppImages.cat,
        title: 'НазваниеПоста2',
        date: '20.09.2023',
        description: 'Очередное описание текста из поста')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Ink(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(2, 2))
                  ]),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Image(
                              image: AssetImage(_posts[index].imageName),
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_posts[index].title,
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                                Text(_posts[index].date,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(_posts[index].description,
                            maxLines: 3, overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
