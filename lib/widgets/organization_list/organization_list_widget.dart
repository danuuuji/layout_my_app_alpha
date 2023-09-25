import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/resources/resources.dart';

class Orgs {
  final String title;
  final String subtitle;

  Orgs({required this.title, required this.subtitle});
}

class OrganizationListWidget extends StatefulWidget {
  OrganizationListWidget({super.key});

  @override
  State<OrganizationListWidget> createState() => _OrganizationListWidgetState();
}

class _OrganizationListWidgetState extends State<OrganizationListWidget> {
  final _orgs = [
    Orgs(title: 'Организация 1', subtitle: 'Краткое описание организации 1'),
    Orgs(title: 'Организация 2', subtitle: 'Краткое описание организации 2'),
    Orgs(title: 'Организация 3', subtitle: 'Краткое описание организации 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _orgs.length,
        itemBuilder: (BuildContext context, int index) {
          return MyExpansionTile(
            title: _orgs[index].title,
            subtitle: _orgs[index].subtitle,
          );
        });
  }
}

class MyExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const MyExpansionTile(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      subtitle: Text(subtitle),
      children: <Widget>[
        Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.map_outlined)),
            ElevatedButton(
              onPressed: () {},
              child: Text(),
            ),
            Text('На картах'),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.touch_app)),
                Text(
                  'Открыть в \n приложении',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.message)),
                Text('Написать')
              ],
            )
          ]),
        )
      ],
    );
  }
}
