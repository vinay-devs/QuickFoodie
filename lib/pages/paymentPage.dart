import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quick Foodie"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Full Name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                    ),
                  ),
                ),
                Text(
                  "Date of Birth",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    children: <Widget>[
                      new Flexible(
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: "DD",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      new Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            decoration: const InputDecoration(
                              hintText: "MM",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      new Flexible(
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Payment Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Credit Card",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                          child: TextField(
                        decoration: InputDecoration(
                          hintText: "Debit Card",
                          border: OutlineInputBorder(),
                        ),
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Card Number",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Text(
                  "Pre-Order Time Period",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "From",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      new Flexible(
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: "DD",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      new Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            decoration: const InputDecoration(
                              hintText: "MM",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      new Flexible(
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "To",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      new Flexible(
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: "DD",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      new Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            decoration: const InputDecoration(
                              hintText: "MM",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      new Flexible(
                        child: new TextField(
                          decoration: const InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(onPressed: _url, child: Text("Pay Now"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  _url() async {
    const url = 'https://www.onlinesbi.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
