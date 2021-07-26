import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text("Ford",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ))),
                Expanded(
                    child: Text("Fiesta, Focus, Granada",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 10.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text("Vauxhall",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ))),
                Expanded(
                    child: Text("Chevette, Zafira, Corsa",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 10.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
            HomeImageWidget(),
            OrderButton(),
          ],
        ));
  }
}

class HomeImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logoAsset = AssetImage('images/ford-logo.jpg');
    Image image = Image(image: logoAsset);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: ElevatedButton(
          onPressed: () {
            order(context);
          },
          child: Text("Order car!")),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
