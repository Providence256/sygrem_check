import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final dateFormatProvider = Provider.family<String, String>((ref, date) {
  final dateTime = DateTime.parse(date);
  return DateFormat.yMMMEd('fr_FR').format(dateTime);
});
