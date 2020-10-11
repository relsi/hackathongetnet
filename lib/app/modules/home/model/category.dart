class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {
    "name": "Conhecimento de Mercado",
    'courses': 05,
    'image': "assets/images/empreendedorismo.png"
  },
  {
    "name": "Gestão Financeira",
    'courses': 10,
    'image': "assets/images/gestao_financeira.png"
  },
  {
    "name": "Gestão Operacional",
    'courses': 10,
    'image': "assets/images/gestao_operacional.png"
  },
  {
    "name": "Gestão de Marketing",
    'courses': 15,
    'image': "assets/images/gestao_marketing.png"
  },
];
