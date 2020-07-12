
import 'package:flutter/cupertino.dart';

class MessaDisplay extends StatelessWidget {
  final String message;

  const MessaDisplay({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(
        child: SingleChildScrollView(
            child: Text(
              message,
              style: TextStyle(fontSize: 25),
            )),
      ),
    );
  }
}