import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class UtilsServices {
  // Formata R$ Valor
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.compactSimpleCurrency(
      locale: 'pt-BR',
    );
    return numberFormat.format(price);
  }

  // Formata Data e horas
  String formatDateTime(DateTime dateTime) {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();
    return dateFormat.format(dateTime);
  }

  void showToast({
    required String message,
    bool isError = false,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      // se isError for true a cor é vermelha se false cor é branca
      backgroundColor: isError ? Colors.red : Colors.white,
      // se isError for true a cor do text é branca se false cor do texto é preto
      textColor: isError ? Colors.white : Colors.black,
      fontSize: 14,
    );
  }
}
