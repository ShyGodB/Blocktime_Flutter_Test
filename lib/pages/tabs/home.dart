import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Widget _buildTimeColumn() {
  //   List<Widget> list = [];
  //   for (int i = 0; i < 24; i++) {
  //     Widget column = Center(child: Text('$i:00'),);
  //     list.add(column);
  //   }
  //   return ListView(children: list,);
  // }

  Widget _buildWidget() {
    List<Widget> tableItems =  [];
    for( int i = 0; i < 24; i++) {
      var column = Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SizedBox(height: 25, child: Center(child: Text("$i:00", textAlign: TextAlign.center,),))
              ),
              // SizedBox(width: 10,),
              const Expanded(
                flex: 2,
                child: Card(
                  color: Colors.red,
                  // shadowColor: Colors.blue,
                  // elevation: 10,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  // child: Center(child: Text("", textAlign: TextAlign.center,))
                  child: SizedBox(height: 25, child: Center(child: Text("", textAlign: TextAlign.center,),))
                )
              ),
              // SizedBox(width: 10,),

              const Expanded(
                flex: 2,
                child: Card(
                  color: Colors.red,
                  shadowColor: Colors.blue,
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  // child: Center(child: Text("", textAlign: TextAlign.center,))
                  child: SizedBox(height: 25, child: Center(child: Text("", textAlign: TextAlign.center,),))
                ),
              ),
            ],
          );
      tableItems.add(column);
    }
    return ListView(
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
        onTap: () => {
          // print('这是第$i个卡片')
        },
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
          // Expanded(
          //   flex: 2,
          //   child: _buildTimeColumn(),
          // ),
          Expanded(
            flex: 4,
            child: _buildWidget()
          ),
          const Expanded(flex: 1, child: SizedBox(width: 10,)),
          Expanded(
            flex: 2,
            child: _buildCard()
          )
        ],
      )
    );
  }
}