import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> savePDFToStorage() async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Center(
        child: pw.Text('Saved PDF Example'),
      ),
    ),
  );

  try {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/my_report.pdf');
    await file.writeAsBytes(await pdf.save());

    print("✅ PDF saved at: ${file.path}");
  } catch (e) {
    print("❌ Error saving PDF: $e");
  }
}
