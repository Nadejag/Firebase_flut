// import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
//
// class Supabasepractice extends StatefulWidget {
//   const Supabasepractice({super.key});
//
//   @override
//   State<Supabasepractice> createState() => _SupabasepracticeState();
// }
//
// class _SupabasepracticeState extends State<Supabasepractice> {
//  final _noteStream=Supabase.instance.client.from("notes").stream(primaryKey: ["id"]);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//       ),
//       body: StreamBuilder<List<Map<String,dynamic>>>(
//           stream: _noteStream,
//           builder: (context,snapshot){
//             if(!snapshot.hasData){
//               return Center(child: CircularProgressIndicator(),);
//             }
//               final notes=snapshot.data!;
//
//             return ListView.builder(
//                 itemCount: notes.length,
//                 itemBuilder: (context,index){
//               return ListTile(
//                 title: Text(notes[index]['body']),
//               );
//             });
//           }),
//       floatingActionButton: FloatingActionButton(onPressed: (){
//         showDialog(
//             context: context,
//             builder: ((context){
//               return SimpleDialog(
//                 title: Text("Add a Note"),
//                 contentPadding: EdgeInsets.symmetric(),
//                 children: [
//                   TextFormField(
//                     onFieldSubmitted: (value)async{
//                       await Supabase.instance.client.from("notes").insert({"body":value});
//                     },
//                   )
//                 ],
//               );
//             }));
//       },
//       child: Icon(Icons.add),
//       ),
//     );
//   }
// }


