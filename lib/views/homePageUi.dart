import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/navigation/navigation.dart';
import 'package:notes_app/widgets/customDropDown.dart';
import 'package:notes_app/widgets/noteListWidget.dart';

import 'notesView.dart';
import 'sittingsUi.dart';
import 'toDoListView.dart';

class HomePageUi extends StatefulWidget {
  @override
  State<HomePageUi> createState() => _HomePageUiState();
}

class _HomePageUiState extends State<HomePageUi>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  initTabBar() {
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    initTabBar();
  }

  @override
  Widget build(BuildContext context) {
    Color grey = Colors.grey;
    Color yellow = Color.fromARGB(255, 212, 193, 17);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white.withAlpha(238),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 40.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              IconButton(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  onPressed: () {
                                    tabController!.animateTo(0);
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.note_alt_outlined,
                                      color: tabController!.index == 0
                                          ? yellow
                                          : grey)),
                              tabController!.index == 0
                                  ? const Positioned(
                                      left: 23,
                                      bottom: 7,
                                      child: CustomDropDown())
                                  : const SizedBox(),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          IconButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              onPressed: () {
                                tabController!.animateTo(1);
                                setState(() {});
                              },
                              icon: Icon(Icons.check_box_outlined,
                                  color: tabController!.index == 1
                                      ? yellow
                                      : grey)),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        Navigation.navigateToWidget(SittingUi());
                      },
                      icon: const Icon(Icons.hexagon_outlined))
                ],
              ),
              Expanded(
                  child: TabBarView(
                controller: tabController,
                children: [NotesView(), ToDoListView()],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
