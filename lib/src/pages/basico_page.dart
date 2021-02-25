import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://www.iagua.es/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/lago_portada.jpg?itok=syLMJNl4'),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lago con puente',
                        style: estiloTitulo,
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        'Lago en el bosquecillo',
                        style: estiloSubTitulo,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 30.0,
                ),
                Text(
                  '41',
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}