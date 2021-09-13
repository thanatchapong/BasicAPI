import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final v1, v2, v3, v4;
  DetailsPage(this.v1, this.v2, this.v3, this.v4);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var _v1, _v2, _v3, _v4;

  @override
  void initState() {
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              _v1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(_v2,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            SizedBox(
              height: 15,
            ),
            Image.network(_v3),
            SizedBox(
              height: 15,
            ),
            Text(_v4)
          ],
        ),
      ),
    );
  }
}
