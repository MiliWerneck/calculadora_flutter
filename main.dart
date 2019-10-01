import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: " - Calculadora - ",
      theme: new ThemeData(primarySwatch: Colors.red),
      
      home: new HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0,factor=0;
  final TextEditingController t1 = new TextEditingController(text: " ");
  var resultStr=0;

  void doDiv() { //Divisão
    setState(() {
      num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor ~/ num1).toString();
      }
    });
  }

  void doMul() { //Multiplicação
    setState(() {
      num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor * num1).toString();
      }
    });
  }

  void doAdd() { //Soma
    setState(() {
      num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor + num1).toString();
      }
    });
  }

   void doSub() { //Subtração
    setState(() {
        num1 = int.parse(t1.text);
      if (factor==0){
        factor=num1;
        t1.text='';
      }else{
          t1.text = (factor - num1).toString();
      }
    });
  }

void doResult(){ //Resultado
  setState(() {
      t1.text=factor.toString();
    });
}

void doClear() { //Limpar tela
    setState(() {
      t1.text = "0";
      factor=0;
    });
  }
 void str0() {
    setState(() {
      t1.text=t1.text + "0";
    });
  }
 void str1() {
    setState(() {
      t1.text=t1.text + "1";
    });
  }

  void str2() {
    setState(() {
      t1.text=t1.text + "2";
    });
  }
   void str3() {
    setState(() {
      t1.text=t1.text + "3";
    });
  }
  void str4() {
    setState(() {
      t1.text=t1.text + "4";
    });
  }

  void str5() {
    setState(() {
      t1.text=t1.text + "5";
    });
  }
   void str6() {
    setState(() {
      t1.text=t1.text + "6";
    });
  }
   void str7() {
    setState(() {
      t1.text=t1.text + "7";
    });
  }

  void str8() {
    setState(() {
      t1.text=t1.text + "8";
    });
  }
   void str9() {
    setState(() {
      t1.text=t1.text + "9";
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(" Calculadora "),
      ),
      body: new Container(
        padding: const EdgeInsets.all(4.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            new TextField(
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black38),
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "..."),
              controller: t1,
            ),
           
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("7"),
                  color: Colors.white,
                  onPressed: str7,
                ),
                new MaterialButton(
                  child: new Text("8"),
                  color: Colors.white,
                  onPressed: str8,
                ),
                new MaterialButton(
                  child: new Text("9"),
                  color: Colors.white,
                  onPressed: str9,
                ),
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doMul,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("4"),
                  color: Colors.white,
                  onPressed: str4,
                ),
                new MaterialButton(
                  child: new Text("5"),
                  color: Colors.white,
                  onPressed: str5,
                ),
                 new MaterialButton(
                  child: new Text("6"),
                  color: Colors.white,
                  onPressed: str6,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doDiv,
                ),
              ],
            ),
             new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("1"),
                  color: Colors.white,
                  onPressed: str1,
                ),
                new MaterialButton(
                  child: new Text("2"),
                  color: Colors.white,
                  onPressed: str2,
                ),
                 new MaterialButton(
                  child: new Text("3"),
                  color: Colors.white,
                  onPressed: str3,
                ),
                 new MaterialButton(
                  child: new Text("-"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doSub,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("C"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doClear,
                ),
                new MaterialButton(
                  child: new Text("0"),
                  color: Colors.white,
                  onPressed: str0,
                ),
                new MaterialButton(
                  child: new Text("="),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doResult,
                ),
                 new MaterialButton(
                  child: new Text("+"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doAdd,
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}