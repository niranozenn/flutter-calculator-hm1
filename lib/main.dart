import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Calcuator"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num number1 = 0, number2 = 0, result = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  Toplama() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 + number2;
    });
  }

  Cikarma() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 - number2;
    });
  }

  Carpma() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 * number2;
    });
  }

  Bolme() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 / number2;
    });
  }

  Reset() {
    setState(() {
      t1.clear();
      t2.clear();
      result = 0;
    });
  }

  Nine() {
    setState(() {
      //if (t1 == 0) {
      t1.text = t1.text + 9.toString();

      t2.text = t2.text + 9.toString();
    });
  }

  Eight() {
    setState(() {
      t1.text = t1.text + 8.toString();
      t2.text = t2.text + 8.toString();
    });
  }

  Seven() {
    setState(() {
      t1.text = t1.text + 7.toString();
      t2.text = t2.text + 7.toString();
    });
  }

  Six() {
    setState(() {
      t1.text = t1.text + 6.toString();
      t2.text = t2.text + 6.toString();
    });
  }

  Five() {
    setState(() {
      t1.text = t1.text + 5.toString();
      t2.text = t2.text + 5.toString();
    });
  }

  Four() {
    setState(() {
      t1.text = t1.text + 4.toString();
      t2.text = t2.text + 4.toString();
    });
  }

  Three() {
    setState(() {
      t1.text = t1.text + 3.toString();
      t2.text = t2.text + 3.toString();
    });
  }

  Two() {
    setState(() {
      t1.text = t1.text + 2.toString();
      t2.text = t2.text + 2.toString();
    });
  }

  One() {
    setState(() {
      t1.text = t1.text + 1.toString();
      t2.text = t2.text + 1.toString();
    });
  }

  Zero() {
    setState(() {
      t1.text = t1.text + 0.toString();
      t2.text = t2.text + 0.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(50),
        child: Center(
          child: Column(children: <Widget>[
            Text("$result"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: Toplama,
                  child: Text("+"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Cikarma,
                  child: Text("-"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Carpma,
                  child: Text("*"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Bolme,
                  child: Text("/"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: Nine,
                  child: Text("9"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Eight,
                  child: Text("8"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Seven,
                  child: Text("7"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Six,
                  child: Text("6"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: Five,
                  child: Text("5"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Four,
                  child: Text("4"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Three,
                  child: Text("3"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Two,
                  child: Text("2"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: One,
                  child: Text("1"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Zero,
                  child: Text("0"),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: Reset,
                  child: Text("C"),
                ),
              ],
            ),
          ]),
        ));
  }
}
