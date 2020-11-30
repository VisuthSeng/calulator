import 'package:flutter/material.dart';

import 'package:get_x_state_demo_1/Allpage/pagecalculate.dart';
import 'package:get_x_state_demo_1/Allpage/pagesetec.dart';

class Khmercalculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          title: Text("Khmer Calculator"),
          bottom: TabBar(
            unselectedLabelColor: Colors.red,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(10),
                ),
                color: Colors.purple),
            tabs: [
              Tab(
                child: Text(
                  'Calculate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  'SETEC Calculate Grade',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PageCalculate(),
            PageSetec(),
          ],
        ),
      ),
    );
  }
}
