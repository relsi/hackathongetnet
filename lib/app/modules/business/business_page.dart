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
    final lightColor = Color(0xFF111727);
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
                Text("Meu Negócio", style: textTheme.headline5.copyWith(fontWeight: FontWeight.w600)),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFFFEC85C),
                    // image: DecorationImage(
                    //   alignment: Alignment.topRight,
                    //   image: AssetImage('assets/images/business.png'),
                    //   fit: BoxFit.contain,
                    // ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: colorScheme.onBackground,
                                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pedro Coutinho",
                                      style: textTheme.headline5.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "PREMIUM",
                                        style: TextStyle(
                                          fontSize: 10,
                                          //fontWeight: FontWeight.bold,
                                          color: Color(0xFFFEC85C),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "250",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      "Saldo",
                                      style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.6)),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "670.0",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      "Score",
                                      style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.6)),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "2.000",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      "Vendas",
                                      style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.6)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Esses são os dados do seu negócio. Clique na categoria para alterar as informações necessárias",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colorScheme.onBackground,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF8568ff),
                            ),
                            child: Icon(
                              Icons.store,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Razão Social:",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            "Pedro's Burgueria",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colorScheme.onBackground,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFff8383),
                            ),
                            child: Icon(
                              Icons.place,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Endereço",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            "Rua da República, 602",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colorScheme.onBackground,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF3acc9e),
                            ),
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Telefone",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            "(51) 1234-5678",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colorScheme.onBackground,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFeec35e),
                            ),
                            child: Icon(
                              Icons.business,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CNPJ",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            "12.345.678/0001-00",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colorScheme.onBackground,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF468B7),
                            ),
                            child: Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "E-mail:",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            "pedro@pedrosburguer.com",
                            style: textTheme.subtitle1.copyWith(
                              color: colorScheme.onPrimary.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
