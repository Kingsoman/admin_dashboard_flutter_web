
import 'package:flutter/material.dart';
import 'package:getx_admin_panel/views/accounts_tree/accounts_tree.dart';
import 'package:getx_admin_panel/views/add_primary_account/add_primary_account.dart';
import 'package:getx_admin_panel/views/dashboard/dashboard_view.dart';
import 'package:getx_admin_panel/views/editable_table.dart';
import 'package:getx_admin_panel/views/reports/reports_view.dart';
import 'package:getx_admin_panel/views/sales/sales_view.dart';
import 'package:getx_admin_panel/views/side_bar/side_bar_view.dart';
import 'package:getx_admin_panel/views/start_up/start_up_view.dart';
import 'package:getx_admin_panel/views/sync_fusion_table.dart';
import 'package:go_router/go_router.dart';

import '../views/add_purchase_voucher/add_purchase_voucher_view.dart';

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
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return SideNavigationBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              name: 'dashboard',
              path: '/',
              pageBuilder: (context, state) {
                return  const MaterialPage(
                  child: DashboardView(),
                );
              },
            ),
          ],),
           StatefulShellBranch(routes: [
            GoRoute(
              name: 'Transaction',
              path: '/transaction',
            //    routes: [
            //     GoRoute(
            //   name: 'Accounts Tree',
            //   path: 'accounts_tree',
             
            //   pageBuilder: (context, state) {
            //     return const MaterialPage(
            //       child: ItemMasterView(),
            //     );
                
            //   },
            // ),
            //   ],
              pageBuilder: (context, state) {
                return const MaterialPage(
                  child: PurchaseVoucherView(),
                );
              },
            ),
          ]),
        
          StatefulShellBranch(routes: [
            GoRoute(
              name: 'accounts_tree',
              path: '/accounts_tree',
              pageBuilder: (context, state) {
                return const MaterialPage(
                  child: AccountsTreeView(),
                );
              },
            ),
          ]),
        
          StatefulShellBranch(routes: [
            GoRoute(
              name: 'purchase',
              path: '/purchase_voucher',
              pageBuilder: (context, state) {
                return const MaterialPage(
                  child: PurchaseVoucherView(),
                );
              },
            ),
          ]),
              StatefulShellBranch(routes: [
            GoRoute(
              name: 'Accounts Tree',
              path: '/editable_table',
             
              pageBuilder: (context, state) {
                return  MaterialPage(
                  child: EditingDataGrid(),
                );
                
              },
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              name: 'sales',
              path: '/sales',
              pageBuilder: (context, state) {
                return const MaterialPage(
                  child: SalesView(),
                );
              },
            ),
          ]),
         StatefulShellBranch(routes: [
            GoRoute(
        path: '/add_primary_account',
        name: 'add-primary-account',
         builder: (context, state) => const AddPrimaryAccount(),
        ),
         ])
        ],
      ),
     
      
    ],
  );

