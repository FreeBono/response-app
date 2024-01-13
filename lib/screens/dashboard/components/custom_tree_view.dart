// import 'package:flutter/material.dart';
// import 'package:responsive_app/constants.dart';
// import 'package:responsive_app/screens/dashboard/dashboard_screen.dart';
//
// class TreeView extends StatefulWidget {
//   final List<TreeModel> data;
//   final int level;
//
//   TreeView({Key? key, required this.data, required this.level})
//       : super(key: key);
//
//   @override
//   State<TreeView> createState() => _TreeViewState();
// }
//
// class _TreeViewState extends State<TreeView> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: widget.data.length,
//       itemBuilder: (context, index) {
//         return BuildTiles(
//           tree: widget.data[index],
//           level: widget.level,
//         );
//       },
//     );
//   }
// }
//
// class BuildTiles extends StatefulWidget {
//   final TreeModel tree;
//   final int level;
//   const BuildTiles({Key? key, required this.tree, required this.level})
//       : super(key: key);
//
//   @override
//   State<BuildTiles> createState() => _BuildTilesState();
// }
//
// class _BuildTilesState extends State<BuildTiles>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//   late bool hasChildren;
//   bool _isExpanded = false;
//
//   @override
//   void initState() {
//     _controller = AnimationController(duration: kExpand, vsync: this);
//     _animation = Tween<double>(begin: 0.0, end: 0.5).animate(_controller);
//     widget.tree.children.isNotEmpty ? hasChildren = true : hasChildren = false;
//   }
//
//   void _toggleAnimation() {
//     if (_isExpanded) {
//       _controller.reverse();
//     } else {
//       _controller.forward();
//     }
//     _isExpanded = !_isExpanded;
//
//     print(_isExpanded);
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         // for (int i = 0; i < widget.level; i++)
//         // SizedBox(
//         //   width: 42,
//         //
//         // ),
//         Expanded(
//           child: Theme(
//             data: ThemeData(
//               dividerColor: Colors.transparent,
//             ),
//             child: ListTileTheme(
//               contentPadding: EdgeInsets.all(0),
//               dense: true,
//               horizontalTitleGap: 0,
//               minLeadingWidth: 0,
//               minVerticalPadding: 0,
//               child: ExpansionTile(
//                 tilePadding: EdgeInsets.zero,
//                 onExpansionChanged: (value) => _toggleAnimation(),
//                 leading: Wrap(
//                   children: [
//                     for (int i = 0; i < widget.level; i++)
//                       Container(
//                         alignment: Alignment.center,
//                         height: 42,
//                         width: 30,
//                         child: CustomPaint(
//                           size: Size(30, 42),
//                           painter: LShapePainter(
//                               isLastChild: widget.tree.isLastChild,
//                               borderSide:
//                                   BorderSide(color: Colors.grey, width: 1),
//                               hasChildren:
//                                   i == widget.level - 1 ? false : true),
//                         ),
//                       ),
//                   ],
//                 ),
//                 title: SizedBox(
//                   height: 30,
//                   child: Row(
//                     children: [
//                       widget.tree.children.isNotEmpty
//                           ? Container(
//                               // color: Colors.red,
//                               height: 30,
//                               width: 30,
//                               child: RotationTransition(
//                                 turns: _animation,
//                                 child: const Icon(Icons.expand_more),
//                               ),
//                             )
//                           : SizedBox(
//                               width: 30,
//                             ),
//                       Padding(
//                         padding: EdgeInsets.zero,
//                         child: Container(
//                             alignment: Alignment.center,
//                             height: 30,
//                             child: Text(
//                               widget.tree.node,
//                               // textAlign: TextAlign.center,
//                             )),
//                       ),
//                     ],
//                   ),
//                 ),
//                 trailing: SizedBox(),
//                 // ExpansionTile의 내부 컨텐츠 패딩 제거
//                 childrenPadding: EdgeInsets.zero,
//                 children: widget.tree.children
//                     .map((child) => BuildTiles(
//                           tree: child,
//                           level: widget.level + 1,
//                         ))
//                     .toList(),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class LShapePainter extends CustomPainter {
//   final BorderSide borderSide;
//   final bool hasChildren;
//   final bool isLastChild;
//   // final double height;
//
//   LShapePainter(
//       {required this.borderSide,
//       required this.hasChildren,
//       required this.isLastChild
//       // required this.height
//       });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..style = PaintingStyle.stroke;
//     final double cornerSize = size.width / 2;
//
//     canvas.drawLine(
//       Offset(15, 0),
//       Offset(15, isLastChild && !hasChildren ? 21 : 42),
//       paint,
//     );
//     if (!hasChildren)
//       canvas.drawLine(
//         Offset(15, 21),
//         Offset(30, 21),
//         paint,
//       );
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
