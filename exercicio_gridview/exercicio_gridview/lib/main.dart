import 'package:flutter/material.dart';
import 'package:exercicio_gridview/model/list_imagens.dart';
import 'package:exercicio_gridview/view/MyGridView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Imagens Com GridView'; 
    return MaterialApp(
     // title: const Text(title),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),


      home: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 24, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        
        body: Column(
          children: [
            Expanded(
              child: MyGridView(),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              color: Colors.grey[900],
              child: Text(
                '“Art is the stored honey of the human soul.” – Theodore Dreiser\nMaliem',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
