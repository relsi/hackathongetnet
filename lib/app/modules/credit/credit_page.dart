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
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15.0),
                Text("Linhas de Crédito",
                    style: textTheme.headline5
                        .copyWith(fontWeight: FontWeight.w600)),
                SizedBox(height: 15.0),
                Text(
                  "Veja as linhas de crédito que temos disponíveis para o seu empreendimento.",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("- Play Cred",
                    style: textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "Linha de crédito ideal para quem precisa de um aporte para compra de insumos e outros gasto de valores até R\$ 1000,00",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("- Crédito Investimento Fixo",
                    style: textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "Essa é uma linha de crédito pra você que deseja expandir ou modernizar o seu negócio",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("- Crédito Para Capital de Giro",
                    style: textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "Ideal para para auxiliar nas suas obrigações de curto prazo",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("- Home Equity",
                    style: textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "Linha de crédito para quem precisa de valores mais elevados e tem imóvel para dar como garantia",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
              ])),
    ));
  }
}
