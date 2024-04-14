import 'package:flutter/material.dart';
import 'package:exercicio_gridview/model/list_imagens.dart';

class MyGridView extends StatelessWidget {
  MyGridView({Key? key}) : super(key: key);

  final gridItems = 10;
  final ListImagens imagens = ListImagens();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
      itemCount: imagens.imagens.length,
      itemBuilder: (context, index) {
        return Image.asset(imagens.imagens[index]);
      },
    );
  }
}
