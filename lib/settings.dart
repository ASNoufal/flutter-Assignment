import 'package:flutter/material.dart';
import 'package:flutter_assignment/general.dart';
import 'package:flutter_assignment/label.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4.5,
            color: Colors.blue,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: MediaQuery.of(context).size.height / 1.15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 125, 117, 117),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            "Settings",
                            style: TextStyle(fontSize: 21),
                          ),
                        ),
                      ),
                      Expanded(
                        child: DefaultTabController(
                          length: 10,
                          child: Column(
                            children: tabbars,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  List<Widget> get tabbars {
    return <Widget>[
      TabBar(
          labelColor: Colors.black,
          dividerColor: Colors.blue,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(
              child: Text("General",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Label",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Inbox",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Accounts and Import",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Filters and Blocked Addresses",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Forwading and POP/IMAP",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Ads-ons",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Chat and Meet",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Advanced",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Offline",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            )
          ]),
      const Expanded(
        child: TabBarView(
          children: <Widget>[
            General(),
            Label(),
            Label(),
            Label(),
            Label(),
            Label(),
            Label(),
            Label(),
            Label(),
            Label()
          ],
        ),
      ),
    ];
  }
}
