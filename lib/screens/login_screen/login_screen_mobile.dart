import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:test/components/components.dart';
import 'package:test/constants/constants.dart';

class LoginScreenMobile extends StatefulWidget {
  const LoginScreenMobile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenMobileState();
  }
}

class _LoginScreenMobileState extends State<LoginScreenMobile> 
  with SingleTickerProviderStateMixin {
  late final TabController tabController = TabController(length: 3, vsync: this);

  Widget _tabBarItem({
    required String text,
    required int index,
    BorderRadiusGeometry? borderRadius,
  }) {
    return InkWell(
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: tabController.index == index
            ? AppColors.green1
            : AppColors.white,
          borderRadius: borderRadius,
          border: tabController.index == index
            ? null
            : Border.all(color: AppColors.gray4),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: tabController.index == index
              ? AppColors.blue2
              : AppColors.green2,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      onTap: () {
        tabController.animateTo(index);
      },
    );
  }

  Widget _tabBar() {
    return SizedBox(
      width: 480,
      child: AnimatedBuilder(
        animation: tabController,
        builder: (context, child) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: _tabBarItem(
                  text: 'Arbeitnehmer',
                  index: 0,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
              ),
              Expanded(
                child: _tabBarItem(
                  text: 'Arbeitgeber',
                  index: 1,
                ),
              ),
              Expanded(
                child: _tabBarItem(
                  text: 'Temporärbüro',
                  index: 2,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _firstTabFirstWidget() {
    return Container(
      height: 255,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Positioned(
            top: 6,
            right: 20,
            child: Image.asset(AppImages.background1, height: 145),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '1.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Text(
                      'Erstellen dein Lebenslauf',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _firstTabSecondWidget() {
    return Container(
      height: 370,
      padding: const EdgeInsets.fromLTRB(35, 20, 15, 80),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.blue2,
            AppColors.blue1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '2.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: Text(
                      'Erstellen dein Lebenslauf',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 50,
            bottom: 0,
            child: Image.asset(AppImages.background2, height: 125),
          ),
        ],
      ),
    );
  }

  Widget _firstTabThirdWidget() {
    return Container(
      height: 300,
      padding: const EdgeInsets.only(left: 54, right: 7),
      margin: const EdgeInsets.only(bottom: 40),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '3.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                    height: 0.7,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: Text(
                      'Mit nur einem Klick\nbewerben',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(AppImages.background3, height: 210),
          ),
        ],
      ),
    );
  }

  Widget _firstTabWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
          child: Text(
            'Drei einfache Schritte\nzu deinem neuen Job',
            style: TextStyle(
              color: AppColors.gray7,
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        _firstTabFirstWidget(),
        ClipPath(
          clipper: CurvedFirstBorderClipper(),
          child: _firstTabSecondWidget(),
        ),
        _firstTabThirdWidget(),
      ],
    );
  }

  Widget _secondTabFirstWidget() {
    return Container(
      height: 255,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Positioned(
            top: 6,
            right: 20,
            child: Image.asset(AppImages.background1, height: 145),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '1.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Text(
                      'Erstellen dein\nUnternehmensprofil',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _secondTabSecondWidget() {
    return Container(
      height: 410,
      padding: const EdgeInsets.fromLTRB(35, 20, 25, 70),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.blue2,
            AppColors.blue1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Stack(
        children: [
          Positioned(
            left: 24,
            right: 14,
            bottom: 0,
            child: Center(
              child: Image.asset(AppImages.background4),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '2.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: Text(
                      'Erstellen ein Jobinserat',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _secondTabThirdWidget() {
    return Container(
      height: 320,
      padding: const EdgeInsets.fromLTRB(54, 20, 16, 0),
      margin: const EdgeInsets.only(bottom: 40),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '3.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                    height: 0.7,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: Text(
                      'Wähle deinen\nneuen Mitarbeiter aus',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 6,
            right: 44,
            bottom: 0,
            child: Center(
              child: Image.asset(AppImages.background5, height: 195),
            ),
          ),
        ],
      ),
    );
  }

  Widget _secondTabWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
          child: Text(
            'Drei einfache Schritte\nzu deinem neuen Mitarbeiter',
            style: TextStyle(
              color: AppColors.gray7,
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        _secondTabFirstWidget(),
        ClipPath(
          clipper: CurvedSecondBorderClipper(),
          child: _secondTabSecondWidget(),
        ),
        _secondTabThirdWidget(),
      ],
    );
  }

  Widget _thirdTabFirstWidget() {
    return Container(
      height: 255,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Positioned(
            top: 6,
            right: 20,
            child: Image.asset(AppImages.background1, height: 145),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '1.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Text(
                      'Erstellen dein\nUnternehmensprofil',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdTabSecondWidget() {
    return Container(
      height: 370,
      padding: const EdgeInsets.fromLTRB(35, 20, 16, 60),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.blue2,
            AppColors.blue1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Stack(
        children: [
          Positioned(
            right: 24,
            bottom: 0,
            child: Image.asset(AppImages.background6, height: 145),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '2.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: Text(
                      'Erhalte Vermittlungs-\nangebot von Arbeitgeber',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdTabThirdWidget() {
    return Container(
      height: 320,
      padding: const EdgeInsets.fromLTRB(54, 20, 51, 0),
      margin: const EdgeInsets.only(bottom: 40),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '3.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                    height: 0.7,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: Text(
                      'Vermittlung nach\nProvision oder\nStundenlohn',
                      style: TextStyle(
                        color: AppColors.gray6,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 1,
            right: 4,
            bottom: 0,
            child: Center(
              child: Image.asset(AppImages.background7, height: 190),
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdTabWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
          child: Text(
            'Drei einfache Schritte zur\nVermittlung neuer Mitarbeiter',
            style: TextStyle(
              color: AppColors.gray7,
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        _thirdTabFirstWidget(),
        ClipPath(
          clipper: CurvedSecondBorderClipper(),
          child: _thirdTabSecondWidget(),
        ),
        _thirdTabThirdWidget(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Container(
                    height: 5,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.green2,
                          AppColors.blue3,
                        ],
                      ),
                    ),
                  ),
                  StickyHeader(
                    overlapHeaders: true,
                    header: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 18,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.gray2,
                            offset: const Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: InkWell(
                        child: const Text(
                          AppStrings.login,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.green2,
                          ),
                        ),
                        onTap: () {

                        },
                      ),
                    ), 
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipPath(
                          clipper: CurvedBottomBorderClipper(),
                          child: Container(
                            padding: const EdgeInsets.only(top: 65, bottom: 80),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.blue1,
                                  AppColors.blue2,
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 18, 20, 0),
                                  child: Text(
                                    'Deine Job\nwebsite',
                                    style: TextStyle(
                                      fontSize: 42,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Image.asset(AppImages.handShake),
                              ],
                            )
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 27, bottom: 30),
                          height: 40,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: _tabBar(),
                          ),
                        ),
                        AnimatedBuilder(
                          animation: tabController, 
                          builder: (context, child) {
                            if (tabController.index == 0) {
                              return _firstTabWidget();
                            } else if (tabController.index == 1) {
                              return _secondTabWidget();
                            } else {
                              return _thirdTabWidget();
                            }
                          }
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 24,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.gray2,
                    offset: const Offset(0, -1),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.green2,
                        AppColors.blue3,
                      ]
                    )
                  ),
                  child: const Text(
                    'Kostenlos Registrieren',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blue2,
                    ),
                  ),
                ),
                onTap: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}