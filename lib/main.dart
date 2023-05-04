import 'package:flutter/material.dart';
import 'package:nmber_trivia_app/features/presentation/pages/number_trivia_page.dart';

//import 'features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        accentColor: Colors.green.shade600,
      ),
      home: NumberTriviaPage(),
    );
  }
}

// import 'dart:convert' as convert;
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// void main() => runApp(const MaterialApp(
//       home: NumberScreen(),
//     ));
//
// class NumberScreen extends StatefulWidget {
//   const NumberScreen({Key? key}) : super(key: key);
//
//   @override
//   State<NumberScreen> createState() => _NumberScreenState();
// }
//
// class _NumberScreenState extends State<NumberScreen> {
//   TextEditingController numberController = TextEditingController();
//   String get = "";
//   //Uri url = 'http://numbersapi.com/';
//
//   Future<void> getNumber(numberCo) async {
//     if (numberController.text.isEmpty) {
//       print("required");
//     } else {
//       var res = Uri.http('numbersapi.com', '/${numberController.text}');
//       var response = await http.get(res);
//       if (response.statusCode == 200) {
//         var jsonResponse =
//             convert.jsonDecode(response.body) as Map<String, dynamic>;
//         //var num = jsonResponse['totalItems'];
//         //Welcome(text: text,  number: number)
//         var text = jsonResponse['text'];
//         get = await text;
//         if (kDebugMode) {
//           print(text);
//         }
//       } else {
//         print(response.statusCode);
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Number Trivia"),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               SizedBox(height: 100, child: Text(get)),
//               SizedBox(height: 30),
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: TextField(
//                   decoration: InputDecoration(
//                       // border:
//                       ),
//                   keyboardType: TextInputType.number,
//                   controller: numberController,
//                 ),
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                       width: 100,
//                       height: 50,
//                       child: RawMaterialButton(
//                           onPressed: () async {
//                             // setState(() {
//                             //   get = numberController.text;
//                             // });
//                             getNumber(40);
//                           },
//                           child: Text("Search"))),
//                   SizedBox(
//                       width: 100,
//                       height: 50,
//                       child: RawMaterialButton(
//                           onPressed: () {}, child: Text("Random"))),
//                 ],
//               ),
//             ],
//           ),
//         ));
//   }
// }
