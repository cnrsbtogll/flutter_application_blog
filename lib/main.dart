import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Uygulama Çerçevesi",
      home: Builder(builder: (context) {
        return Iskele();
      }),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = "Bloğa Hoş Geldiniz";
  martGoster() {
    setState(() {
      blogYazisi = "mart asfgsfdsfhdshdsh";
    });
  }

  nisanGoster() {
    setState(() {
      blogYazisi = "nisan fhlşdfhkdşfhşlk";
    });
  }

  mayisGoster() {
    setState(() {
      blogYazisi = "mayıs kkhflkashlkf";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(blogYazisi),
            ElevatedButton(
              onPressed: martGoster,
              child: Text("Mart Yazısı"),
            ),
            ElevatedButton(
              onPressed: nisanGoster,
              child: Text("Nisan Yazısı"),
            ),
            ElevatedButton(
              onPressed: mayisGoster,
              child: Text("Mayıs Yazısı"),
            )
          ],
        ),
      ),
    );
  }
}
