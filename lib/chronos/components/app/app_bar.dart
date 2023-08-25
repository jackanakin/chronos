import 'package:chronos/_cmn/components/images/box_fit_image.dart';
import 'package:flutter/material.dart';

final customAppBar = AppBar(
    backgroundColor: const Color(0xFFebe6e7),
    titleSpacing: 0,
    toolbarHeight: 140,
    // toolbarHeight: 50,
    title: const BoxFitImage(path: 'images/home.png', fit: BoxFit.cover));
