import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final profil = <String, String>{};

  MyApp({super.key}){
  profil["email"]='sedaprasa@gmail.com';
  profil["phone"]='+62345678910';
  profil["image"]='sedap_rasa.png';
  profil["addr"]='jl. Pringgading, Semarang, Jawa Tengah';
  profil["l_menu"]='Nasi GOreng| ''Bihun Goreng| '
      'Kwetio Goreng| ''Ayam Rica-Rica| ''Ikan Goreng Asam Manis| '
      'Sapo Tahu| ''Ayam Goreng Kecap| ''Capcay Goreng Tepung| '
      'Cumi Goreng Tepung| ''Udang Goreng Tepung| ''Ayam kuluyuk| '
      'Mie/Kuah Ayam| ''Ayam Cah Brokoli| ''Ayam Cah Jamur| '
      'Fo Yung Hai| ''Mun Tahu| ''Bistik Sapi/Ayam| ''Yamin Bakso|';
  profil["desc"]='''RM Sedap Rasa merupakan rumah makan yang menjual
  masakan cina dan temapt ini telah diminati banyak orang''';
  profil["j_buka_b"]='''Senin s/d Jumat = 18:00 s/d 22:00''';
  profil["j_buka_w"]='''Sabtu s/d Minggu = 18:00 s/d 21:00''';
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RM. Sedap Rasa",
      home: Scaffold(
        appBar: AppBar(title: Text("Profile Resto")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20) ,
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
                Image(image: AssetImage('assets/${profil["image"] ??''}')),
                SizedBox(
                  height:10,
                  ),
                Row(
                  children: [
                  btnContact(Icons.alternate_email, Colors.green[900]),
                  btnContact(Icons.phone, Colors.deepPurple),
                  btnContact(Icons.map, Colors.blueAccent),
                ],
                ),
                SizedBox(
                  height:10,
                  ),
                 teksKotak(Colors.black38, 'Deskripsi'),
                Text(
                  profil["desc"] ?? '',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height:10,
                  ),
                teksKotak(Colors.black38, 'List Menu'),
                Text(
                  profil["l_menu"] ?? '',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                  SizedBox(
                  height:10,
                  ),
                teksKotak(Colors.black38, 'Alamat'),
                Text(
                  profil["addr"] ?? '',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                  SizedBox(
                  height:10,
                  ),
                 textAttribut('Jam Buka Hari Biasa', profil["j_buka_b"] ?? ''),
                 textAttribut('Jam Buka Weekend' , profil["j_buka_w"] ?? ''),
               
            ],
          ),
        ),
      ),
    );
  }

  Container teksKotak(Color bgColor, String teks) {
    return Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(color: bgColor),
              child: Text(
                teks,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              );
  }

  Row textAttribut(String judul, String teks) {
    return Row(
                children: [
                 Container(
                  width: 100,
                  child: Text(
                    '- $judul',
                    style: TextStyle (fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                 ),
                 Text(
                  ': ',
                  style: TextStyle(fontSize: 20),
                 ),
                 Text(
                   teks,
                  style: TextStyle(fontSize: 20),
                 ),
                ],
               );
  }

  Expanded btnContact(IconData icon, var color) {
    return Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                      child: Icon(icon),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: color,
                          foregroundColor: Colors.white),
                  ),
                );
  }
}



 