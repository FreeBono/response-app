import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/data/dashboard_data.dart';
import 'package:responsive_app/responsive.dart';

class SelectedBlocks extends StatelessWidget {
  const SelectedBlocks({
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
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dashboard Box2",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: Content(),
          ))
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
    return ListView.builder(
      shrinkWrap: true,
      itemCount: selectedData.length,
      itemBuilder: (context, index) {
        return GeneralCard(index: index);
      },
    );
  }
}

class GeneralCard extends StatelessWidget {
  final int index;
  const GeneralCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text("col1")),
                    Expanded(child: Text("col1")),
                    Expanded(child: Text("col1")),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text("${selectedData[index].Col1}")),
                    Expanded(child: Text("${selectedData[index].Col2}")),
                    Expanded(child: Text("${selectedData[index].Col3}")),
                  ],
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  children: [
                    Expanded(child: Text("col2")),
                    Expanded(child: Text("col2")),
                    Expanded(child: Text("col2")),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text("${selectedData[index].Col4}")),
                    Expanded(child: Text("${selectedData[index].Col5}")),
                    Expanded(child: Text("${selectedData[index].Col6}")),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultPadding,
          )
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "col1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      "col1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      "col1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      "col1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      "col1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      "col1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text("${selectedData[index].Col1}")),
                    Expanded(child: Text("${selectedData[index].Col2}")),
                    Expanded(child: Text("${selectedData[index].Col3}")),
                    Expanded(child: Text("${selectedData[index].Col4}")),
                    Expanded(child: Text("${selectedData[index].Col5}")),
                    Expanded(child: Text("${selectedData[index].Col6}")),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultPadding,
          )
        ],
      );
    }
  }
}
