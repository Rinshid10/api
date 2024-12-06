import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getone/modal/modal.dart';
import 'package:getone/services/servi.dart';

class ControllerFOrnew extends ChangeNotifier {
  Services serv = Services();
  List<DatasFromApi> getalldatas = [];
  bool isloding = false;
  Future changedatas() async {
    isloding = true;
    notifyListeners();
    try {
      List<DatasFromApi> data = await serv.change();
      getalldatas = data;
      log('Error: ');
    } catch (e) {
      log('Error: $e');
    } finally {
      isloding = false;
      notifyListeners();
    }
  }
}
