import 'package:flutter/material.dart';
import 'db.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  final dbHelper = DBHelper.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              child: Text("insert"),
              onPressed: ()=> insert(),
            ),
            MaterialButton(
              child: Text("query"),
              onPressed: ()=> query(),
            ),
            MaterialButton(
              child: Text("update"),
              onPressed: ()=> update(),
            ),
            MaterialButton(
              child: Text("delete"),
              onPressed: ()=> delete(),
            ),
          ],
        ),
      ),
    );
  }

  insert() async{
    Map<String,dynamic> row = {
      DBHelper.columnName : "Telefon",
      DBHelper.columnPrice: 500
    };

    final id = await dbHelper.insert(row);
    print('inserted row id : $id');
  }

  query() async {
    final allRows = await dbHelper.queryAll();
    print("query all rows:");
    allRows.forEach((row)=>print(row));
  }

  update() async {
    Map<String,dynamic> row = {
      DBHelper.columnId: 1,
      DBHelper.columnName: "Değişti",
      DBHelper.columnPrice: 10000,
    };
    final rowsAffacted = await dbHelper.update(row);
    print("updated  $rowsAffacted row(s)");
  }

  delete() async{
    final id = await dbHelper.queryRowCount();
    final rowsDeleted = await dbHelper.delete(id);
    print("deleted $rowsDeleted row(s) : row $id");
  }
}

