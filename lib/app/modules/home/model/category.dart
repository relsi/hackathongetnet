import 'dart:wasm';

import 'package:flutter/material.dart';

class Category {
  final String name;
  final String slug;
  final Color colour;
  final int numOfCourses;
  final String page;

  Category(this.name, this.slug, this.colour, this.numOfCourses, this.page);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['slug'], item['colour'],
        item['courses'], item['page']))
    .toList();

var categoriesData = [
  {
    "name": "Conhecimento de Mercado",
    'slug': "empreendedorismo",
    'colour': Color(0xFFbed1f7),
    'courses': 05,
    'page': "/market_knowledge",
  },
  {
    "name": "Gestão Financeira",
    'slug': "gestao_financeira",
    'colour': Color(0xFFe7c0c0),
    'courses': 10,
    'page': "/financial_management"
  },
  {
    "name": "Gestão Operacional",
    'slug': "gestao_operacional",
    'colour': Color(0xFFc1e2aa),
    'courses': 10,
    'page': "/operational_management"
  },
  {
    "name": "Gestão de Marketing",
    'slug': "gestao_marketing",
    'colour': Color(0xFFf2d899),
    'courses': 15,
    'page': "/marketing_management"
  },
];

//'image': "assets/images/gestao_marketing.png",
