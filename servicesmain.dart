import 'package:flutter/material.dart';
import 'package:flutter_handymappisioma/servicemap.dart';
import 'package:flutter_handymappisioma/services.dart';

// class MyAppTwo extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MyHomePage();
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> services = [
    'Carpentry',
    'Plumbing',
    'Painting',
    'Electrics',
  ];

  // static List url = [
  //   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Beslag_13_%28ubt%29.JPG/800px-Beslag_13_%28ubt%29.JPG?20120715215745',
  //   'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/A_hidden_face.jpg/800px-A_hidden_face.jpg?20100109121720',
  //   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Art-wall-brush-painting_%2823698214684%29.jpg/800px-Art-wall-brush-painting_%2823698214684%29.jpg?20160916050735',
  //   'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Defense.gov_photo_essay_080826-F-0000V-001.jpg/750px-Defense.gov_photo_essay_080826-F-0000V-001.jpg?20120918215052'
  // ];

  final List<ServiceDataModel> Servicesdata = List.generate(
      services.length,
      (index) => ServiceDataModel(
          '${services[index]}', '${services[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Available Services'),
        ),
        body: ListView.builder(
            itemCount: Servicesdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Servicesdata[index].name),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ServiceDetail(
                              serviceDataModel: Servicesdata[index],
                            )));
                  },
                ),
              );
            }));
  }
}
