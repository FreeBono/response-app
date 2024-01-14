import 'package:responsive_app/screens/dashboard/dashboard_screen.dart';

class BlockInfoModel {
  String Col1;
  String Col2;
  String Col3;
  String Col4;
  String Col5;
  String Col6;

  BlockInfoModel({
    required this.Col1,
    required this.Col2,
    required this.Col3,
    required this.Col4,
    required this.Col5,
    required this.Col6,
  });
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

class Node {
  Node({
    required this.title,
    Iterable<Node>? children,
  }) : children = <Node>[...?children];

  final String title;
  final Iterable<Node> children;
}

Node treeData = Node(title: '/', children: [
  Node(
    title: "level1",
    children: [
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
    ],
  ),
  Node(
    title: "level1",
    children: [
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
    ],
  ),
  Node(
    title: "level1",
    children: [
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
      Node(
        title: "level2",
        children: [
          Node(title: "level3", children: []),
          Node(title: "level3", children: []),
          Node(title: "level3", children: [])
        ],
      ),
    ],
  ),
]);

List<BlockInfoModel> selectedData = [
  BlockInfoModel(
      Col1: "Data1",
      Col2: "Data2",
      Col3: "Data3",
      Col4: "Data4",
      Col5: "Data5",
      Col6: "Data6"),
  BlockInfoModel(
      Col1: "Data7",
      Col2: "Data8",
      Col3: "Data9",
      Col4: "Data10",
      Col5: "Data11",
      Col6: "Data12"),
];

List<BoxModel3> BoxData3 = [
  BoxModel3(Col1: "Data1", Col2: "Data2", Col3: "Data3", Col4: "Data4"),
  BoxModel3(Col1: "Data5", Col2: "Data6", Col3: "Data7", Col4: "Data8"),
];
