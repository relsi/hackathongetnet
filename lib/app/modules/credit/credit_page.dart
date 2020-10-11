import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'credit_controller.dart';

class CreditPage extends StatefulWidget {
  final String title;
  const CreditPage({Key key, this.title = "Credit"}) : super(key: key);

  @override
  _CreditPageState createState() => _CreditPageState();
}

class _CreditPageState extends ModularState<CreditPage, CreditController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15.0),
                Text(
                  "Linhas de Crédito",
                  style:
                      textTheme.headline5.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Veja as linhas de crédito que temos disponíveis para o seu empreendimento.",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Card(
                  color: Colors.red,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 8.0),
                      const ListTile(
                        leading: Icon(Icons.person_add),
                        title: Text(
                          'PlayCred',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            'Linha de crédito ideal para quem precisa de um aporte para compra de insumos e outros gasto de valores até R\$ 1000,00'),
                      ),
                      SizedBox(height: 15.0),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.end,
//                        children: <Widget>[
//                          TextButton(
//                            child: const Text(
//                              'Saiba mais',
//                              style: TextStyle(
//                                color: Colors.white,
//                              ),
//                            ),
//                            onPressed: () {/* ... */},
//                          ),
//                          const SizedBox(width: 8),
//                        ],
//                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                Card(
                  color: Colors.redAccent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 8.0),
                      const ListTile(
                        leading: Icon(Icons.https),
                        title: Text(
                          'Crédito Investimento Fixo',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            'Essa é uma linha de crédito pra você que deseja expandir ou modernizar o seu negócio'),
                      ),
                      SizedBox(height: 15.0),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                Card(
                  color: Colors.redAccent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 8.0),
                      const ListTile(
                        leading: Icon(Icons.update),
                        title: Text(
                          'Crédito Para Capital de Giro',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            'Ideal para para auxiliar nas suas obrigações de curto prazo'),
                      ),
                      SizedBox(height: 15.0),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                Card(
                  color: Colors.redAccent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 8.0),
                      const ListTile(
                        leading: Icon(Icons.home),
                        title: Text(
                          'Home Equity',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            'Linha de crédito para quem precisa de valores mais elevados e tem imóvel para dar como garantia'),
                      ),
                      SizedBox(height: 15.0),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
