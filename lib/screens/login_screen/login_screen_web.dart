import 'package:flutter/material.dart';
import 'package:test/components/components.dart';
import 'package:test/constants/constants.dart';

class LoginScreenWeb extends StatefulWidget {
  const LoginScreenWeb({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenWebState();
  }
}

class _LoginScreenWebState extends State<LoginScreenWeb> 
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

  Widget _firstWidget() {
    return SizedBox(
      height: 255,
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '1.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 60, 25),
                    child: Text(
                      tabController.index == 0
                        ? 'Erstellen dein Lebenslauf'
                        : tabController.index == 1
                          ? 'Erstellen dein\nUnternehmensprofil'
                          : 'Erstellen dein\nUnternehmensprofil',
                      style: const TextStyle(
                        color: AppColors.gray6,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                Flexible(
                  child: Image.asset(AppImages.background1, width: 385),
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }

  Widget _secondWidget() {
    return Container(
      height: 370,
      padding: const EdgeInsets.fromLTRB(35, 95, 15, 50),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Image.asset(
              tabController.index == 0
                ? AppImages.background2
                : tabController.index == 1
                  ? AppImages.background4
                  : AppImages.background6, 
              width: 325,
            ),
          ),
          const Text(
            '2.',
            style: TextStyle(
              color: AppColors.gray6,
              fontSize: 130,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 25),
              child: Text(
                tabController.index == 0
                  ? 'Erstellen dein Lebenslauf'
                  : tabController.index == 1
                    ? 'Erstellen ein Jobinserat'
                    : 'Erhalte Vermittlungs-\nangebot von Arbeitgeber',
                style: const TextStyle(
                  color: AppColors.gray6,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdWidget() {
    return Container(
      height: 375,
      margin: const EdgeInsets.only(top: 95, bottom: 95),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '3.',
                  style: TextStyle(
                    color: AppColors.gray6,
                    fontSize: 130,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 25, 25),
                    child: Text(
                      tabController.index == 0
                        ? 'Mit nur einem Klick\nbewerben'
                        : tabController.index == 1
                          ? 'Wähle deinen\nneuen Mitarbeiter aus'
                          : 'Vermittlung nach\nProvision oder\nStundenlohn',
                      style: const TextStyle(
                        color: AppColors.gray6,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            tabController.index == 0
              ? AppImages.background3
              : tabController.index == 1
                ? AppImages.background5
                : AppImages.background7, 
            width: 500,
          ),
        ],
      ),
    );
  }

  Widget _tabWidget() {
    return AnimatedBuilder(
      animation: tabController, 
      builder: (context, child) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 98),
                  child: Text(
                    tabController.index == 0
                      ? 'Drei einfache Schritte\nzu deinem neuen Job'
                      : tabController.index == 1
                        ? 'Drei einfache Schritte\nzu deinem neuen Mitarbeiter'
                        : 'Drei einfache Schritte zur\nVermittlung neuer Mitarbeiter',
                    style: const TextStyle(
                      color: AppColors.gray7,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                _firstWidget(),
                ClipPath(
                  clipper: CurvedThirdBorderClipper(),
                  child: _secondWidget(),
                ),
                _thirdWidget(),
              ],
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 130),
                  Row(
                    children: [
                      const Spacer(flex: 3),
                      Flexible(
                        flex: 6,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: const EdgeInsets.only(left: 50),
                            constraints: const BoxConstraints(
                              minWidth: 500,
                              maxWidth: 600
                            ),
                            child: Image.asset(
                              AppImages.arrow1,
                              height: 215,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 8),
                    ],
                  ),
                  const SizedBox(height: 140),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Image.asset(
                          AppImages.arrow2,
                          width: 580,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            )
          ],
        ); 
      }
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
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (
                  BuildContext context,
                  bool innerBoxIsScrolled,
                ) {
                  return <Widget>[
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _LoginAppBarDelegate(),
                    ),
                  ];
                },
                body: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 24, bottom: 55),
                      child: _tabBar(),
                    ),
                    _tabWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _LoginAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 12,
          child: ClipPath(
            clipper: CurvedBottomBorderClipper(),
            child: Container(
              height: maxExtent - (minExtent - 18),
              padding: const EdgeInsets.only(top: 75, bottom: 80),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.blue1,
                    AppColors.blue2,
                  ],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(flex: 2),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Deine Job\nwebsite',
                        style: TextStyle(
                          fontSize: 65,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                      Container(
                        width: 320,
                        padding: const EdgeInsets.only(top: 65),
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
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 455,
                    height: 455,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(455 / 2),
                    ),
                    child: Image.asset(AppImages.handShake),
                  ),
                  const Spacer(flex: 4),
                ],
              )
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: Container(
            height: minExtent - 12,
            padding: const EdgeInsets.symmetric(horizontal: 22),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (shrinkOffset >= 415) ...[
                  const Text(
                    'Jetzt Klicken',
                    style: TextStyle(
                      color: AppColors.gray7,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      child: Container(
                        width: 255,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.gray4,
                          ),
                        ),
                        child: const Text(
                          'Kostenlos Registrieren',
                          style: TextStyle(
                            color: AppColors.green2,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                InkWell(
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
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 660;

  @override
  double get minExtent => 67;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }  
}