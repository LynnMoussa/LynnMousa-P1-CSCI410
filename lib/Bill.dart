
class Bill {
   final int currentSliderValue;
  final int taxAmount;
  final String tipAmount;
  final String totalAmount;

   Bill({
    required this.currentSliderValue,
    required this.taxAmount,
    required this.tipAmount,
    required this.totalAmount,
  });

  String get equallyDividedValue {
    try {
      var preEquallyDivided = (double.parse(totalAmount) / 100 * taxAmount) +
          double.parse(totalAmount) +
          double.parse(tipAmount);

      var equallyDivided = preEquallyDivided / currentSliderValue;

      return equallyDivided.toStringAsFixed(2);
    } catch (e) {
      return e.toString();
    }
  }
}