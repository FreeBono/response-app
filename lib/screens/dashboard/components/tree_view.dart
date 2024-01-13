// import 'package:flutter/material.dart';
// import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
// import 'package:responsive_app/constants.dart';
// import 'package:responsive_app/data/dashboard_data.dart';
// import 'package:responsive_app/screens/dashboard/components/filteriable_tree_view.dart';
// import 'package:responsive_app/screens/dashboard/dashboard_screen.dart';
//
// class TreeView extends StatelessWidget {
//   const TreeView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final List<TreeModel> roots = treeData;
//     final treeController = TreeController<TreeModel>(
//       roots: roots,
//       childrenProvider: (TreeModel node) => node.children,
//     );
//
//     return Container(
//       // constraints: BoxConstraints(maxHeight: 500),
//       // height: 500,
//       padding: EdgeInsets.all(defaultPadding),
//       decoration: BoxDecoration(
//         color: secondaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//       ),
//       child: FilterableTreeView(),
//       // child: Column(
//       //   mainAxisSize: MainAxisSize.min,
//       //   crossAxisAlignment: CrossAxisAlignment.start,
//       //   children: [
//       //     Text(
//       //       "블록 리스트",
//       //       style: TextStyle(
//       //         fontSize: 18,
//       //         fontWeight: FontWeight.w500,
//       //       ),
//       //     ),
//       //     Expanded(
//       //       child: AnimatedTreeView<TreeModel>(
//       //         treeController: treeController,
//       //         nodeBuilder: (BuildContext context, TreeEntry<TreeModel> entry) {
//       //           return InkWell(
//       //             onTap: () => treeController.toggleExpansion(entry.node),
//       //             child: TreeIndentation(
//       //               entry: entry,
//       //               child: Text(
//       //                 entry.node.title,
//       //                 style: TextStyle(fontSize: 24),
//       //               ),
//       //             ),
//       //           );
//       //         },
//       //       ),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
