import 'package:cashbook/res/Components/homepage/home_expenses_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book {
  final String title;
  final String subtitle;
  final double cash;

  const Book({required this.title, required this.subtitle, required this.cash});
}

const allbook = [
  Book(
    title: "Home Expanse",
    subtitle: "updated just now",
    cash: 406.50
  ),

  Book(
    title: "Day Book",
      subtitle: "created on Jul 01 2025",
      cash: 0
  ),

  Book(
    title: "Client Record",
      subtitle: "updated on Jun 30 2025",
      cash: 1000
  )
];

class MainPageState extends StatefulWidget {
  const MainPageState({super.key});

  @override
  State<MainPageState> createState() => _MainPageStateState();
}

class _MainPageStateState extends State<MainPageState> {
  final controller = TextEditingController();
  List<Book> books = allbook;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Column(
      children: <Widget>[

    Padding(
    padding: const EdgeInsets.only(top: 25),
    child:Card(
    elevation: 1,
    shape: RoundedRectangleBorder(),
    color: Colors.white,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    IconButton(
    icon: Icon(
    Icons.arrow_back,
    color: Colors.black.withOpacity(0.7),
    ),
    onPressed: () {
    Navigator.of(context).pop();
    },
    ),
SizedBox(width: width*0.1,),
    //  SizedBox(width: width * 0.04),
    Expanded(
    child: TextField(
    cursorHeight: 22,
    cursorColor: Colors.green.shade800,
    decoration: InputDecoration(
    hintText: "Search by book name",
    border: InputBorder.none,
    hintStyle: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.5)),
    ),
      onChanged: SearchBook,
    ),
    ),

    ],
    )
    ),
    ),


        
        
        Expanded(
          child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
             final book = books[index];
              return booklist(book: book, width: width, height: height);

            },
          ),
        ),
      ],
    );
  }

  void SearchBook(String query) {
    final suggestions =
        allbook.where((book) {
          final booktitle = book.title.toLowerCase();
          final input = query.toLowerCase();

          return booktitle.contains(input);
        }).toList();
    setState(() {
      books = suggestions;
    });
  }
}

class booklist extends StatelessWidget {
  const booklist({
    super.key,
    required this.book,
    required this.width,
    required this.height,
  });

  final Book book;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Expanded(child: Text(book.title, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700, letterSpacing: 0.06, color: Colors.black.withOpacity(0.7)))),
      leading:
      Expanded(
        child: Container(
          width: width*0.09/1.1,
          height: height*0.04/1.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.indigo.withOpacity(0.3)
          ),
          child: Center(child: Icon(Icons.book,color: Colors.indigo,),),
        ),
      ),
      subtitle: Expanded(child: Text(book.subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.06,color: Colors.black.withOpacity(0.3)),)),
      trailing: Expanded(
        child: Container(
          width: width*0.3,
        // color: Colors.blue,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text(book.cash.toString(),style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900,fontSize: 13.5),),

                PopupMenuButton(itemBuilder: (BuildContext context)=>[
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Rename'),
                      ) ),
                  PopupMenuItem(
                    child:ListTile(
                      leading: Icon(Icons.copy),
                      title: Text('Duplicate Book'),
                    ),
                  ),
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.group_add),
                        title: Text('Add Members'),
                      ) ),
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.redo, color: Colors.red),
                        title: Text('Move Book'),
                      ) ),
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.delete, color: Colors.red),
                        title: Text('Delete Book'),
                      ) ),
                ]),
              ],
            ),
          ),
        ),
      ),
        onTap:
             () => Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => HomeExpenseScreen(title: book.title),
              ),
    ),
                  );
  }
}
