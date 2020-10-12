import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:play_cred/app/modules/credit/widgets/custom_card.dart';
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Linhas de Crédito",
                  style: textTheme.headline5.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Veja as linhas de crédito que temos disponíveis para o seu empreendimento.",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                    height: 1.4,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    CustomCard(
                      title: "PlayCred",
                      icon: Icons.person_add,
                      color: Color(0xFF5856D6),
                      description: 'Linha de crédito ideal para quem precisa de um aporte para compra de insumos e outros gasto de valores até R\$ 1000,00',
                    ),
                    CustomCard(
                      press: () {},
                      title: "Crédito Investimento Fixo",
                      icon: Icons.https,
                      color: Color(0xFFFF2D55),
                      description: "Essa é uma linha de crédito pra você que deseja expandir ou modernizar o seu negócio",
                    ),
                    CustomCard(
                      press: () {},
                      title: "Crédito Para Capital de Giro",
                      icon: Icons.update,
                      color: Color(0xFF50E3C2),
                      description: "Ideal para para auxiliar nas suas obrigações de curto prazo",
                    ),
                    CustomCard(
                      press: () {},
                      title: "Home Equity",
                      icon: Icons.home,
                      color: Color(0xFFFF8C00),
                      description: "Linha de crédito para quem precisa de valores mais elevados e tem imóvel para dar como garantia",
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
