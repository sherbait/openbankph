import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String toTitleCase(String value) {
  // transform string value separated by _ to title case
  List<String> words = value.toLowerCase().split('_');
  String capitalized = '';
  for (String word in words) {
    capitalized += word[0].toUpperCase() + word.substring(1) + ' ';
  }
  return capitalized.trim();
}

String? currencyOrPercentage(String? type) {
  // return PHP if parameter type is INTEGER else if parameter type is DOUBLE then return %
  if (type == 'INTEGER') {
    return 'PHP';
  } else if (type == 'DOUBLE') {
    return '%';
  }
  return '';
}

String currentDate() {
  // return current date in 1100-01-01T00:00:00Z format
  final now = DateTime.now().toUtc();
  final formatter = DateFormat('yyyy-MM-ddTHH:mm:ssZ');
  return formatter.format(now);
}

String toDate(String input) {
  // convert string datetime 1100-01-23T00:00:00Z to 01/23/1100 format
  DateTime dateTime = DateTime.parse(input);
  String formattedDate = DateFormat('MM/dd/yyyy').format(dateTime);
  return formattedDate;
}

String toDatetimeZ(String input) {
  // convert string 04/20/1100 to 1100-04-20T00:00:00Z format
  DateTime inputDate = DateFormat('MM/dd/yyyy').parse(input);
  String formattedDate =
      DateFormat('yyyy-MM-ddTHH:mm:ss').format(inputDate) + 'Z';

  return formattedDate;
}

int arraySize(List<String> input) {
  // count the number of elements in a string array
  return input.length;
}

bool isValidTransfer(
  String transferAmount,
  String availableAmount,
) {
  double transfer = double.parse(transferAmount);
  double available = double.parse(availableAmount);

  if (transfer <= 0) {
    return false;
  }

  if (available >= transfer) {
    return true;
  } else {
    return false;
  }
}
