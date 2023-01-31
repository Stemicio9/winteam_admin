import 'package:flutter/material.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/model/skill_entity.dart';
import 'package:winteam_admin/model/user_entity.dart';
import 'package:winteam_admin/utils/size_utils.dart';
import 'package:winteam_admin/utils/style_utils.dart';
import 'package:winteam_admin/widgets/texts.dart';

class WorkersTable extends StatelessWidget {
  List<String> headerTitle = [
    'ID',
    'NOME',
    'COGNOME',
    'TELEFONO',
    'EMAIL',
    'LUOGO',
    'SKILLS',
    ''
  ];

  List<UserEntity> workers = [
    UserEntity(
        id: '1',
        firstName: 'Simone',
        lastName: 'Bria',
        phoneNumber: '+393407448935',
        email: 'machesupertagliodicapellicheho@gmail.com',
        city: 'San Pietro in Guarano (CS)',
        skillList: [
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
          SkillEntity(imageLink: 'assets/images/people_icon.png'),

        ]),
    UserEntity(
        id: '2',
        firstName: 'Simone',
        lastName: 'Cognomelungopervedereilpadding',
        phoneNumber: '+391234567890',
        email: 'capellone@gmail.com',
        city: 'Rende',
        skillList: [
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
        ]),
    UserEntity(
        id: '3',
        firstName: 'Simone',
        lastName: 'Bria',
        phoneNumber: '+39123456780',
        email: 'capellone@gmail.com',
        city: 'Rende',
        skillList: [
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
          SkillEntity(imageLink: 'assets/images/people_icon.png'),
        ]),
  ];

  final edit;
  final delete;

  WorkersTable({required this.delete, required this.edit});

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
    for (var i = 0; i < workers.length; i++) {
      var p = workers[i];
      res.add(composeSingleRow(p));
    }
    return res;
  }

  List<Widget> transformList(List<SkillEntity> skillList) {
    return skillList
        .map((e) => Padding(
              padding: getPadding(right: 1),
              child: Image.asset(
                e.imageLink!,
                height: 15,
                width: 15,
              ),
            ))
        .toList();
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
          p.firstName,
          style: SafeGoogleFont('Montserrat',
              color: black, fontSize: 12, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          p.lastName,
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
        DataCell(Row(children: transformList(p.skillList))),
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
