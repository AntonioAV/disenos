import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.iagua.es/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/lago_portada.jpg?itok=syLMJNl4'),
    );
  }

  Widget _crearTitulo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
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
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 35.0,
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Sit nostrud do et magna id dolor tempor. Nostrud anim do commodo ex. Est veniam laboris consectetur sunt dolor. Tempor excepteur labore qui irure laboris mollit ipsum consequat id magna.Sit nostrud do et magna id dolor tempor. Nostrud anim do commodo ex. Est veniam laboris consectetur sunt dolor. Tempor excepteur labore qui irure laboris mollit ipsum consequat id magna.',
      ),
    );
  }

///////////////////////////////////////////////
}
