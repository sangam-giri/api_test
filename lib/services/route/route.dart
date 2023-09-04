import 'package:flutter/material.dart';

navigate(BuildContext context, dynamic route) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => route));
}
