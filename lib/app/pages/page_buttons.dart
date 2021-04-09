import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:poc_btg/app/widgets/cards/card_trades.dart';
import 'package:poc_btg/app/widgets/space_default.dart';
import 'package:poc_btg/app/widgets/task/button_dynamic.dart';
import 'package:poc_btg/app/widgets/text_grid.dart';
import 'package:poc_btg/models/task/task.dart';
import 'page_button_controller.dart';
import 'package:poc_btg/app/widgets/list_cards.dart';
import 'package:poc_btg/models/card_model.dart';

class PageButton extends StatefulWidget {
  @override
  _PageButtonState createState() => _PageButtonState();
}

class _PageButtonState extends State<PageButton> {
  final pageController = PageButtonController();
  SnackBar? snackBar;

  @override
  void initState() {
    super.initState();
    setState(() {
      pageController.refreshTasks();
    });
  }

  void _onPresseDynamicButton(final method, final url) {
    switch (method) {
      case "GET":
        snackBar = SnackBar(
          content: Text("method:$method url:$url"),
        );
        break;
      case "POST":
        snackBar = SnackBar(
          content: Text("method:$method url:$url"),
        );
        break;
      case "DELETE":
        snackBar = SnackBar(
          content: Text("method:$method url:$url"),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final widthCard = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFF2a2f34),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          backgroundColor: Colors.blue,
          onPressed: () {
            setState(() {
              pageController.refreshTasks();
            });
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Color(0xFF43494d)),
            ),
            SpaceDefault(),
            Flexible(
                flex: 1,
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: ListCards(
                        width: widthCard,
                        height: MediaQuery.of(context).size.height * 0.17,
                      ),
                    ))),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Divider(
                color: Color(0xFF6d7175),
              ),
            ),
            Expanded(
                flex: 3,
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(tabs: [
                          Tab(
                            text: "Tarefas",
                          ),
                          Tab(
                            text: "Trades",
                          ),
                          Tab(
                            text: "Positions",
                          ),
                        ]),
                        Expanded(
                            child: TabBarView(
                          children: [
                            Container(
                              child: SingleChildScrollView(
                                child: Container(
                                    alignment: Alignment.topCenter,
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                          headingRowColor: MaterialStateProperty
                                              .resolveWith<Color?>(
                                                  (Set<MaterialState> states) =>
                                                      Color(0xFF2a2f34)),
                                          columns: [
                                            DataColumn(
                                                label: Text(
                                              "id Tarefa",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            )),
                                            DataColumn(
                                                label: Text("Data",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12))),
                                            DataColumn(
                                                label: Text("Descrição",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12))),
                                            DataColumn(
                                                label: Text("DeadLine",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12))),
                                            DataColumn(
                                                label: Text("Ações",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12))),
                                          ],
                                          rows: dataRows(pageController.tasks)),
                                    )),
                              ),
                            ),
                            Container(),
                            Container(),
                          ],
                        ))
                      ],
                    )))
          ],
        ));
  }

  List<DataRow> dataRows(List<Task> tasks) {
    final dataRows = <DataRow>[];
    final width = MediaQuery.of(context).size.width;
    for (final task in tasks) {
      final dataCells = <DataCell>[];
      dataCells.add(DataCell(Container(
        width: 50,
        child: TextGrid(
          text: task.taskId,
          priority: task.priority,
        ),
      )));
      dataCells.add(DataCell(Container(
        width: 120,
        child: TextGrid(
          text: task.creationDateTimeFormated,
          priority: task.priority,
        ),
      )));
      dataCells.add(DataCell(Container(
        width: 250,
        child: TextGrid(
          text: task.description,
          priority: task.priority,
        ),
      )));
      dataCells.add(DataCell(Container(
        width: 120,
        child: TextGrid(
          text: task.deadLineFormated,
          priority: task.priority,
        ),
      )));
      dataCells.add(DataCell(ButtonDynamic(
        height: 40.0,
        width: 180.0,
        actions: task.actions,
        onPressed: (method, type) {
          _onPresseDynamicButton(method, type);
          ScaffoldMessenger.of(context).showSnackBar(snackBar!);
        },
      )));
      dataRows.add(DataRow(cells: dataCells));
    }
    return dataRows;
  }
}
