import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/data/dashboard_data.dart';

class DashboardBox3 extends StatelessWidget {
  const DashboardBox3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dashboard box3",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          BoxHeader3(),
          Divider(
            height: 3,
            color: Colors.grey.shade700,
          ),
          Content()
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: BoxData3.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Expanded(child: Text(BoxData3[index].Col1)),
                  Expanded(child: Text(BoxData3[index].Col2)),
                  Expanded(child: Text(BoxData3[index].Col3)),
                  Expanded(child: Text(BoxData3[index].Col4)),
                ],
              ),
            ),
            Divider(
              height: 3,
              color: Colors.grey.shade700,
            ),
          ],
        );
      },
    ));
  }
}

class BoxHeader3 extends StatelessWidget {
  const BoxHeader3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(
              child: Text(
            "col1",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Expanded(
              child: Text(
            "col2",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Expanded(
              child: Text(
            "col3",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Expanded(
              child: Text(
            "col4",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
