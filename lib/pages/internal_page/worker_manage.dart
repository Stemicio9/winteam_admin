import 'package:flutter/material.dart';
import 'package:winteam_admin/constants/colors.dart';
import 'package:winteam_admin/pages/internal_page/widgets/employers_manage_widgets/delete_employer_dialog.dart';
import 'package:winteam_admin/pages/internal_page/widgets/employers_manage_widgets/header.dart';
import 'package:winteam_admin/pages/internal_page/widgets/workers_manage_widgets/workers_table.dart';
import 'package:winteam_admin/utils/size_utils.dart';

class WorkerManage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WorkerManageState();
  }

}


class WorkerManageState extends State<WorkerManage>{
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: getPadding(top: 60,bottom: 60,left: 5,right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              pageTitle: 'Lavoratori',
              onTap: (){},
            ),
            WorkersTable(
              delete: (){showDialog(
                  context: context,
                  barrierColor: blackDialog,
                  builder: (ctx) => DeleteEmployerDialog(
                    onConfirm: (){
                      Navigator.pop(context);
                    },
                    onCancel: (){
                      Navigator.pop(context);
                    },
                  ));
              },
              edit: (){},
            )
          ],
        )
    );
  }

}