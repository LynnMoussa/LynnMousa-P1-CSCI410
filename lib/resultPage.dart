import 'package:flutter/material.dart';
import 'bill.dart';

class ResultPage extends StatelessWidget {
  final Bill billData;

  const ResultPage({
    Key? key,
    required this.billData,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade200, Colors.blue.shade400],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildResultCard(
                  title: 'Total Amount',
                  value: '${billData.totalAmount}LBP',
                  icon: Icons.attach_money,
                  color: Colors.green,
                ),
                _buildResultCard(
                  title: 'Current Friends',
                  value: billData.currentSliderValue.toString(),
                  icon: Icons.group,
                  color: Colors.orange,
                ),
                _buildResultCard(
                  title: 'Tax Percentage',
                  value: '${billData.taxAmount}%',
                  icon: Icons.calculate,
                  color: Colors.red,
                ),
                _buildResultCard(
                  title: 'Tip Amount',
                  value: '${billData.tipAmount}LBP',
                  icon: Icons.monetization_on,
                  color: Colors.purple,
                ),
                _buildResultCard(
                  title: 'Equally Divided Value',
                  value: '${billData.equallyDividedValue}LBP',
                  icon: Icons.equalizer,
                  color: Colors.blue,
                ),
                ElevatedButton(onPressed: () {
                  double valueInDollar = double.parse(
                      billData.equallyDividedValue) / 90000;
                  showDialog(context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Value in Dollar"),
                          content: Text("Value in Dollar: $valueInDollar"),
                        );
                      }
                  );
                }, child: Text("Convert To Dollar")),
              ],
              
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildResultCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 36.0,
              color: color,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class _covertToDollar{

}
