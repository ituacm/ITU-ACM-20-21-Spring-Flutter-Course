import 'package:flutter/material.dart';
import 'ogrenci.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: App());
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController ogrenciadcontroller = TextEditingController();
  TextEditingController ogrenciNOTcontroller = TextEditingController();

  GlobalKey<FormState> form1key = GlobalKey<FormState>();
  String x = "Title";

  int seciliOgrenciID ;

  List<Ogrenci> list = List<Ogrenci>();

  bool notKontrol(double not) {
    if (not <= 50) {
      return false;
    } else {
      return true;
    }
  }

  void ogrenciEkle(isim, not, gecti) {
    Ogrenci ogrenci = new Ogrenci();

    ogrenci.gecti = gecti;
    ogrenci.isim = isim;
    ogrenci.not = not;

    list.add(ogrenci);
  }



  Widget sembol(bool gecti) {
    if (gecti == true) {
      return CircleAvatar(
        backgroundColor: Colors.green,);
    } else {
      return CircleAvatar(backgroundColor: Colors.red,);
    }
  }


  String selectedIDname(){
    if(seciliOgrenciID!=null){
      if(list.length!=null){
        return list[seciliOgrenciID].isim;
      }
    }else{
      return " ";
    }
  }

  showAlertOgrenciAdd(BuildContext context) {
    Widget okButton() {
      return MaterialButton(
          child: Text("OK"),
          onPressed: () {
            double not = double.tryParse(ogrenciNOTcontroller.text);
            ogrenciEkle(ogrenciadcontroller.text, not, notKontrol(not));
            Navigator.pop(context);
            setState(() {});
            form1key.currentState.reset();
          });
    }

    Widget noButton() {
      return MaterialButton(
          child: Text("Nope"),
          onPressed: () {
            Navigator.pop(context);
          });
    }

    AlertDialog alertDialog = AlertDialog(
      title: Text("Öğrenci ekle"),
      content: Form(
        key: form1key,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Name"),
              controller: ogrenciadcontroller,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Not"),
              controller: ogrenciNOTcontroller,
            ),
          ],
        ),
      ),
      actions: [
        noButton(),
        okButton(),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }



  showAlertOgrenciUpdate(BuildContext context) {
    ogrenciadcontroller.text = list[seciliOgrenciID].isim;
    ogrenciNOTcontroller.text = list[seciliOgrenciID].not.toString();

    Widget okButton() {
      return MaterialButton(
          child: Text("OK"),
          onPressed: () {
            double not = double.tryParse(ogrenciNOTcontroller.text);
            list[seciliOgrenciID].isim = ogrenciadcontroller.text;
            list[seciliOgrenciID].not = not;
            list[seciliOgrenciID].gecti = notKontrol(not);
            Navigator.pop(context);
            setState(() {});
            form1key.currentState.reset();
          });
    }

    Widget noButton() {
      return MaterialButton(
          child: Text("Nope"),
          onPressed: () {
            Navigator.pop(context);
          });
    }

    AlertDialog alertDialog = AlertDialog(
      title: Text("Öğrenci Düzenle"),
      content: Form(
        key: form1key,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
              ),
              controller: ogrenciadcontroller,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Not"),
              controller: ogrenciNOTcontroller,
            ),
          ],
        ),
      ),
      actions: [
        noButton(),
        okButton(),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(x),
      ),
      body: Column(children: [
        Expanded(
          flex: 9,
          child: Container(
            height: 500,
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      seciliOgrenciID = index;
                    });
                  },
                  child: Card(
                    elevation: 10,
                    child: ListTile(
                      leading: Text(list[index].not.toString()),
                      title: Text(list[index].isim),
                      trailing: sembol(list[index].gecti),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
            child: Center(
                child: Text("Seçili öğrenci : " + selectedIDname()),
            )
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 150,
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.red,
                      child: MaterialButton(
                        child: Text("Add"),
                        onPressed: ()=> showAlertOgrenciAdd(context),
                      ),
                    )),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                  child: MaterialButton(
                    child: Text("Delete"),
                    onPressed: (){
                      list.removeAt(seciliOgrenciID);
                      seciliOgrenciID = null;
                      setState(() {});
                    },
                  ),
                )),
                Expanded(
                    child: Container(
                  color: Colors.green,
                  child: MaterialButton(
                    child: Text("Update"),
                    onPressed: ()=>showAlertOgrenciUpdate(context),
                    color: Colors.green,
                  ),
                )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
