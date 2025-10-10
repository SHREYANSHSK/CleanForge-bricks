import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeState extends GetXState {
  RxBool isLoading = false.obs;
  final homeData = Rxn<HomeEntity>();


}
