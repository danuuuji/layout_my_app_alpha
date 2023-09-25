import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/resources/resources.dart';

class Channel {
  final String imageName;
  final String title;
  final String description;

  Channel(
      {required this.imageName,
      required this.title,
      required this.description});
}

class ChannelListWidget extends StatelessWidget {
  ChannelListWidget({super.key});

  final _channels = [
    Channel(
        imageName: AppImages.cat,
        title: 'Название канала №1',
        description: 'Краткое описание канала №1'),
    Channel(
        imageName: AppImages.cat,
        title: 'Название канала №2',
        description: 'Краткое описание канала №1'),
    Channel(
        imageName: AppImages.cat,
        title: 'Название канала №3',
        description: 'Краткое описание канала №1'),
    Channel(
        imageName: AppImages.cat,
        title: 'Название канала №4',
        description: 'Краткое описание канала №1'),
    Channel(
        imageName: AppImages.cat,
        title: 'Название канала №5',
        description: 'Краткое описание канала №1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: ListView.builder(
          itemCount: _channels.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage(_channels[index].imageName)),
                title: Text(_channels[index].title),
                titleTextStyle: Theme.of(context).textTheme.titleLarge,
                subtitle: Text(_channels[index].description),
                subtitleTextStyle: Theme.of(context).textTheme.bodyMedium,
                onTap: () {},
                trailing: Icon(Icons.arrow_right_sharp),
              ),
            );
          }),
    );
  }
}
