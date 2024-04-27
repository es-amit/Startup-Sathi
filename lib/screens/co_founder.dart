import 'package:flutter/material.dart';
import 'package:startup_sathi/data/co_founder_data.dart';

class CoFounderScreen extends StatelessWidget {
  const CoFounderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Co-Founders'),
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
                'Education',
              ),
            ),
            DataColumn(
              label: Text(
                'Skills',
              ),
            )
          ],
          rows: coFounders.map((coFounder) {
            return DataRow(
              cells: [
                DataCell(Text(coFounder.name)),
                DataCell(
                  Text(
                    coFounder.education.join(', '),
                  ),
                ),
                DataCell(
                  Text(
                    coFounder.skills.join(', '),
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
