import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

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
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get appName;

  /// No description provided for @heyImMykyta.
  ///
  /// In en, this message translates to:
  /// **'Hey 🔥 I\'m Mykyta.'**
  String get heyImMykyta;

  /// No description provided for @aMobileEngineer.
  ///
  /// In en, this message translates to:
  /// **'A mobile engineer with extensive experience in Flutter.'**
  String get aMobileEngineer;

  /// No description provided for @iBuildApps.
  ///
  /// In en, this message translates to:
  /// **'I build outstanding cross-platform apps.'**
  String get iBuildApps;

  /// No description provided for @workingHours.
  ///
  /// In en, this message translates to:
  /// **'4.1k+\nworking\nhours'**
  String get workingHours;

  /// No description provided for @commercialProjects.
  ///
  /// In en, this message translates to:
  /// **'5+\ncommercial\nprojects'**
  String get commercialProjects;

  /// No description provided for @technologyStack.
  ///
  /// In en, this message translates to:
  /// **'1\ntechnology\nstack'**
  String get technologyStack;

  /// No description provided for @getResume.
  ///
  /// In en, this message translates to:
  /// **'get a resume!'**
  String get getResume;

  /// No description provided for @projectsStatuses.
  ///
  /// In en, this message translates to:
  /// **'Projects Statuses.'**
  String get projectsStatuses;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @platform.
  ///
  /// In en, this message translates to:
  /// **'Platform'**
  String get platform;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @liluPhotography.
  ///
  /// In en, this message translates to:
  /// **'Lilu Photography'**
  String get liluPhotography;

  /// No description provided for @liluPhotographyDescription.
  ///
  /// In en, this message translates to:
  /// **'A website for a photographer from Austin, TX.'**
  String get liluPhotographyDescription;

  /// No description provided for @uAustin.
  ///
  /// In en, this message translates to:
  /// **'UAustin'**
  String get uAustin;

  /// No description provided for @uAustinDescription.
  ///
  /// In en, this message translates to:
  /// **'Navigation-directory app for Ukrainian businesses in Austin, TX. Created on a volunteer basis.'**
  String get uAustinDescription;

  /// No description provided for @threeWella.
  ///
  /// In en, this message translates to:
  /// **'3Wella'**
  String get threeWella;

  /// No description provided for @threeWellaDescription.
  ///
  /// In en, this message translates to:
  /// **'A meditation tool that is inspired by the approach to meditation in Thailand'**
  String get threeWellaDescription;

  /// No description provided for @heisenbergCafeMenu.
  ///
  /// In en, this message translates to:
  /// **'Heseinberg Cafe Menu'**
  String get heisenbergCafeMenu;

  /// No description provided for @heisenbergCafeMenuDescription.
  ///
  /// In en, this message translates to:
  /// **'A website for a cafe\'s menu.'**
  String get heisenbergCafeMenuDescription;

  /// No description provided for @groovifi.
  ///
  /// In en, this message translates to:
  /// **'Groovifi'**
  String get groovifi;

  /// No description provided for @groovifiDescription.
  ///
  /// In en, this message translates to:
  /// **'A music playlist generator for Spotify users.'**
  String get groovifiDescription;

  /// No description provided for @jiq.
  ///
  /// In en, this message translates to:
  /// **'Java Interview Questions'**
  String get jiq;

  /// No description provided for @jiqDescription.
  ///
  /// In en, this message translates to:
  /// **'An app that is designed to prepare people for technical interviews.'**
  String get jiqDescription;

  /// No description provided for @financeFlow.
  ///
  /// In en, this message translates to:
  /// **'Finance Flow'**
  String get financeFlow;

  /// No description provided for @financeFlowDescription.
  ///
  /// In en, this message translates to:
  /// **'An app that helps users manage their personal finances.'**
  String get financeFlowDescription;

  /// No description provided for @iOS.
  ///
  /// In en, this message translates to:
  /// **'iOS'**
  String get iOS;

  /// No description provided for @android.
  ///
  /// In en, this message translates to:
  /// **'Android'**
  String get android;

  /// No description provided for @web.
  ///
  /// In en, this message translates to:
  /// **'Web'**
  String get web;

  /// No description provided for @toBeReleased.
  ///
  /// In en, this message translates to:
  /// **'To be released'**
  String get toBeReleased;

  /// No description provided for @onGoing.
  ///
  /// In en, this message translates to:
  /// **'On going'**
  String get onGoing;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @paused.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get paused;

  /// No description provided for @abandoned.
  ///
  /// In en, this message translates to:
  /// **'Abandoned'**
  String get abandoned;

  /// No description provided for @theUnitedStates.
  ///
  /// In en, this message translates to:
  /// **'The United States'**
  String get theUnitedStates;

  /// No description provided for @thailand.
  ///
  /// In en, this message translates to:
  /// **'Thailand'**
  String get thailand;

  /// No description provided for @ukraine.
  ///
  /// In en, this message translates to:
  /// **'Ukraine'**
  String get ukraine;

  /// No description provided for @israel.
  ///
  /// In en, this message translates to:
  /// **'Israel'**
  String get israel;

  /// No description provided for @dataGridDoesntInclude.
  ///
  /// In en, this message translates to:
  /// **'* the data grid doesn\'t include projects under NDA.'**
  String get dataGridDoesntInclude;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @apparentlyMyColleagues.
  ///
  /// In en, this message translates to:
  /// **'Apparently, my colleagues love to work with me!'**
  String get apparentlyMyColleagues;

  /// No description provided for @bogdanReference.
  ///
  /// In en, this message translates to:
  /// **'\"Mykyta has an impressive understanding of Flutter and Dart. His expertise has been invaluable in creating high-quality and robust applications. In addition to his technical skills, Mykyta is also an excellent communicator. He is always willing to lend a helping hand and is patient in answering any questions or concerns.\"'**
  String get bogdanReference;

  /// No description provided for @bogdanAksonenko.
  ///
  /// In en, this message translates to:
  /// **'Bogdan Aksonenko, CEO'**
  String get bogdanAksonenko;

  /// No description provided for @proAreaDigitalAgency.
  ///
  /// In en, this message translates to:
  /// **'ProArea Digital Agency'**
  String get proAreaDigitalAgency;

  /// No description provided for @yaroslavReference.
  ///
  /// In en, this message translates to:
  /// **'\"Without a doubt Mykyta is a great specialist, one of the best team players I have ever worked with. He can quickly adapt to new challenges, knows how to find an approach to a client, as well as excellent and fast learner of new skills. I had the fortune to work with Mykyta on several successful projects. He always showed his ability not only to complete tasks but also to solve problems on projects and propose great solutions.\"'**
  String get yaroslavReference;

  /// No description provided for @yaroslavSerdiuchenko.
  ///
  /// In en, this message translates to:
  /// **'Yaroslav Serdiuchenko, Project Manager'**
  String get yaroslavSerdiuchenko;

  /// No description provided for @lineUp.
  ///
  /// In en, this message translates to:
  /// **'LineUp'**
  String get lineUp;

  /// No description provided for @anastasiiaReference.
  ///
  /// In en, this message translates to:
  /// **'\"Desire for proficiency and education makes Mykyta a valuable asset to the team. His work is always top-notch, and he is always welcoming to feedback and making improvements. Working with Mykyta has been a great experience for me as I learned many soft skills from him. Highly recommended.\"'**
  String get anastasiiaReference;

  /// No description provided for @anastasiiaChervinska.
  ///
  /// In en, this message translates to:
  /// **'Anastasiia Chervinska, Flutter Developer'**
  String get anastasiiaChervinska;

  /// No description provided for @einDesEin.
  ///
  /// In en, this message translates to:
  /// **'ein-des-ein'**
  String get einDesEin;

  /// No description provided for @oleksiiReference.
  ///
  /// In en, this message translates to:
  /// **'\"Mykyta is able to work with people, think critically, adapt and learn quickly, and does his job with a deep focus on the task at hand. One of the advantages of working with Mykyta is his ability to quickly find and offer a solution to a problem on a project.\"'**
  String get oleksiiReference;

  /// No description provided for @oleksiiBykov.
  ///
  /// In en, this message translates to:
  /// **'Oleksii Bykov, UI/UX Designer'**
  String get oleksiiBykov;

  /// No description provided for @getInTouch.
  ///
  /// In en, this message translates to:
  /// **'Do you wanna get in touch?'**
  String get getInTouch;

  /// No description provided for @letsChat.
  ///
  /// In en, this message translates to:
  /// **'Let\'s chat!'**
  String get letsChat;

  /// No description provided for @dropMeEmailAt.
  ///
  /// In en, this message translates to:
  /// **'or drop me an email at'**
  String get dropMeEmailAt;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'mykyta.kovalenko24@gmail.com'**
  String get email;

  /// No description provided for @projectsOverview.
  ///
  /// In en, this message translates to:
  /// **'Projects Overview'**
  String get projectsOverview;

  /// No description provided for @projectsStructure.
  ///
  /// In en, this message translates to:
  /// **'Projects Structure'**
  String get projectsStructure;

  /// No description provided for @resources.
  ///
  /// In en, this message translates to:
  /// **'Resources'**
  String get resources;

  /// No description provided for @mK.
  ///
  /// In en, this message translates to:
  /// **'MK'**
  String get mK;

  /// No description provided for @urlLinkedIn.
  ///
  /// In en, this message translates to:
  /// **'https://www.linkedin.com/in/mykyta-kovalenko232/'**
  String get urlLinkedIn;

  /// No description provided for @urlGitHub.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/mykyta-kovalenko'**
  String get urlGitHub;

  /// No description provided for @urlInstagram.
  ///
  /// In en, this message translates to:
  /// **'https://www.instagram.com/keyofvictory/'**
  String get urlInstagram;

  /// No description provided for @urlProArea.
  ///
  /// In en, this message translates to:
  /// **'https://proarea.com/'**
  String get urlProArea;

  /// No description provided for @urlEinDesEin.
  ///
  /// In en, this message translates to:
  /// **'https://ein-des-ein.com/'**
  String get urlEinDesEin;

  /// No description provided for @urlLineUp.
  ///
  /// In en, this message translates to:
  /// **'https://lineup.ua/'**
  String get urlLineUp;

  /// No description provided for @urlContactInformation.
  ///
  /// In en, this message translates to:
  /// **'https://forms.gle/2hHy8weDxgG2R9nd9'**
  String get urlContactInformation;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
