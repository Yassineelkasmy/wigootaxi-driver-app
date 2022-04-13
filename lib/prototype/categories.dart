import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wigootaxidriver/domain/category/category.dart';
import '../presentation/routes/router.gr.dart';

final categories = [
  Category(icon: 'car', name: 'Voiture', color: Colors.brown.shade200),
  Category(icon: 'card', name: 'Crédit', color: Colors.purple),
  Category(
    icon: 'wheel',
    name: 'Pilotes',
    color: Colors.redAccent,
  ),
  Category(
    icon: 'bookmark',
    name: 'Mes lieux',
    color: Colors.blueAccent,
  ),
  Category(
    icon: 'history',
    name: 'Historique',
    color: Colors.yellow,
  ),
];
