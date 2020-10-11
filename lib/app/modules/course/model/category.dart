import 'package:flutter/material.dart';

class Courses {
  final String title;
  final String subtitle;
  final String slug;
  final Color colour;
  final int modules;
  final List<Lesson> lessons;
  Courses({
    this.title,
    this.subtitle,
    this.slug,
    this.colour,
    this.modules,
    this.lessons,
  });
}

class Lesson {
  final String title;
  final String subtitle;
  final String duration;
  final String video;
  final bool completed;
  Lesson({
    this.title,
    this.subtitle,
    this.duration,
    this.video,
    this.completed,
  });
}
