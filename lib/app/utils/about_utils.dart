import 'package:flutter/material.dart';

class AboutUtils {
  final String name;
  final double percent;
  final String percentText;
  final Color color;

  AboutUtils({
    required this.name,
    required this.percent,
    required this.percentText,
    required this.color,
  });
}

List<AboutUtils> aboutUtils = [
  AboutUtils(
    name: 'Graphic Design',
    percent: 0.75,
    percentText: "75 %",
    color: const Color(0xFFFCA61F),
  ),
  AboutUtils(
    name: 'Web Designing',
    percent: 0.95,
    percentText: "95 %",
    color: const Color(0xFF6F34FE),
  ),
  AboutUtils(
    name: 'Branding Design',
    percent: 0.85,
    percentText: "85 %",
    color: const Color(0xFF56CBBD),
  ),
  AboutUtils(
    name: 'Web Development',
    percent: 0.8,
    percentText: "80 %",
    color: const Color(0xFF3F396D),
  ),
];
