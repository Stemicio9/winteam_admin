import 'package:flutter/material.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/model/user_entity.dart';
import 'package:winteam_admin/utils/size_utils.dart';
import 'package:winteam_admin/utils/style_utils.dart';
import 'package:winteam_admin/widgets/texts.dart';

class EmployersTable extends StatelessWidget {
  List<String> headerTitle = [
    'ID',
    'NOME',
    'TELEFONO',
    'EMAIL',
    'LUOGO',
    'PIANO',
    ''
  ];

  List<UserEntity> employers = [
    UserEntity(
      id: '1',
      companyName: 'Simone Srl',
      phoneNumber: '+391234567890',
      email: 'capellone@gmail.com',
      city: 'Rende (CS)',
      subscriptionId: 'Pro',
    ),
    UserEntity(
      id: '2',
      companyName: 'Super capellone Srl',
      phoneNumber: '+391234567890',
      email: 'machesupertagliodicapellicheho@gmail.com',
      city: 'San Pietro in Guarano (CS)',
      subscriptionId: 'Base',
    ),
    UserEntity(
      id: '3',
      companyName: 'TwentyFave',
      phoneNumber: '+391234567890',
      email: 'capellone@gmail.com',
      city: 'Casali del Manco (CS)',
      subscriptionId: 'Avanzato',
    ),
  ];

  final edit;
  final delete;

  EmployersTable({required this.delete, required this.edit});

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
    for (var i = 0; i < employers.length; i++) {
      var p = employers[i];
      res.add(composeSingleRow(p));
    }
    return res;
  }

  DataRow composeSingleRow(dynamic p) {
    return DataRow(
      cells: <DataCell>[
        DataCell(Text(
          p.id,
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p.companyName,
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p.phoneNumber,
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p.email,
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p.city,
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p.subscriptionId,
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
