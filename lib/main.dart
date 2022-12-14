import 'package:expenses/models/transaction.dart';
import '/models/transaction.dart';
import 'package:flutter/Material.dart';

main() => runApp(const Expenses());

class Expenses extends StatelessWidget {
  const Expenses({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
        id: 't1',
        title: "Novo Tênis de Corrida",
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: "Conta de Luz", value: 211.30, date: DateTime.now())
  ];
  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Despesas Pessoais")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              //width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text("Grafico"),
                elevation: 5,
              ),
            ),
            Column(
              children: _transactions.map((tr) {
                return Card(child: Text(tr.title));
              }).toList(),
            )
          ],
        ));
  }
}
