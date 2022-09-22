import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'form.dart';

class FormList extends StatelessWidget {
  //Tạo 1 widget chứa các form
  final List<FormText> forms;

  FormList(this.forms);

  //Trả về 1 Listview các forms
  ListView _buildListForms() {
    return ListView.builder(
      itemCount: forms.length,
      itemBuilder: (content, index) {
        int stt = index + 1;
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: (index % 2 == 0 ? Colors.teal : Colors.green),
          elevation: 15,
          child: ListTile(
            leading: const Icon(Icons.ac_unit),
            title: Text(
              'Số thứ tự: ${stt}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            subtitle: Column(
              children: [
                Text('Mã sinh viên: ${forms[index].id}',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('Trường: ${forms[index].school}',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                Text('Đã tốt nghiệp: ${forms[index].graduate}',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: _buildListForms(),
    );
  }
}
