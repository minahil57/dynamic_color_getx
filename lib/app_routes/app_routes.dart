import 'package:qfinity_finance_modeule/core/imports/external_imports.dart';
import 'package:qfinity_finance_modeule/views/login/login.dart';
import 'package:qfinity_finance_modeule/views/start_up/start_up_view.dart';

import '../core/imports/internal_imports.dart';

final goRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: SplashScreen(),
        );
      },
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: LoginScreen(),
        );
      },
    ),
    // StatefulShellRoute.indexedStack(
    //   builder: (BuildContext context, GoRouterState state,
    //       StatefulNavigationShell navigationShell) {
    //     return SideNavigationBar(navigationShell: navigationShell);
    //   },
    //   branches: [
    //     StatefulShellBranch(routes: [
    //       GoRoute(
    //         name: 'dashboard',
    //         path: '/',
    //         pageBuilder: (context, state) {
    //           return const MaterialPage(
    //             child: DashboardView(),
    //           );
    //         },
    //       ),
    //     ]),
    //     StatefulShellBranch(routes: [
    //       GoRoute(
    //         name: 'accounts_tree',
    //         path: '/finance/transaction/accounts_tree',
    //         pageBuilder: (context, state) {
    //           return const MaterialPage(
    //             child: AccountsTreeView(),
    //           );
    //         },
    //       ),
    //     ]),
    //     StatefulShellBranch(routes: [
    //       GoRoute(
    //         name: 'purchase_voucher',
    //         path: '/ap/purchase_voucher',
    //         pageBuilder: (context, state) {
    //           return const MaterialPage(
    //             child: PurchaseVoucherView(),
    //           );
    //         },
    //       ),
    //     ]),
    //     StatefulShellBranch(routes: [
    //       GoRoute(
    //         name: 'sales',
    //         path: '/sales',
    //         pageBuilder: (context, state) {
    //           return const MaterialPage(
    //             child: SalesView(),
    //           );
    //         },
    //       ),
    //     ]),
    //     StatefulShellBranch(routes: [
    //       GoRoute(
    //         path: '/add_primary_account',
    //         name: 'add-primary-account',
    //         builder: (context, state) => const AddPrimaryAccount(),
    //       ),
    //     ]),
    //   ],
    // ),
  ],
);



