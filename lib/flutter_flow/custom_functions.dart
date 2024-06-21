import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String fncExtenso(double valor) {
  if (valor > 999999999.99) {
    return "Valor excede o limite";
  }

  List<String> strUnid = [
    "",
    "um",
    "dois",
    "três",
    "quatro",
    "cinco",
    "seis",
    "sete",
    "oito",
    "nove",
    "dez",
    "onze",
    "doze",
    "treze",
    "quatorze",
    "quinze",
    "dezesseis",
    "dezessete",
    "dezoito",
    "dezenove"
  ];
  List<String> strDezena = [
    "",
    "dez",
    "vinte",
    "trinta",
    "quarenta",
    "cinquenta",
    "sessenta",
    "setenta",
    "oitenta",
    "noventa"
  ];
  List<String> strCentena = [
    "",
    "cento",
    "duzentos",
    "trezentos",
    "quatrocentos",
    "quinhentos",
    "seiscentos",
    "setecentos",
    "oitocentos",
    "novecentos"
  ];

  // Dividindo a parte inteira e os centavos
  int parteInteira = valor.floor();
  int centavos = ((valor - parteInteira) * 100).round();

  // Convertendo a parte inteira para string e preenchendo à esquerda
  String strValor = parteInteira.toString().padLeft(9, '0') +
      centavos.toString().padLeft(2, '0');
  List<String> strGrupo = [
    strValor.substring(0, 3), // Milhão
    strValor.substring(3, 6), // Milhar
    strValor.substring(6, 9), // Centena
    strValor.substring(9, 11) // Centavos
  ];

  List<String> strTexto = List.filled(4, "");

  for (int i = 0; i < 3; i++) {
    String strParte = strGrupo[i];
    if (int.parse(strParte) > 0) {
      int centenas = int.parse(strParte[0]);
      int dezenas = int.parse(strParte.substring(1, 3));
      if (centenas > 0) {
        strTexto[i] += (centenas == 1 && dezenas == 0)
            ? "cem "
            : "${strCentena[centenas]} ";
      }
      if (dezenas > 0) {
        if (dezenas < 20) {
          strTexto[i] += strUnid[dezenas];
        } else {
          strTexto[i] += strDezena[int.parse(strParte[1])];
          if (strParte[2] != '0') {
            strTexto[i] += " e ${strUnid[int.parse(strParte[2])]}";
          }
        }
      }
    }
  }

  String strFinal = "";

  if (int.parse(strGrupo[0]) > 0) {
    strFinal += strTexto[0] +
        ((int.parse(strGrupo[0]) > 1) ? " milhões" : " milhão") +
        " ";
  }

  if (int.parse(strGrupo[1]) > 0) {
    strFinal += strTexto[1] + " mil ";
  }

  if (int.parse(strGrupo[2]) > 0) {
    strFinal += strTexto[2];
    strFinal += (int.parse(strGrupo[0] + strGrupo[1]) > 0) ? " e " : "";
    strFinal += " reais";
  } else {
    if (int.parse(strGrupo[0] + strGrupo[1]) > 0) {
      strFinal += " reais";
    } else {
      strFinal = "zero reais";
    }
  }

  if (centavos > 0) {
    if (int.parse(strGrupo[0] + strGrupo[1] + strGrupo[2]) > 0) {
      strFinal += " e ";
    }
    if (centavos < 20) {
      strFinal +=
          strUnid[centavos] + ((centavos > 1) ? " centavos" : " centavo");
    } else {
      strFinal += strDezena[centavos ~/ 10];
      if (centavos % 10 != 0) {
        strFinal += " e ${strUnid[centavos % 10]}";
      }
      strFinal += " centavos";
    }
  }

  return strFinal.trim();
}

String? toUpperCase(String inputString) {
  if (inputString == null) {
    return '';
  }
  return inputString.toUpperCase();
}

String? toLowerCase(String inputString) {
  if (inputString == null) {
    return '';
  }
  return inputString.toLowerCase();
}

String? capitalizeFirstLetter(String inputString) {
  if (inputString == null || inputString.isEmpty) {
    return '';
  }
  return inputString[0].toUpperCase() + inputString.substring(1).toLowerCase();
}

String? capitalizeEachWord(String inputString) {
  if (inputString == null || inputString.isEmpty) {
    return '';
  }

  return inputString.split(' ').map((word) {
    if (word.isEmpty) {
      return word;
    }
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join(' ');
}

String? formatToCurrencyBRL(String inputString) {
  if (inputString == null || inputString.isEmpty) {
    return '';
  }

// Remove todos os caracteres não numéricos
  String numericString = inputString.replaceAll(RegExp(r'\D'), '');

// Se a string numérica estiver vazia, retorne R$ 0,00
  if (numericString.isEmpty) {
    return 'R\$ 0,00';
  }

// Converte a string numérica para um número inteiro
  int value = int.parse(numericString);

// Formata como moeda brasileira
  String formattedValue =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(value / 100);

  return formattedValue;
}

double? currencyBRLToDouble(String? currencyString) {
  if (currencyString == null || currencyString.isEmpty) {
    return 0.0;
  }

  // Remove o símbolo de moeda e os espaços
  String cleanedString = currencyString.replaceAll(RegExp(r'[R$\s]'), '');

  // Substitui o ponto decimal por um marcador temporário
  cleanedString = cleanedString.replaceAll('.', '');

  // Substitui a vírgula decimal por um ponto
  cleanedString = cleanedString.replaceAll(',', '.');

  // Converte a string para double
  double value = double.parse(cleanedString);

  return value;
}
