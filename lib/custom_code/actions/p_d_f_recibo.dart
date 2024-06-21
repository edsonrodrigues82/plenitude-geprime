// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> pDFRecibo(
  String recebemosDe,
  String aImportancia,
  String referenteA,
) async {
  final pdf = pw.Document();

  // Função para criar um recibo
  pw.Widget buildRecibo() {
    return pw.Container(
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: PdfColors.black),
      ),
      padding: pw.EdgeInsets.all(16),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Center(
            child: pw.Text(
              'Recibo',
              style: pw.TextStyle(
                fontSize: 20,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
          ),
          pw.SizedBox(height: 20),
          pw.RichText(
            text: pw.TextSpan(
              text: 'Recebi(emos) de ',
              style: pw.TextStyle(fontSize: 14),
              children: [
                pw.TextSpan(
                  text: recebemosDe,
                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                ),
                pw.TextSpan(
                  text: ' a importância de ',
                ),
                pw.TextSpan(
                  text: aImportancia,
                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                ),
                pw.TextSpan(
                  text: ' referente a ',
                ),
                pw.TextSpan(
                  text: referenteA,
                  style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                ),
                pw.TextSpan(
                  text: '.',
                ),
              ],
            ),
          ),
          pw.SizedBox(height: 40),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.end,
            children: [
              pw.Expanded(
                child: pw.Container(
                  padding: pw.EdgeInsets.only(top: 10),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text('______________________________'),
                      pw.Text('Assinatura'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4.copyWith(
        marginLeft: 1.5 * PdfPageFormat.cm,
        marginRight: 1.5 * PdfPageFormat.cm,
        marginTop: 1.5 * PdfPageFormat.cm,
        marginBottom: 1.5 * PdfPageFormat.cm,
      ),
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            buildRecibo(),
            pw.SizedBox(height: 20), // Espaço equivalente a duas linhas
            buildRecibo(),
          ],
        );
      },
    ),
  );

  // Salve o PDF no dispositivo ou exiba-o conforme necessário
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
