import 'package:flutter/material.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';
import 'package:vuexy_flutter/presentation/core/widgets/sidebar_tile.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListView(
        children: [
          SidebarTile(
            icon: const Icon(Icons.home_outlined),
            title: AppLocalizations.of(context).dashboards,
            children: [
              SidebarTile(
                title: AppLocalizations.of(context).analytics,
              ),
              SidebarTile(title: AppLocalizations.of(context).crm),
              SidebarTile(title: AppLocalizations.of(context).ecommerce),
              SidebarTile(title: AppLocalizations.of(context).academy),
              SidebarTile(title: AppLocalizations.of(context).logistics),
            ],
          ),
          SidebarTile(
            title: AppLocalizations.of(context).frontPages,
            children: [
              SidebarTile(title: AppLocalizations.of(context).landing),
              SidebarTile(title: AppLocalizations.of(context).pricing),
              SidebarTile(title: AppLocalizations.of(context).payment),
              SidebarTile(title: AppLocalizations.of(context).checkout),
              SidebarTile(title: AppLocalizations.of(context).helpCenter),
            ],
          ),
          SidebarTile(
            title: AppLocalizations.of(context).ecommerce,
            children: [
              SidebarTile(title: AppLocalizations.of(context).dashboard),
              SidebarTile(
                title: AppLocalizations.of(context).product,
                children: [
                  SidebarTile(title: AppLocalizations.of(context).list),
                  SidebarTile(title: AppLocalizations.of(context).add),
                  SidebarTile(title: AppLocalizations.of(context).category),
                ],
              ),
              SidebarTile(
                title: AppLocalizations.of(context).order,
                children: [
                  SidebarTile(title: AppLocalizations.of(context).list),
                  SidebarTile(title: AppLocalizations.of(context).details),
                ],
              ),
              SidebarTile(
                title: AppLocalizations.of(context).customer,
                children: [
                  SidebarTile(title: AppLocalizations.of(context).list),
                  SidebarTile(title: AppLocalizations.of(context).details),
                ],
              ),
              SidebarTile(title: AppLocalizations.of(context).manageReview),
              SidebarTile(title: AppLocalizations.of(context).referrals),
              SidebarTile(title: AppLocalizations.of(context).settings),
            ],
          ),
          SidebarTile(
            title: AppLocalizations.of(context).academy,
            children: [
              SidebarTile(title: AppLocalizations.of(context).dashboard),
              SidebarTile(title: AppLocalizations.of(context).myCourse),
              SidebarTile(title: AppLocalizations.of(context).courseDetails),
            ],
          ),
          SidebarTile(
            title: AppLocalizations.of(context).logistics,
            children: [
              SidebarTile(title: AppLocalizations.of(context).dashboard),
              SidebarTile(title: AppLocalizations.of(context).fleet),
            ],
          ),
          SidebarTile(title: AppLocalizations.of(context).email),
          SidebarTile(title: AppLocalizations.of(context).chat),
          SidebarTile(title: AppLocalizations.of(context).calendar),
          SidebarTile(
            title: AppLocalizations.of(context).invoice,
            children: [
              SidebarTile(title: AppLocalizations.of(context).list),
              SidebarTile(title: AppLocalizations.of(context).preview),
              SidebarTile(title: AppLocalizations.of(context).edit),
              SidebarTile(title: AppLocalizations.of(context).add),
            ],
          ),
          SidebarTile(
            title: AppLocalizations.of(context).user,
            children: [
              SidebarTile(title: AppLocalizations.of(context).list),
              SidebarTile(title: AppLocalizations.of(context).preview),
            ],
          ),
          SidebarTile(
            title: AppLocalizations.of(context).rolesAndPermissions,
            children: [
              SidebarTile(title: AppLocalizations.of(context).roles),
              SidebarTile(title: AppLocalizations.of(context).permissions),
            ],
          ),
          SidebarTile(
            title: AppLocalizations.of(context).pages,
            children: [
              SidebarTile(title: AppLocalizations.of(context).userProfile),
              SidebarTile(title: AppLocalizations.of(context).accountSettings),
              SidebarTile(title: AppLocalizations.of(context).pricing),
              SidebarTile(title: AppLocalizations.of(context).faq),
              SidebarTile(
                title: AppLocalizations.of(context).miscellaneous,
                children: [
                  SidebarTile(title: AppLocalizations.of(context).comingSoon),
                  SidebarTile(
                      title: AppLocalizations.of(context).underMaintenance),
                  SidebarTile(title: AppLocalizations.of(context).pageNotFound),
                  SidebarTile(
                      title: AppLocalizations.of(context).notAuthorized),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
