import 'package:flutter/material.dart';

class ClientRecordFilterPage extends StatefulWidget {
  @override
  _ClientRecordFilterPageState createState() => _ClientRecordFilterPageState();
}

class _ClientRecordFilterPageState extends State<ClientRecordFilterPage> {
  String selectedDate = "All Time";
  String selectedEntryType = "All";

  void showDateFilter() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => buildBottomSheet(
        title: "Select Date",
        options: [
          "All Time",
          "Today",
          "Yesterday",
          "This Month",
          "Last Month",
          "Single Day",
          "Date Range",
        ],
        selected: selectedDate,
        onSelected: (value) => setState(() => selectedDate = value),
      ),
    );
  }

  void showEntryTypeFilter() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => buildBottomSheet(
        title: "Entry Type",
        options: ["All", "Cash In", "Cash Out"],
        selected: selectedEntryType,
        onSelected: (value) => setState(() => selectedEntryType = value),
      ),
    );
  }

  Widget buildBottomSheet({
    required String title,
    required List<String> options,
    required String selected,
    required Function(String) onSelected,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 16),
          ...options.map((option) => RadioListTile<String>(
            title: Text(option),
            value: option,
            groupValue: selected,
            onChanged: (val) => setState(() {
              onSelected(val!);
              Navigator.pop(context);
            }),
          )),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  icon: Icon(Icons.clear),
                  label: Text("Clear"),
                  onPressed: () {
                    onSelected(options.first);
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                // icon: Icon(Icons.check),
                  label: Text("Apply"),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Client Record",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
          Text("Client Record",style: TextStyle(fontSize: 10),),
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.calendar_today),
                  label: Text(selectedDate),
                  onPressed: showDateFilter,
                ),
                SizedBox(width: 12),
                ElevatedButton.icon(
                  icon: Icon(Icons.swap_horiz),
                  label: Text(selectedEntryType),
                  onPressed: showEntryTypeFilter,
                ),
              ],
            ),
            // TODO: Add filter logic for record list below
          ],
        ),
      ),
    );
  }
}