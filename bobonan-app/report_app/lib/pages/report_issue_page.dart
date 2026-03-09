import 'package:flutter/material.dart';

class ReportIssuePage extends StatefulWidget {
  const ReportIssuePage({super.key});

  @override
  State<ReportIssuePage> createState() => _ReportIssuePageState();
}

class _ReportIssuePageState extends State<ReportIssuePage> {

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  String category = "Road Damage";

  void submitReport() {

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Report Submitted")),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Report Issue"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Issue Title",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            DropdownButton<String>(
              value: category,
              isExpanded: true,
              items: [
                "Road Damage",
                "Streetlight",
                "Garbage",
                "Flooding",
                "Safety",
                "Others"
              ].map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  category = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: submitReport,
                child: const Text("Submit Report"),
              ),
            )

          ],
        ),
      ),
    );
  }
}