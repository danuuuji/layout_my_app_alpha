import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/resources/resources.dart';

class FeedListWidget extends StatelessWidget {
  const FeedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipOval(
                            child: Image(
                              image: AssetImage(AppImages.cat),
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Название канала',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w900)),
                            Text(
                              '21.09.2023',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.normal),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          'Текст из поста Текст из поста Текст из поста Текст из поста Текст из поста'),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
