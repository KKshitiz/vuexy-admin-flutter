import 'package:flutter/material.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';
import 'package:vuexy_flutter/presentation/home/widgets/sidebar/sidebar_header.dart';
import 'package:vuexy_flutter/presentation/home/widgets/sidebar/sidebar_section_title.dart';
import 'package:vuexy_flutter/presentation/home/widgets/sidebar/sidebar_tile.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      shape: const RoundedRectangleBorder(),
      child: Column(
        children: [
          const SidebarHeader(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: [
                SidebarTile(
                  icon: const Icon(Icons.home_outlined),
                  title: AppLocalizations.of(context).dashboards,
                  badgeCount: 5,
                  children: [
                    SidebarTile(
                      title: AppLocalizations.of(context).analytics,
                    ),
                    SidebarTile(title: AppLocalizations.of(context).crm),
                    SidebarTile(title: AppLocalizations.of(context).ecommerce),
                    SidebarTile(title: AppLocalizations.of(context).logistics),
                    SidebarTile(title: AppLocalizations.of(context).academy),
                  ],
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).layouts,
                  icon: const Icon(Icons.layers_outlined),
                  children: [
                    SidebarTile(
                        title: AppLocalizations.of(context).collapsedMenu),
                    SidebarTile(
                        title: AppLocalizations.of(context).contentNavbar),
                    SidebarTile(
                        title: AppLocalizations.of(context)
                            .contentNavbarPlusSidebar),
                    SidebarTile(title: AppLocalizations.of(context).horizontal),
                    SidebarTile(
                        title: AppLocalizations.of(context).withoutMenu),
                    SidebarTile(
                        title: AppLocalizations.of(context).withoutNavbar),
                    SidebarTile(title: AppLocalizations.of(context).fluid),
                    SidebarTile(title: AppLocalizations.of(context).container),
                    SidebarTile(title: AppLocalizations.of(context).blank),
                  ],
                ),
                SidebarTile(
                  icon: const Icon(Icons.copy),
                  title: AppLocalizations.of(context).frontPages,
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).landing),
                    SidebarTile(title: AppLocalizations.of(context).pricing),
                    SidebarTile(title: AppLocalizations.of(context).payment),
                    SidebarTile(title: AppLocalizations.of(context).checkout),
                    SidebarTile(title: AppLocalizations.of(context).helpCenter),
                  ],
                ),
                SidebarSectionTitle(
                    text: AppLocalizations.of(context).appsAndPages),
                SidebarTile(
                  title: AppLocalizations.of(context).email,
                  icon: const Icon(Icons.email_outlined),
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).chat,
                  icon: const Icon(Icons.chat_bubble_outline),
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).calendar,
                  icon: const Icon(Icons.calendar_month_outlined),
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).kanban,
                  icon: const Icon(Icons.view_kanban_outlined),
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).ecommerce,
                  icon: const Icon(Icons.shopping_cart_outlined),
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).dashboard),
                    SidebarTile(
                      title: AppLocalizations.of(context).products,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).productList),
                        SidebarTile(
                            title: AppLocalizations.of(context).addProduct),
                        SidebarTile(
                            title: AppLocalizations.of(context).categoryList),
                      ],
                    ),
                    SidebarTile(
                      title: AppLocalizations.of(context).order,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).orderList),
                        SidebarTile(
                            title: AppLocalizations.of(context).orderDetails),
                      ],
                    ),
                    SidebarTile(
                      title: AppLocalizations.of(context).customer,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).allCustomers),
                        SidebarTile(
                          title: AppLocalizations.of(context).customerDetails,
                          children: [
                            SidebarTile(
                                title: AppLocalizations.of(context).overview),
                            SidebarTile(
                                title: AppLocalizations.of(context).security),
                            SidebarTile(
                                title: AppLocalizations.of(context)
                                    .addressAndBilling),
                            SidebarTile(
                                title:
                                    AppLocalizations.of(context).notifications),
                          ],
                        ),
                      ],
                    ),
                    SidebarTile(
                        title: AppLocalizations.of(context).manageReview),
                    SidebarTile(title: AppLocalizations.of(context).referrals),
                    SidebarTile(
                      title: AppLocalizations.of(context).settings,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).storeDetails),
                        SidebarTile(
                            title: AppLocalizations.of(context).payments),
                        SidebarTile(
                            title: AppLocalizations.of(context).checkout),
                        SidebarTile(
                            title: AppLocalizations.of(context)
                                .shippingAndDelivery),
                        SidebarTile(
                            title: AppLocalizations.of(context).locations),
                        SidebarTile(
                            title: AppLocalizations.of(context).notifications)
                      ],
                    ),
                  ],
                ),
                SidebarTile(
                  icon: const Icon(Icons.menu_book_outlined),
                  title: AppLocalizations.of(context).academy,
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).dashboard),
                    SidebarTile(title: AppLocalizations.of(context).myCourse),
                    SidebarTile(
                        title: AppLocalizations.of(context).courseDetails),
                  ],
                ),
                SidebarTile(
                  icon: const Icon(Icons.local_shipping_outlined),
                  title: AppLocalizations.of(context).logistics,
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).dashboard),
                    SidebarTile(title: AppLocalizations.of(context).fleet),
                  ],
                ),
                SidebarTile(
                  icon: const Icon(Icons.receipt_long_outlined),
                  title: AppLocalizations.of(context).invoice,
                  badgeCount: 4,
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).list),
                    SidebarTile(title: AppLocalizations.of(context).preview),
                    SidebarTile(title: AppLocalizations.of(context).edit),
                    SidebarTile(title: AppLocalizations.of(context).add),
                  ],
                ),
                SidebarTile(
                  icon: const Icon(Icons.people_outline),
                  title: AppLocalizations.of(context).users,
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).list),
                    SidebarTile(
                      title: AppLocalizations.of(context).view,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).account),
                        SidebarTile(
                            title: AppLocalizations.of(context).security),
                        SidebarTile(
                            title:
                                AppLocalizations.of(context).billingAndPlans),
                        SidebarTile(
                            title: AppLocalizations.of(context).notifications),
                        SidebarTile(
                            title: AppLocalizations.of(context).connections),
                      ],
                    ),
                  ],
                ),
                SidebarTile(
                  icon: const Icon(Icons.settings_outlined),
                  title: AppLocalizations.of(context).rolesAndPermissions,
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).roles),
                    SidebarTile(
                        title: AppLocalizations.of(context).permissions),
                  ],
                ),
                SidebarTile(
                  icon: const Icon(Icons.file_copy_outlined),
                  title: AppLocalizations.of(context).pages,
                  children: [
                    SidebarTile(
                      title: AppLocalizations.of(context).userProfile,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).profile),
                        SidebarTile(title: AppLocalizations.of(context).teams),
                        SidebarTile(
                            title: AppLocalizations.of(context).projects),
                        SidebarTile(
                            title: AppLocalizations.of(context).connections),
                      ],
                    ),
                    SidebarTile(
                      title: AppLocalizations.of(context).accountSettings,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).account),
                        SidebarTile(
                            title: AppLocalizations.of(context).security),
                        SidebarTile(
                            title:
                                AppLocalizations.of(context).billingAndPlans),
                        SidebarTile(
                            title: AppLocalizations.of(context).notifications),
                        SidebarTile(
                            title: AppLocalizations.of(context).connections),
                      ],
                    ),
                    SidebarTile(title: AppLocalizations.of(context).faq),
                    SidebarTile(title: AppLocalizations.of(context).pricing),
                    SidebarTile(
                      title: AppLocalizations.of(context).miscellaneous,
                      children: [
                        SidebarTile(
                            title: AppLocalizations.of(context).pageNotFound),
                        SidebarTile(
                            title:
                                AppLocalizations.of(context).underMaintenance),
                        SidebarTile(
                            title: AppLocalizations.of(context).comingSoon),
                        SidebarTile(
                            title: AppLocalizations.of(context).notAuthorized),
                      ],
                    )
                  ],
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).authentication,
                  icon: const Icon(Icons.lock_outline),
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).login),
                    SidebarTile(title: AppLocalizations.of(context).register),
                    SidebarTile(
                        title: AppLocalizations.of(context).verifyEmail),
                    SidebarTile(
                        title: AppLocalizations.of(context).resetPassword),
                    SidebarTile(
                        title: AppLocalizations.of(context).forgotPassword),
                    SidebarTile(title: AppLocalizations.of(context).twoSteps),
                  ],
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).wizardExamples,
                  icon: const Icon(Icons.subscriptions_outlined),
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).checkout),
                    SidebarTile(
                        title: AppLocalizations.of(context).propertyListing),
                    SidebarTile(title: AppLocalizations.of(context).createDeal),
                  ],
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).modalExamples,
                  icon: const Icon(Icons.square_outlined),
                ),
                SidebarSectionTitle(
                    text: AppLocalizations.of(context).components),
                SidebarTile(
                  icon: const Icon(Icons.ballot_outlined),
                  title: AppLocalizations.of(context).cards,
                  badgeCount: 5,
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).basic),
                    SidebarTile(title: AppLocalizations.of(context).advance),
                    SidebarTile(title: AppLocalizations.of(context).statistics),
                    SidebarTile(title: AppLocalizations.of(context).analytics),
                    SidebarTile(title: AppLocalizations.of(context).actions),
                  ],
                ),
                SidebarSectionTitle(
                    text: AppLocalizations.of(context).formsAndTables),
                SidebarTile(
                  title: AppLocalizations.of(context).formElements,
                  icon: const Icon(Icons.toggle_off_outlined),
                  children: [
                    SidebarTile(
                        title: AppLocalizations.of(context).basicInputs),
                    SidebarTile(
                        title: AppLocalizations.of(context).inputGroups),
                    SidebarTile(
                        title: AppLocalizations.of(context).customOptions),
                    SidebarTile(title: AppLocalizations.of(context).editors),
                    SidebarTile(title: AppLocalizations.of(context).fileUpload),
                    SidebarTile(title: AppLocalizations.of(context).pickers),
                    SidebarTile(
                        title: AppLocalizations.of(context).selectAndTags),
                    SidebarTile(title: AppLocalizations.of(context).sliders),
                    SidebarTile(title: AppLocalizations.of(context).switches),
                    SidebarTile(title: AppLocalizations.of(context).extras),
                  ],
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).formLayouts,
                  icon: const Icon(Icons.credit_card_outlined),
                  children: [
                    SidebarTile(
                        title: AppLocalizations.of(context).verticalForm),
                    SidebarTile(
                        title: AppLocalizations.of(context).horizontalForm),
                    SidebarTile(
                        title: AppLocalizations.of(context).stickyActions),
                  ],
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).formWizard,
                  icon: const Icon(Icons.cable_outlined),
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).numbered),
                    SidebarTile(title: AppLocalizations.of(context).icons),
                  ],
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).formValidation,
                  icon: const Icon(Icons.check_box_outlined),
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).tables,
                  icon: const Icon(Icons.table_chart_outlined),
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).dataTables,
                  icon: const Icon(Icons.apps_outlined),
                  children: [
                    SidebarTile(title: AppLocalizations.of(context).basic),
                    SidebarTile(title: AppLocalizations.of(context).advanced),
                    SidebarTile(title: AppLocalizations.of(context).extensions),
                  ],
                ),
                SidebarSectionTitle(
                    text: AppLocalizations.of(context).chartsAndMaps),
                SidebarTile(
                  title: AppLocalizations.of(context).charts,
                  icon: const Icon(Icons.pie_chart_outline),
                  children: const [],
                ),
                SidebarSectionTitle(
                    text: AppLocalizations.of(context).miscellaneous),
                SidebarTile(
                  title: AppLocalizations.of(context).raiseSupport,
                  icon: const Icon(Icons.support_outlined),
                ),
                SidebarTile(
                  title: AppLocalizations.of(context).documentation,
                  icon: const Icon(Icons.insert_drive_file_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
