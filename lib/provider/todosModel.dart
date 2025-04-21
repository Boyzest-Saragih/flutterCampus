import 'package:flutter/material.dart';

class Todosmodel extends ChangeNotifier {
  List<List<dynamic>> data = [["aaaaaaa","bbbb","lLls","aadda","adda"]];

  void addTodo(String?title, String?desc, String?tglMulai, String?tglSelesai, String?kategori) {
    data.add([title, desc, tglMulai, tglSelesai, kategori]);
    print(data);
    notifyListeners();
  }
}
