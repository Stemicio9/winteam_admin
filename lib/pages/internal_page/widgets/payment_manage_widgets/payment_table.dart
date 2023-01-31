import 'package:flutter/material.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/utils/size_utils.dart';
import 'package:winteam_admin/utils/style_utils.dart';
import 'package:winteam_admin/widgets/texts.dart';

class PaymentTable extends StatelessWidget {
  List<String> headerTitle = [
    'ID',
    'NOME',
    'DATA INIZIO',
    'SCADENZA',
    'PIANO',
    'N° POST',
    'RICERCA',
    'METODO PAG.',
    ''
  ];

  List<dynamic> payments = [
    {
      'id': '1',
      'name': 'Simone capellone Corporation',
      'fromDate': '30/01/2023',
      'toDate': '30/02/2023',
      'subscription': 'Pro',
      'posts': '5',
      'search': 'Abilitata',
      'paymentMethod': 'Bonifico bancario',

    },
    {
      'id': '2',
      'name': 'Simone Srl',
      'fromDate': '30/01/2023',
      'toDate': '30/02/2023',
      'subscription': 'Avanzato',
      'posts': '3',
      'search': 'Abilitata',
      'paymentMethod': 'Carta di credito',

    },
    {
      'id': '3',
      'name': 'Simone Srl',
      'fromDate': '30/01/2023',
      'toDate': '30/02/2023',
      'subscription': 'Base',
      'posts': '4',
      'search': 'Abilitata',
      'paymentMethod': 'Carta di credito, Bonifico bancario, PayPal',

    },
  ];

  final edit;
  final delete;

  PaymentTable({required this.delete, required this.edit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 20),
      child: DataTable(
        columnSpacing: 30,
        dataRowColor: MaterialStateColor.resolveWith((states) => white),
        headingRowColor: MaterialStateColor.resolveWith((states) => background),
        border: TableBorder(
          borderRadius: BorderRadius.circular(10),
          top: BorderSide(width: 0.5, color: greyState),
          bottom: BorderSide(width: 0.5, color: greyState),
          left: BorderSide(width: 0.5, color: greyState),
          right: BorderSide(width: 0.5, color: greyState),
          verticalInside: BorderSide(width: 0.5, color: greyState),
          horizontalInside: BorderSide(width: 0.5, color: greyState),
        ),
        columns: createHeaderTable(),
        rows: createRows(),
      ),
    );
  }

  List<DataColumn> createHeaderTable() {
    List<DataColumn> res = [];
    for (var i = 0; i < headerTitle.length; i++) {
      res.add(DataColumn(
        label: Expanded(child: Texth4V2(testo: headerTitle[i], color: white)),
      ));
    }
    return res;
  }

  List<DataRow> createRows() {
    List<DataRow> res = [];
    for (var i = 0; i < payments.length; i++) {
      var p = payments[i];
      res.add(composeSingleRow(p));
    }
    return res;
  }

  DataRow composeSingleRow(dynamic p) {
    return DataRow(
      cells: <DataCell>[
        DataCell(Text(
          p['id'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p['name'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p['fromDate'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p['fromDate'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p['subscription'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p['posts'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),

        DataCell(Text(
          p['search'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),

        DataCell(Text(
          p['paymentMethod'],
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Row(
          children: [
            GestureDetector(
                onTap: edit,
                child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(
                      Icons.edit_rounded,
                      color: background,
                      size: 20,
                    ))),
            Padding(
              padding: getPadding(left: 2),
              child: GestureDetector(
                  onTap: delete,
                  child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Icon(
                        Icons.delete_rounded,
                        color: background,
                        size: 20,
                      ))),
            ),
          ],
        )),
      ],
    );
  }
}
