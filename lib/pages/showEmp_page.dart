import 'package:flutter/material.dart';
import 'package:pardemo/model/empone_model.dart';

import '../model/emp_model.dart';
import '../services/http_service.dart';

class SowPage extends StatefulWidget {
  const SowPage({Key? key}) : super(key: key);
  static const String id = "show_page";

  @override
  State<SowPage> createState() => _SowPageState();
}

class _SowPageState extends State<SowPage> {

  var items;

  void _apiEmpOne(int id) {
    Network.GET(Network.API_EMP_ONE + id.toString(), Network.paramsEmpty())
        .then((response) => {
      print(response),
      _showResponse(response!),
    });
  }

  void _showResponse(String response) {
    EmpOne empOne = Network.parseEmpOne(response);
    print(empOne);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiEmpOne;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Employee List"),
        ),
      body: ListView.builder(
        itemCount: items,
        itemBuilder: (ctx, i) {
          return itemOfList(items[i]);
        },
      ),
    );
  }

  Widget itemOfList(Employee emp) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${emp.employeeName}(${emp.profileImage})",style: const TextStyle(color: Colors.black,fontSize: 20),),
          const SizedBox(height: 10,),
          Text("${emp.employeeSalary}\$",style: const TextStyle(color: Colors.black,fontSize: 18),),
        ],
      ),
    );
  }
}
