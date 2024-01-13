import 'package:flutter/material.dart';
import 'package:responsive_app/common/components/side_bar.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/controllers/menu_controller.dart';
import 'package:responsive_app/data/dashboard_data.dart';
import 'package:responsive_app/responsive.dart';
import 'package:responsive_app/screens/dashboard/components/dashboard_box3.dart';
import 'package:responsive_app/screens/dashboard/components/filteriable_tree_view.dart';
import 'package:responsive_app/screens/dashboard/components/header.dart';
import 'package:responsive_app/screens/dashboard/components/selected_blocks.dart';
import 'package:responsive_app/screens/dashboard/components/tree_view.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideBar(),
        key: scaffoldKey,
        body: SafeArea(
            child: Responsive(
          mobile: SingleChildScrollView(
            primary: false,
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Header(),
                SizedBox(height: defaultPadding),
                SizedBox(
                    height: MediaQuery.of(context).size.height -
                        defaultPadding * 4 -
                        40,
                    child: FilterableTreeView()),
                SizedBox(height: defaultPadding),
                SizedBox(
                  height: MediaQuery.of(context).size.height -
                      defaultPadding * 4 -
                      40,
                  child: SelectedBlocks(),
                ),
                SizedBox(height: defaultPadding),
                SizedBox(
                  height: MediaQuery.of(context).size.height -
                      defaultPadding * 4 -
                      40,
                  child: DashboardBox3(),
                ),
              ],
            ),
          ),
          tablet: BuildTabAndDesk(),
          desktop: BuildTabAndDesk(),
        )));
  }
}

class BuildTabAndDesk extends StatelessWidget {
  const BuildTabAndDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideBar(),
        ),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - defaultPadding * 2,
              child: Column(
                children: [
                  Header(),
                  SizedBox(height: defaultPadding),
                  if (!Responsive.isMobile(context)) ...[
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Expanded(
                              flex: 4,
                              child: FilterableTreeView(),
                            ),
                          ),
                          if (!Responsive.isMobile(context))
                            SizedBox(width: defaultPadding),
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                Expanded(child: SelectedBlocks()),
                                SizedBox(
                                  height: defaultPadding,
                                ),
                                Expanded(child: DashboardBox3())
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
