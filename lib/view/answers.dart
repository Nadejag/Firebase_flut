import 'package:flutter/material.dart';

class FaqDetailScreen extends StatelessWidget {
  final String question;

    FaqDetailScreen({Key? key, required this.question}) : super(key: key);
  final Map<String, String> faqAnswers = {
    "How to use CashBook App?":
    "To use CashBook App:\n1. Open the app.\n2. Create a new book.\n3. Start entering cash in/out entries.\n4. Monitor your business reports easily.",
    "How to do backdated entries?":
    "While adding a transaction, tap the date field and choose your desired past date to record a backdated entry.",
    "How to view daily or monthly data in a book?":
    "Go to the Reports section and use the filter to view daily or monthly data summaries.",
    "How to Change Mobile Number?":
    "Navigate to Settings > Profile > Change Mobile Number and follow the OTP verification process.",
    "How to setup App Lock with Fingerprint/Pin/Password?":
    "Go to Settings > App Lock and enable security using fingerprint, PIN, or password. You can choose your preferred option."
  };

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              faqAnswers[question] ?? "Answer not found.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:width*0.9 ,
                height: height*0.05/1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: Colors.black45.withOpacity(0.2)
                )
              ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: Row(
                    children: [
                      Text("Was this helpful?"),
                      Spacer(),
                      Icon(Icons.thumb_up_alt_outlined,color: Colors.green,),
                      SizedBox(width:width*0.03,),
                      Icon(Icons.thumb_down_alt_outlined,color: Colors.red,),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
