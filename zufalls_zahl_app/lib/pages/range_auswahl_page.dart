import 'package:flutter/material.dart';
import 'package:rezo_coder_app/pages/generator_page.dart';
import 'package:rezo_coder_app/widgets/range_auswahl_text_widget.dart';

class RangeAuswahlPage extends StatefulWidget {
  const RangeAuswahlPage({super.key});

  @override
  State<RangeAuswahlPage> createState() => _RangeAuswahlPageState();
}

class _RangeAuswahlPageState extends State<RangeAuswahlPage> {
  TextEditingController minController = TextEditingController();
  TextEditingController maxController = TextEditingController();
  //final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Range auswählen')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeAuswahlTextWidget(
              controller: minController,
              labelText: 'Minimum',
            ),
            SizedBox(height: 20),
            RangeAuswahlTextWidget(
              controller: maxController,
              labelText: 'Maximum',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          int intMinWert = int.parse(minController.text);
          int intMaxWert = int.parse(maxController.text);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return GeneratorPage(minWert: intMinWert, maxWert: intMaxWert);
              },
            ),
          );
        },
      ),
    );
  }
}
