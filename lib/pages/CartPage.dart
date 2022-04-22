import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../CartModel.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) => cart.items.length > 0
          ? Column(children: [
              Expanded(
                  child: ListView(
                padding: const EdgeInsets.all(8.0),
                children: [
                  Text("Your Items",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ...cart.items.asMap().entries.map((e) {
                    var index = e.key;
                    var element = e.value;
                    return ListTile(
                      leading: Image.asset(element.url),
                      title: Text(element.name),
                      subtitle: Text("Rs." + element.price.toString()),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .removeAtIndex(index);
                        },
                      ),
                    );
                  }),
                  Text("Summary",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ListTile(
                    title: Text('Item Total',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    subtitle: Text("Inc Taxes"),
                    trailing: Text("Rs." + cart.totalPrice.toString()),
                  ),
                  ListTile(
                    title: Text('Delivery Fee',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    subtitle: Text("Inc Taxes"),
                    trailing: Text("Rs.30"),
                  ),
                ],
              )),
              Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        spreadRadius: 4.0,
                        blurRadius: 4.0,
                        color: Colors.black45)
                  ]),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8),
                          child:
                              Text("Rs." + (cart.totalPrice + 30).toString())),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                            child: Text("Checkout"),
                            onPressed: () {},
                          ))
                    ],
                  ))
            ])
          : Center(
              child: Text("No Items In Cart",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
    );
  }
}
