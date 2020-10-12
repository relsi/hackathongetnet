import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'business_controller.dart';

class BusinessPage extends StatefulWidget {
  final String title;
  const BusinessPage({Key key, this.title = "Business"}) : super(key: key);

  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends ModularState<BusinessPage, BusinessController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                Text("Seu Negócio", style: textTheme.headline5.copyWith(fontWeight: FontWeight.w600)),
                SizedBox(height: 4),
                Text(
                  "Esses são os dados do seu negócio. Clique no botão Alterar Dados para alterar as informações necessárias",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 10.0),
                Divider(
                  thickness: 1,
                  height: 10.0,
                ),
                SizedBox(height: 10.0),
                Text("Razão Social:", style: textTheme.headline6.copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "Pedro's Burgueria",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("Endereço:", style: textTheme.headline6.copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "Rua da República, 602",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("Telefone:", style: textTheme.headline6.copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "(51) 1234-5678",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("CNPJ:", style: textTheme.headline6.copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "12.345.678/0001-00",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                Text("E-mail:", style: textTheme.headline6.copyWith(fontWeight: FontWeight.w300)),
                Text(
                  "pedro@pedrosburguer.com",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 25.0),
                FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Alterar Dados",
                    style: TextStyle(fontSize: 16.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
