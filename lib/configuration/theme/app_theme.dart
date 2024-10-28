import 'package:flutter/material.dart';

//arreglo de colores
const Color _colorSelect = Color(0XFF990099);
const List<Color> _colorList = [
  _colorSelect,
  Colors.red,
  Colors.yellow,
  Colors.blue,
  Colors.deepOrangeAccent,
  Colors.green,
  Colors.black,
  Colors.indigo
];

class ClassTemaApp {
  final int colorSeleccionado;
  ClassTemaApp({this.colorSeleccionado = 0})
      : assert(
            colorSeleccionado >= 0 &&
                colorSeleccionado <= _colorList.length - 1,
            'El valor debe estar entre 0 y ${_colorList.length - 1}');

  ThemeData datosTema() {
    return ThemeData(
      brightness: Brightness.dark,
      colorSchemeSeed: _colorList[colorSeleccionado],
    );
  }
}
