import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2()
        ],
      )
    );
  }

  Widget _page1() {
    return Container(
      child: Center(child: Text("pagina 1"))
    );
  }

  Widget _page2() {
    return Container(
      child: Center(child: Text("pagina 2"))
    );
  }
}