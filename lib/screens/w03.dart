import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
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
                        children: [
                          const Icon(Icons.date_range_outlined),
                          const Text("Tanggal Mulai"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: TextField(
                          controller: _tglMulaiCtr,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "20-03-2022",
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
                        children: [
                          const Icon(Icons.date_range_outlined),
                          const Text("Tanggal Selesai"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: TextField(
                          controller: _tglSelesaiCtr,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "20-03-2023",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    minimumSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)
                    )
                  ),
                  child: const Text("Batal"),),
                const SizedBox(width: 40,),
                ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     backgroundColor: const Color.fromARGB(255, 143, 0, 209),
                    minimumSize: Size(200, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)
                    )
                  ),
                  child: const Text("Simpan", style: TextStyle(color: Colors.white),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
