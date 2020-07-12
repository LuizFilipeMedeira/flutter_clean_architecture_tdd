import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoagingWidget extends StatelessWidget {
  const LoagingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}