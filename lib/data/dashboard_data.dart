import 'package:responsive_app/screens/dashboard/dashboard_screen.dart';

class TreeModel {
  String title;
  List<TreeModel> children;

  TreeModel({required this.title, this.children = const <TreeModel>[]});
}

class BlockInfoModel {
  String ShipNumber;
  String BlockName;
  String Date;
  String Rev;
  String Ver;
  String Manager;

  BlockInfoModel(
      {required this.ShipNumber,
      required this.BlockName,
      required this.Date,
      required this.Rev,
      required this.Ver,
      required this.Manager});
}

class BoxModel3 {
  String Col1;
  String Col2;
  String Col3;
  String Col4;

  BoxModel3({
    required this.Col1,
    required this.Col2,
    required this.Col3,
    required this.Col4,
  });
}

List<TreeModel> treeData = [
  TreeModel(
    title: "SN1111",
    children: [
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
    ],
  ),
  TreeModel(
    title: "SN1111",
    children: [
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
    ],
  ),
  TreeModel(
    title: "SN1111",
    children: [
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
      TreeModel(
        title: "A110",
        children: [
          TreeModel(title: "0", children: []),
          TreeModel(title: "1", children: []),
          TreeModel(title: "2", children: [])
        ],
      ),
    ],
  ),
];

List<BlockInfoModel> selectedData = [
  BlockInfoModel(
      ShipNumber: "SN1234",
      BlockName: "A110",
      Date: "23-10-01",
      Rev: "0",
      Ver: "3",
      Manager: "홍길동"),
  BlockInfoModel(
      ShipNumber: "SN1235",
      BlockName: "B110",
      Date: "23-12-01",
      Rev: "1",
      Ver: "2",
      Manager: "홍길동"),
];

List<BoxModel3> BoxData3 = [
  BoxModel3(Col1: "Data1", Col2: "Data2", Col3: "Data3", Col4: "Data4"),
  BoxModel3(Col1: "Data5", Col2: "Data6", Col3: "Data7", Col4: "Data8"),
];
