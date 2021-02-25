import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://www.iagua.es/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/lago_portada.jpg?itok=syLMJNl4'),
          )
        ],
      ),
    );
  }
}
