import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _buildWidget() {
    List<TableRow> tableItems =  [];
    for( int i = 0; i < 24; i++) {
      var column = TableRow(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2.0, color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(0)),
            ),
            children: <Widget>[
              SizedBox(height: 28, child: Center(child: Text("$i:00", textAlign: TextAlign.center,))),
              const SizedBox(height: 28, child: Text("")),
              const SizedBox(height: 28, child: Text("")),
            ],
          );
      tableItems.add(column);
    }
    return Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(50.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(100.0),
        },
        border: TableBorder.all(
          color: Colors.grey, 
          width: 1.0, 
          style: BorderStyle.solid
        ),
        children: tableItems,
    );
  }

  Widget _buildCard() {
    List<String> list = ["工作", "学习", "运动", "娱乐", "其它", "添加"];
    List<Widget> listViewItems = [];
    for (int i = 0; i < list.length; i++) {
      var top = i > 0 ? 20 : 8;
      var column = InkWell(
        child: Card(
          color: Colors.red,
          shadowColor: Colors.blue,
          elevation: 10,
          margin: EdgeInsets.fromLTRB(0, top.toDouble(), 0, 0),
          child: SizedBox(height: 40, child: Center(child: Text(list[i], textAlign: TextAlign.center,),))
        ),
        onTap: () => print('这是第$i个卡片'),
      );
      listViewItems.add(column);
    }
    return ListView(
      children: listViewItems
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        textDirection: TextDirection.ltr,
        // mainAxisAlignment: MainAxisAlignment.spaceAround, // 在使用 Expanded 时，此项不生效
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.topLeft,
              width: 300,
              height: 800,
              padding: const EdgeInsets.all(8.0),
              child: _buildWidget(),
            )
          ),
          const Expanded(child: SizedBox(width: 20,)),
          Expanded(
            flex: 2,
            child: Container(
              child: _buildCard()
            )
          )
        ],
      )
    );
  }
}