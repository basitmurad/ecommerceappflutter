import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class MyAppFormatters{

  static String formatDate(DateTime? date){
    date ??  DateTime.now();
    return DateFormat('dd-MMM-yyy').format(date!);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US' , symbol:'\$').format(amount);
  }

  static String formatPhoneNumber(String number){
    if(number.length==10){
        return '(${number.substring(0,3)}) ${number.substring(3,6)} ${number.substring(6)}';
    }
    else if(number.length==11){
      return '(${number.substring(0,4)}) ${number.substring(4,7)} ${number.substring(7)}';

    }

    return number;
  }
}