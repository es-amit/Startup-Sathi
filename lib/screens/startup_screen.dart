import 'package:flutter/material.dart';
import 'package:startup_sathi/data/startup_data.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startups'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const [
            DataColumn(
              label: Text(
                'Name',
              ),
            ),
            DataColumn(
              label: Text(
                'Stage',
              ),
            ),
            DataColumn(
              label: Text(
                'Sector',
              ),
            )
          ],
          rows: startups.map((startup) {
            return DataRow(
              cells: [
                DataCell(Text(startup.startUpName)),
                DataCell(
                  Text(
                    startup.stage,
                  ),
                  // DropdownButton<String>(
                  //   items: coFounder.education.map((String college) {
                  //     return DropdownMenuItem<String>(
                  //       value: college,
                  //       child: Text(college),
                  //     );
                  //   }).toList(),
                  //   onChanged: (String? newValue) {
                  //     log(newValue.toString());
                  //   },
                  // ),
                ),
                DataCell(
                  Text(
                    startup.sector,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
