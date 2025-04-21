import 'package:fe_matkul/provider/todosModel.dart';
import 'package:fe_matkul/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class W03Page extends StatefulWidget {
  const W03Page({super.key});

  @override
  State<W03Page> createState() => _W03PageState();
}

class _W03PageState extends State<W03Page> {
  final TextEditingController _kegiatanCtr = TextEditingController();
  final TextEditingController _keteranganCtr = TextEditingController();
  final TextEditingController _tglMulaiCtr = TextEditingController();
  final TextEditingController _tglSelesaiCtr = TextEditingController();
  String? dropDownSelected;

  @override
  Widget build(BuildContext context) {
    final todosModel = Provider.of<Todosmodel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODOS"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.list_alt),
                const Text(
                  "Kegiatan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      controller: _kegiatanCtr,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Judul Kegiatan",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(children: [const Icon(Icons.list), const Text("Keterangan")]),
            SizedBox(width: 20),
            Container(
              margin: EdgeInsets.fromLTRB(40, 10, 20, 0),
              child: TextField(
                controller: _keteranganCtr,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 20,
                  ),

                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Keterangan",
                  hintStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.date_range_outlined),
                          const Text("Tanggal Mulai"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _tglMulaiCtr,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "${DateTime.now()}",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          const Icon(Icons.date_range_outlined),
                          const Text("Tanggal Selesai"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _tglSelesaiCtr,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "${DateTime.now()}",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.shape_line),
                DropdownButton<String>(
                  value: dropDownSelected,
                  hint: Text("pilihan"),
                  items: [
                    DropdownMenuItem<String>(
                      value: "work",
                      child: Text("Work"),
                    ),
                    DropdownMenuItem<String>(
                      value: "Free",
                      child: Text("Free"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropDownSelected = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    minimumSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text("Batal"),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {
                    todosModel.addTodo(
                      _kegiatanCtr.text,
                      _keteranganCtr.text,
                      _tglMulaiCtr.text,
                      _tglSelesaiCtr.text,
                      dropDownSelected,
                    );
                    Navigator.pop(
                      context,
                      // oldRoute: W03Page();
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: const Color.fromARGB(255, 143, 0, 209),
                    minimumSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
