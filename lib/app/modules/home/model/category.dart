class Category {
  final String name;
  final int numOfCourses;
  final String image;
  final String page;

  Category(this.name, this.numOfCourses, this.image, this.page);
}

List<Category> categories = categoriesData
    .map((item) =>
        Category(item['name'], item['courses'], item['image'], item['page']))
    .toList();

var categoriesData = [
  {
    "name": "Conhecimento de Mercado",
    'courses': 05,
    'image': "assets/images/empreendedorismo.png",
    'page': "/market_knowledge"
  },
  {
    "name": "Gestão Financeira",
    'courses': 10,
    'image': "assets/images/gestao_financeira.png",
    'page': "/financial_management"
  },
  {
    "name": "Gestão Operacional",
    'courses': 10,
    'image': "assets/images/gestao_operacional.png",
    'page': "/operational_management"
  },
  {
    "name": "Gestão de Marketing",
    'courses': 15,
    'image': "assets/images/gestao_marketing.png",
    'page': "/marketing_management"
  },
];
