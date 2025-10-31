import 'package:intl/intl.dart';

String formatPrice(double price) {
  final String formattedNumber;

  formattedNumber = NumberFormat('#,###').format(price);
  return '$formattedNumber ج.م';
}
