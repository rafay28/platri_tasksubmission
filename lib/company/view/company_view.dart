import 'package:assignment_rafay/company/cubit/company_cubit.dart';
import 'package:assignment_rafay/company/cubit/company_state.dart';
import 'package:assignment_rafay/company/model/Company.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Significant de"),
        ),
        body: Center(child: BlocBuilder<CompanyCubit, CompanyStateList>(
            builder: (context, state) {
          if (state.status == ListStatus.loading) {
            context.read<CompanyCubit>().fetchList();
            return CircularProgressIndicator(
              value: null,
            );
          } else {
            List<Company> companyData = state.companies;
            return ListView.builder(
                itemCount: companyData.length,
                padding: const EdgeInsets.only(top: 10.0),
                itemBuilder: (context, index) {
                  return Container(
                      padding: EdgeInsets.all(10),
                      child: Card(
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                        child: Image.network(
                                      companyData[index].imageUrl,
                                      fit: BoxFit.fitWidth,
                                      height: 150,
                                    ))
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.network(
                                        companyData[index].logoUrl,
                                        width: 50,
                                      ),
                                      Text(
                                        companyData[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text("Follow"))
                                    ],
                                  ),
                                ),
                                Text(companyData[index].description)
                              ],
                            ),
                          )));
                });
          }
        })));
  }
}
