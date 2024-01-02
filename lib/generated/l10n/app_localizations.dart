import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// The title of the app.
  ///
  /// In en, this message translates to:
  /// **'Vuexy Flutter Admin'**
  String get appTitle;

  /// No description provided for @dashboards.
  ///
  /// In en, this message translates to:
  /// **'Dashboards'**
  String get dashboards;

  /// No description provided for @analytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get analytics;

  /// No description provided for @crm.
  ///
  /// In en, this message translates to:
  /// **'CRM'**
  String get crm;

  /// No description provided for @frontPages.
  ///
  /// In en, this message translates to:
  /// **'Front pages'**
  String get frontPages;

  /// No description provided for @landing.
  ///
  /// In en, this message translates to:
  /// **'Landing'**
  String get landing;

  /// No description provided for @pricing.
  ///
  /// In en, this message translates to:
  /// **'Pricing'**
  String get pricing;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @helpCenter.
  ///
  /// In en, this message translates to:
  /// **'Help center'**
  String get helpCenter;

  /// No description provided for @appsAndPages.
  ///
  /// In en, this message translates to:
  /// **'Apps and pages'**
  String get appsAndPages;

  /// No description provided for @ecommerce.
  ///
  /// In en, this message translates to:
  /// **'Ecommerce'**
  String get ecommerce;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product;

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get list;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get customer;

  /// No description provided for @manageReview.
  ///
  /// In en, this message translates to:
  /// **'Manage review'**
  String get manageReview;

  /// No description provided for @referrals.
  ///
  /// In en, this message translates to:
  /// **'Referrals'**
  String get referrals;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @academy.
  ///
  /// In en, this message translates to:
  /// **'Academy'**
  String get academy;

  /// No description provided for @myCourse.
  ///
  /// In en, this message translates to:
  /// **'My course'**
  String get myCourse;

  /// No description provided for @courseDetails.
  ///
  /// In en, this message translates to:
  /// **'Course details'**
  String get courseDetails;

  /// No description provided for @fleet.
  ///
  /// In en, this message translates to:
  /// **'Fleet'**
  String get fleet;

  /// No description provided for @logistics.
  ///
  /// In en, this message translates to:
  /// **'Logistics'**
  String get logistics;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// No description provided for @invoice.
  ///
  /// In en, this message translates to:
  /// **'Invoice'**
  String get invoice;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @rolesAndPermissions.
  ///
  /// In en, this message translates to:
  /// **'Roles and permissions'**
  String get rolesAndPermissions;

  /// No description provided for @roles.
  ///
  /// In en, this message translates to:
  /// **'Roles'**
  String get roles;

  /// No description provided for @permissions.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get permissions;

  /// No description provided for @pages.
  ///
  /// In en, this message translates to:
  /// **'Pages'**
  String get pages;

  /// No description provided for @userProfile.
  ///
  /// In en, this message translates to:
  /// **'User profile'**
  String get userProfile;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account settings'**
  String get accountSettings;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @miscellaneous.
  ///
  /// In en, this message translates to:
  /// **'Miscellaneous'**
  String get miscellaneous;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @underMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Under maintenance'**
  String get underMaintenance;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get pageNotFound;

  /// No description provided for @notAuthorized.
  ///
  /// In en, this message translates to:
  /// **'Not authorized'**
  String get notAuthorized;

  /// No description provided for @authentication.
  ///
  /// In en, this message translates to:
  /// **'Authentication'**
  String get authentication;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @verifyEmail.
  ///
  /// In en, this message translates to:
  /// **'Verify email'**
  String get verifyEmail;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgotPassword;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @twoSteps.
  ///
  /// In en, this message translates to:
  /// **'Two steps'**
  String get twoSteps;

  /// No description provided for @wizardExamples.
  ///
  /// In en, this message translates to:
  /// **'Wizard examples'**
  String get wizardExamples;

  /// No description provided for @propertyListing.
  ///
  /// In en, this message translates to:
  /// **'Property listing'**
  String get propertyListing;

  /// No description provided for @createDeal.
  ///
  /// In en, this message translates to:
  /// **'Create deal'**
  String get createDeal;

  /// No description provided for @dialogExamples.
  ///
  /// In en, this message translates to:
  /// **'Dialog examples'**
  String get dialogExamples;

  /// No description provided for @uiElements.
  ///
  /// In en, this message translates to:
  /// **'UI Elements'**
  String get uiElements;

  /// No description provided for @typography.
  ///
  /// In en, this message translates to:
  /// **'Typography'**
  String get typography;

  /// No description provided for @icons.
  ///
  /// In en, this message translates to:
  /// **'Icons'**
  String get icons;

  /// No description provided for @cards.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get cards;

  /// No description provided for @basic.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get basic;

  /// No description provided for @advance.
  ///
  /// In en, this message translates to:
  /// **'Advance'**
  String get advance;

  /// No description provided for @statistics.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// No description provided for @widgets.
  ///
  /// In en, this message translates to:
  /// **'Widgets'**
  String get widgets;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @components.
  ///
  /// In en, this message translates to:
  /// **'Components'**
  String get components;

  /// No description provided for @alert.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alert;

  /// No description provided for @avatar.
  ///
  /// In en, this message translates to:
  /// **'Avatar'**
  String get avatar;

  /// No description provided for @badge.
  ///
  /// In en, this message translates to:
  /// **'Badge'**
  String get badge;

  /// No description provided for @button.
  ///
  /// In en, this message translates to:
  /// **'Button'**
  String get button;

  /// No description provided for @chip.
  ///
  /// In en, this message translates to:
  /// **'Chip'**
  String get chip;

  /// No description provided for @dialog.
  ///
  /// In en, this message translates to:
  /// **'Dialog'**
  String get dialog;

  /// No description provided for @expansionPanel.
  ///
  /// In en, this message translates to:
  /// **'Expansion panel'**
  String get expansionPanel;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @pagination.
  ///
  /// In en, this message translates to:
  /// **'Pagination'**
  String get pagination;

  /// No description provided for @progressCircular.
  ///
  /// In en, this message translates to:
  /// **'Progress circular'**
  String get progressCircular;

  /// No description provided for @progressLinear.
  ///
  /// In en, this message translates to:
  /// **'Progress linear'**
  String get progressLinear;

  /// No description provided for @snackbar.
  ///
  /// In en, this message translates to:
  /// **'Snackbar'**
  String get snackbar;

  /// No description provided for @tabs.
  ///
  /// In en, this message translates to:
  /// **'Tabs'**
  String get tabs;

  /// No description provided for @timeline.
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get timeline;

  /// No description provided for @tooltip.
  ///
  /// In en, this message translates to:
  /// **'Tooltip'**
  String get tooltip;

  /// No description provided for @extensions.
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get extensions;

  /// No description provided for @tour.
  ///
  /// In en, this message translates to:
  /// **'Tour'**
  String get tour;

  /// No description provided for @swiper.
  ///
  /// In en, this message translates to:
  /// **'Swiper'**
  String get swiper;

  /// No description provided for @formsAndTables.
  ///
  /// In en, this message translates to:
  /// **'Forms and tables'**
  String get formsAndTables;

  /// No description provided for @formElements.
  ///
  /// In en, this message translates to:
  /// **'Form elements'**
  String get formElements;

  /// No description provided for @autoComplete.
  ///
  /// In en, this message translates to:
  /// **'Auto complete'**
  String get autoComplete;

  /// No description provided for @checkbox.
  ///
  /// In en, this message translates to:
  /// **'Checkbox'**
  String get checkbox;

  /// No description provided for @combobox.
  ///
  /// In en, this message translates to:
  /// **'Combobox'**
  String get combobox;

  /// No description provided for @dateTimePicker.
  ///
  /// In en, this message translates to:
  /// **'Date time picker'**
  String get dateTimePicker;

  /// No description provided for @editors.
  ///
  /// In en, this message translates to:
  /// **'Editors'**
  String get editors;

  /// No description provided for @fileInput.
  ///
  /// In en, this message translates to:
  /// **'File input'**
  String get fileInput;

  /// No description provided for @radio.
  ///
  /// In en, this message translates to:
  /// **'Radio'**
  String get radio;

  /// No description provided for @customInput.
  ///
  /// In en, this message translates to:
  /// **'Custom input'**
  String get customInput;

  /// No description provided for @rangeSlider.
  ///
  /// In en, this message translates to:
  /// **'Range slider'**
  String get rangeSlider;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @slider.
  ///
  /// In en, this message translates to:
  /// **'Slider'**
  String get slider;

  /// No description provided for @switchString.
  ///
  /// In en, this message translates to:
  /// **'Switch'**
  String get switchString;

  /// No description provided for @textarea.
  ///
  /// In en, this message translates to:
  /// **'Textarea'**
  String get textarea;

  /// No description provided for @textfield.
  ///
  /// In en, this message translates to:
  /// **'Textfield'**
  String get textfield;

  /// No description provided for @formLayouts.
  ///
  /// In en, this message translates to:
  /// **'Form layouts'**
  String get formLayouts;

  /// No description provided for @formWizard.
  ///
  /// In en, this message translates to:
  /// **'Form wizard'**
  String get formWizard;

  /// No description provided for @numbered.
  ///
  /// In en, this message translates to:
  /// **'Numbered'**
  String get numbered;

  /// No description provided for @formValidation.
  ///
  /// In en, this message translates to:
  /// **'Form validation'**
  String get formValidation;

  /// No description provided for @tables.
  ///
  /// In en, this message translates to:
  /// **'Tables'**
  String get tables;

  /// No description provided for @simpleTable.
  ///
  /// In en, this message translates to:
  /// **'Simple table'**
  String get simpleTable;

  /// No description provided for @dataTable.
  ///
  /// In en, this message translates to:
  /// **'Data table'**
  String get dataTable;

  /// No description provided for @charts.
  ///
  /// In en, this message translates to:
  /// **'Charts'**
  String get charts;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @accessControl.
  ///
  /// In en, this message translates to:
  /// **'Access control'**
  String get accessControl;

  /// No description provided for @navLevels.
  ///
  /// In en, this message translates to:
  /// **'Nav levels'**
  String get navLevels;

  /// No description provided for @disabledMenu.
  ///
  /// In en, this message translates to:
  /// **'Disabled menu'**
  String get disabledMenu;

  /// No description provided for @raiseSupport.
  ///
  /// In en, this message translates to:
  /// **'Raise support'**
  String get raiseSupport;

  /// No description provided for @documentation.
  ///
  /// In en, this message translates to:
  /// **'Documentation'**
  String get documentation;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @billing.
  ///
  /// In en, this message translates to:
  /// **'Billing'**
  String get billing;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
