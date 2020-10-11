import 'package:flutter/material.dart' show Color;
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'model/category.dart';

part 'course_controller.g.dart';

@Injectable()
class CourseController = _CourseControllerBase with _$CourseController;

abstract class _CourseControllerBase with Store {
  @observable
  String avatar = "https://f.i.uol.com.br/fotografia/2019/12/16/15765188985df7c4f298688_1576518898_3x2_md.jpg";

  @observable
  List<Courses> courses = [
    Courses(
      title: "Conhecimento de Mercado",
      subtitle: "Nessa trilha você vai aprender a fazer análises, criar planos de negócios, e conhecer as ferramentas essenciais para o sucesso de qualquer empreendimento.",
      slug: "empreendedorismo",
      colour: Color(0xFF8568ff),
      modules: 5,
      lessons: [
        Lesson(
          title: "Introdução",
          subtitle: "Introdução sobre conhecimento de mercado",
          duration: "1:24 min",
          video: "https://youtu.be/W7Suz32G88U",
          completed: true,
        ),
        Lesson(
          title: "Plano estratégico - Análise estratégica",
          subtitle:
              "Assim como a análise de cenários, a análise estratégica vai lhe dar elementos muito importantes para a elaboração do seu plano de negócios. Abrenda nessa aula como executá-la de forma correta.",
          duration: "1:03 min",
          video: "https://youtu.be/_7XZgw7Rwr8",
          completed: false,
        ),
        Lesson(
          title: "Como identificar oportunidades",
          subtitle: "Nessa aula você aprender como identificar oportunidades de mercado e mensurar a viabilidade do negócio",
          duration: "10:28 min",
          video: "https://youtu.be/UPX43X1AX6o",
          completed: false,
        ),
        Lesson(
          title: "Iniciando o plano de negócios",
          duration: "01:24 min",
          subtitle: "",
          video: "https://www.youtube.com/watch?v=W7Suz32G88U",
          completed: false,
        ),
      ],
    ),
    Courses(
      title: "Gestão Financeira",
      subtitle: "Nessa trilha você irá aprender como fazer a gestão financeira de seu negócio de forma correta e poderá usar esse conhecimento para melhorar a saúde finaceira do seu negócio.",
      slug: "gestao_financeira",
      colour: Color(0xFFff8383),
      modules: 10,
      lessons: [
        Lesson(
          title: "Como Definir os Custos",
          subtitle: "",
          duration: "2:34 min",
          video: "https://youtu.be/M47WmUFOiq4",
          completed: true,
        ),
        Lesson(
          title: "Como organizar suas finanças",
          subtitle: "",
          duration: "1:19:24 min",
          video: "https://youtu.be/g4bK6aZF8ps",
          completed: true,
        ),
        Lesson(
          title: "Gestão do capital de giro",
          subtitle: "",
          duration: "3:52 min",
          video: "https://youtu.be/4KxUJKoiqv0",
          completed: true,
        ),
        Lesson(
          title: "Linhas de crédito e Gestão",
          subtitle: "",
          duration: "3:52 min",
          video: "https://youtu.be/1zzVkVj7ry0",
          completed: true,
        ),
        Lesson(
          title: "Planejamento Financeiro",
          subtitle: "Nessa aula você vai aprender a fazer um planejamento finaceiro adequado para o seu negócio para evitar problemas e ter uma ótima saude financeira",
          duration: "4:50 min",
          video: "https://youtu.be/T6GZdqpuEpE",
          completed: true,
        ),
      ],
    ),
    Courses(
      title: "Gestão Operacional",
      subtitle:
          "Gestão operacional é uma atividades chave de qualquer empreendimento, pois é através dela que temos o controle de todos as operações desenvolvidas no negócio. Vamos aprender nessa trilha como construir uma gestão operacional sólida para o seu negócio..",
      slug: "gestao_operacional",
      colour: Color(0xFF3FDFAE),
      modules: 10,
      lessons: [
        Lesson(
          title: "Plano Operacional",
          subtitle: "Nessa aula você vai aprender como montar um plano operacional ideal para o seu negócio",
          duration: "1:43 min",
          video: "https://youtu.be/zL4OmN8m5X8",
          completed: true,
        ),
        Lesson(
          title: "Análise de mercado",
          subtitle:
              "A análise de mercado é um dos elementos essenciais para a elaboração de um plano de negócio, pois é ela que vai lhe fornecer elementos nececessaŕio para descobrir a viabilidade de seu negócio ou de um projeto novo, caso seu negócio ká esteja em andamento. Aprenda nessa aula como utilizar essa importante ferramenta a seu favor.",
          duration: "1:43 min",
          video: "https://youtu.be/yUJw1DmFQJY",
          completed: true,
        ),
        Lesson(
          title: "Plano estratégico - Análise de Cenários",
          subtitle:
              "Dentro do plano estratégio a análise de Cenários é uma das partes mais importantes para um bom plano de negócio. Nessa aula você aprenderá como executar uma análise de cenários eficiente.",
          duration: "1:43 min",
          video: "https://youtu.be/yUJw1DmFQJY",
          completed: true,
        ),
      ],
    ),
    Courses(
      title: "Gestão de Marketing",
      subtitle:
          "Gestão de marketing é é um fator crucial para o sucesso de qualquer empreendimento, pois é através dela que podemos alcançar os resultados desejados. Você aprenderá nessa trilha a criar e gerir campanhas de marketing para alavancar seus negócios.",
      slug: "gestao_marketing",
      colour: Color(0xFFeec35e),
      modules: 15,
      lessons: [
        Lesson(
          title: "Redes Sociais 1",
          subtitle: "",
          duration: "03:17 min",
          video: "https://youtu.be/VcEPt-DGs_8",
          completed: true,
        ),
        Lesson(
          title: "Redes Sociais 2 lives",
          subtitle: "",
          duration: "02:52 min",
          video: "https://youtu.be/Fh_3pwqXqzg",
          completed: true,
        ),
        Lesson(
          title: "Plano de Marketing",
          subtitle: "Nessa aula você aprender como gerenciar uma camapnha de Marketing e como isso vai ser importante para alavancar o seu negócio",
          duration: "01:36 min",
          video: "https://youtu.be/JDIiCGJ8j0I",
          completed: true,
        ),
      ],
    ),
  ];
}
