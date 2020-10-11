import 'dart:wasm';

import 'package:flutter/material.dart';

class Category {
  final String name;
  final String slug;
  final String subtitle;

  final Color colour;
  final int numOfCourses;

  Category(this.name, this.slug, this.subtitle, this.colour, this.numOfCourses);
}

List<Category> categories = categoriesData
    .map((item) => Category(
          item['name'],
          item['slug'],
          item['subtitle'],
          item['colour'],
          item['courses'],
        ))
    .toList();

var categoriesData = [
  {
    "name": "Conhecimento de Mercado",
    'slug': "empreendedorismo",
    'subtitle': "Nessa trilha você vai aprender a fazer análises, criar planos de negócios, e conhecer as ferramentas essenciais para o sucesso de qualquer empreendimento.",
    'colour': Color(0xFFbed1f7),
    'courses': 05,
  },
  {
    "name": "Gestão Financeira",
    'slug': "gestao_financeira",
    'subtitle': "Nessa trilha você irá aprender como fazer a gestão financeira de seu negócio de forma correta e poderá usar esse conhecimento para melhorar a saúde finaceira do seu negócio.",
    'colour': Color(0xFFe7c0c0),
    'courses': 10,
  },
  {
    "name": "Gestão Operacional",
    'slug': "gestao_operacional",
    'subtitle':
        "Gestão operacional é uma atividades chave de qualquer empreendimento, pois é através dela que temos o controle de todos as operações desenvolvidas no negócio. Vamos aprender nessa trilha como construir uma gestão operacional sólida para o seu negócio..",
    'colour': Color(0xFFc1e2aa),
    'courses': 10,
  },
  {
    "name": "Gestão de Marketing",
    'slug': "gestao_marketing",
    'subtitle':
        "Gestão de marketing é é um fator crucial para o sucesso de qualquer empreendimento, pois é através dela que podemos alcançar os resultados desejados. Você aprenderá nessa trilha a criar e gerir campanhas de marketing para alavancar seus negócios.",
    'colour': Color(0xFFf2d899),
    'courses': 15,
  }
];

//'image': "assets/images/gestao_marketing.png",
