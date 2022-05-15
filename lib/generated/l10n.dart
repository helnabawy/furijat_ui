// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `en`
  String get locale {
    return Intl.message(
      'en',
      name: 'locale',
      desc:
          'This locale Indicates this is For English Languages and Text Direction From Left to Right',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Tourist`
  String get tourist {
    return Intl.message(
      'Tourist',
      name: 'tourist',
      desc: '',
      args: [],
    );
  }

  /// `Tour Guide`
  String get tourguide {
    return Intl.message(
      'Tour Guide',
      name: 'tourguide',
      desc: '',
      args: [],
    );
  }

  /// `Tour Guides`
  String get tourguides {
    return Intl.message(
      'Tour Guides',
      name: 'tourguides',
      desc: '',
      args: [],
    );
  }

  /// `Page Not Found`
  String get pageNotFound {
    return Intl.message(
      'Page Not Found',
      name: 'pageNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Login With Mobile`
  String get logWithMobile {
    return Intl.message(
      'Login With Mobile',
      name: 'logWithMobile',
      desc: '',
      args: [],
    );
  }

  /// `Login With Email`
  String get logWithEmail {
    return Intl.message(
      'Login With Email',
      name: 'logWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login By`
  String get loginBy {
    return Intl.message(
      'Login By',
      name: 'loginBy',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get profile {
    return Intl.message(
      'My Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Skip Login`
  String get skipLogin {
    return Intl.message(
      'Skip Login',
      name: 'skipLogin',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Register New Account`
  String get registerNewAccount {
    return Intl.message(
      'Register New Account',
      name: 'registerNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Do Not have Account?  `
  String get doNotHaveAccount {
    return Intl.message(
      'Do Not have Account?  ',
      name: 'doNotHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message(
      'See All',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Edit Information`
  String get editInfo {
    return Intl.message(
      'Edit Information',
      name: 'editInfo',
      desc: '',
      args: [],
    );
  }

  /// `Edit Phone`
  String get editPhone {
    return Intl.message(
      'Edit Phone',
      name: 'editPhone',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Phone Number`
  String get enterPhone {
    return Intl.message(
      'Please Enter Your Phone Number',
      name: 'enterPhone',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Code sent to you`
  String get enterCode {
    return Intl.message(
      'Please Enter Your Code sent to you',
      name: 'enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Activation Code`
  String get activationCode {
    return Intl.message(
      'Activation Code',
      name: 'activationCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message(
      'Resend Code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get username {
    return Intl.message(
      'User Name',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Birth Place`
  String get birthPlace {
    return Intl.message(
      'Birth Place',
      name: 'birthPlace',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Please Complete Register Data`
  String get completeRegisterData {
    return Intl.message(
      'Please Complete Register Data',
      name: 'completeRegisterData',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Trips`
  String get trips {
    return Intl.message(
      'Trips',
      name: 'trips',
      desc: '',
      args: [],
    );
  }

  /// `Payment Information`
  String get paymentInfo {
    return Intl.message(
      'Payment Information',
      name: 'paymentInfo',
      desc: '',
      args: [],
    );
  }

  /// `show Tourguides in `
  String get searchTourguideIn {
    return Intl.message(
      'show Tourguides in ',
      name: 'searchTourguideIn',
      desc: '',
      args: [],
    );
  }

  /// `show Trips in `
  String get searchTripsIn {
    return Intl.message(
      'show Trips in ',
      name: 'searchTripsIn',
      desc: '',
      args: [],
    );
  }

  /// `There is an error Occured, Try again later.`
  String get errorOccured {
    return Intl.message(
      'There is an error Occured, Try again later.',
      name: 'errorOccured',
      desc: '',
      args: [],
    );
  }

  /// `Receive Offers and Notifications`
  String get receiveNotifications {
    return Intl.message(
      'Receive Offers and Notifications',
      name: 'receiveNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Visible`
  String get visible {
    return Intl.message(
      'Visible',
      name: 'visible',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Policy`
  String get policy {
    return Intl.message(
      'Policy',
      name: 'policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Pages`
  String get pages {
    return Intl.message(
      'Pages',
      name: 'pages',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLang {
    return Intl.message(
      'Change Language',
      name: 'changeLang',
      desc: '',
      args: [],
    );
  }

  /// `Where do you want to go`
  String get whereYouGo {
    return Intl.message(
      'Where do you want to go',
      name: 'whereYouGo',
      desc: '',
      args: [],
    );
  }

  /// `Explore many tour guides over the world`
  String get exploreTourguides {
    return Intl.message(
      'Explore many tour guides over the world',
      name: 'exploreTourguides',
      desc: '',
      args: [],
    );
  }

  /// `Connect with tour guides over the world`
  String get connectTourguides {
    return Intl.message(
      'Connect with tour guides over the world',
      name: 'connectTourguides',
      desc: '',
      args: [],
    );
  }

  /// `Indoor Trips`
  String get indoorTrips {
    return Intl.message(
      'Indoor Trips',
      name: 'indoorTrips',
      desc: '',
      args: [],
    );
  }

  /// `Global Trips`
  String get globalTrips {
    return Intl.message(
      'Global Trips',
      name: 'globalTrips',
      desc: '',
      args: [],
    );
  }

  /// `All Countries`
  String get allCountries {
    return Intl.message(
      'All Countries',
      name: 'allCountries',
      desc: '',
      args: [],
    );
  }

  /// `Plan For Your Trip`
  String get planTrip {
    return Intl.message(
      'Plan For Your Trip',
      name: 'planTrip',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want logout from your account?`
  String get logoutDesc {
    return Intl.message(
      'Are you sure you want logout from your account?',
      name: 'logoutDesc',
      desc: '',
      args: [],
    );
  }

  /// `Ratings`
  String get ratings {
    return Intl.message(
      'Ratings',
      name: 'ratings',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message(
      'Rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `Suggestions`
  String get suggestions {
    return Intl.message(
      'Suggestions',
      name: 'suggestions',
      desc: '',
      args: [],
    );
  }

  /// `Receive Suggestions`
  String get getSuggestion {
    return Intl.message(
      'Receive Suggestions',
      name: 'getSuggestion',
      desc: '',
      args: [],
    );
  }

  /// `We are pleased to receive our clients suggestions`
  String get suggestionSlug {
    return Intl.message(
      'We are pleased to receive our clients suggestions',
      name: 'suggestionSlug',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Your message...`
  String get messageText {
    return Intl.message(
      'Your message...',
      name: 'messageText',
      desc: '',
      args: [],
    );
  }

  /// `you have not any Notifications yet`
  String get noNotifications {
    return Intl.message(
      'you have not any Notifications yet',
      name: 'noNotifications',
      desc: '',
      args: [],
    );
  }

  /// `No Chats`
  String get noChats {
    return Intl.message(
      'No Chats',
      name: 'noChats',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Do you want save your edits?`
  String get editConfirmText {
    return Intl.message(
      'Do you want save your edits?',
      name: 'editConfirmText',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Country Code`
  String get countryCode {
    return Intl.message(
      'Country Code',
      name: 'countryCode',
      desc: '',
      args: [],
    );
  }

  /// `Processing Trips`
  String get processingTrips {
    return Intl.message(
      'Processing Trips',
      name: 'processingTrips',
      desc: '',
      args: [],
    );
  }

  /// `New Trips`
  String get newTrips {
    return Intl.message(
      'New Trips',
      name: 'newTrips',
      desc: '',
      args: [],
    );
  }

  /// `Finished Trips`
  String get finishedTrips {
    return Intl.message(
      'Finished Trips',
      name: 'finishedTrips',
      desc: '',
      args: [],
    );
  }

  /// `Trip To: `
  String get tripTo {
    return Intl.message(
      'Trip To: ',
      name: 'tripTo',
      desc: '',
      args: [],
    );
  }

  /// `Welcome All`
  String get welcomeAll {
    return Intl.message(
      'Welcome All',
      name: 'welcomeAll',
      desc: '',
      args: [],
    );
  }

  /// `Welcome\n .Join us to get the Services You want.`
  String get welcomeScreenSubtitle1 {
    return Intl.message(
      'Welcome\n .Join us to get the Services You want.',
      name: 'welcomeScreenSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome\n .Join us to get the Services You want.`
  String get welcomeScreenSubtitle2 {
    return Intl.message(
      'Welcome\n .Join us to get the Services You want.',
      name: 'welcomeScreenSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome\n .Join us to get the Services You want.`
  String get welcomeScreenSubtitle3 {
    return Intl.message(
      'Welcome\n .Join us to get the Services You want.',
      name: 'welcomeScreenSubtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Welcome\n .Join us to get the Services You want.`
  String get welcomeScreenSubtitle4 {
    return Intl.message(
      'Welcome\n .Join us to get the Services You want.',
      name: 'welcomeScreenSubtitle4',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chatWith {
    return Intl.message(
      'Chat',
      name: 'chatWith',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Years`
  String get years {
    return Intl.message(
      'Years',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `Per Day`
  String get perDay {
    return Intl.message(
      'Per Day',
      name: 'perDay',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Arrival Date`
  String get arrivalDate {
    return Intl.message(
      'Arrival Date',
      name: 'arrivalDate',
      desc: '',
      args: [],
    );
  }

  /// `Departure Date`
  String get departureDate {
    return Intl.message(
      'Departure Date',
      name: 'departureDate',
      desc: '',
      args: [],
    );
  }

  /// `Residential Country`
  String get residentialCountry {
    return Intl.message(
      'Residential Country',
      name: 'residentialCountry',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Driving Car`
  String get drivingCar {
    return Intl.message(
      'Driving Car',
      name: 'drivingCar',
      desc: '',
      args: [],
    );
  }

  /// `License`
  String get license {
    return Intl.message(
      'License',
      name: 'license',
      desc: '',
      args: [],
    );
  }

  /// `Payed`
  String get payed {
    return Intl.message(
      'Payed',
      name: 'payed',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Change Currency`
  String get changeCurrency {
    return Intl.message(
      'Change Currency',
      name: 'changeCurrency',
      desc: '',
      args: [],
    );
  }

  /// `No Trips`
  String get noTrips {
    return Intl.message(
      'No Trips',
      name: 'noTrips',
      desc: '',
      args: [],
    );
  }

  /// `We are happy to receive suggestions and inquires from our clients`
  String get suggestionScreenSlug {
    return Intl.message(
      'We are happy to receive suggestions and inquires from our clients',
      name: 'suggestionScreenSlug',
      desc: '',
      args: [],
    );
  }

  /// `Trip Details`
  String get tripDetails {
    return Intl.message(
      'Trip Details',
      name: 'tripDetails',
      desc: '',
      args: [],
    );
  }

  /// `Card Name`
  String get cardName {
    return Intl.message(
      'Card Name',
      name: 'cardName',
      desc: '',
      args: [],
    );
  }

  /// `Card Password`
  String get cardPassword {
    return Intl.message(
      'Card Password',
      name: 'cardPassword',
      desc: '',
      args: [],
    );
  }

  /// `Trip Purpose`
  String get tripPurpose {
    return Intl.message(
      'Trip Purpose',
      name: 'tripPurpose',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Photo Gallery`
  String get photoGallery {
    return Intl.message(
      'Photo Gallery',
      name: 'photoGallery',
      desc: '',
      args: [],
    );
  }

  /// `Card Id`
  String get cardId {
    return Intl.message(
      'Card Id',
      name: 'cardId',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message(
      'Expiry Date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Payment Card has been confirmed.`
  String get paymentCardConfirmed {
    return Intl.message(
      'Payment Card has been confirmed.',
      name: 'paymentCardConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `We confirmed your Trip to `
  String get yourConfirmedTripTo {
    return Intl.message(
      'We confirmed your Trip to ',
      name: 'yourConfirmedTripTo',
      desc: '',
      args: [],
    );
  }

  /// ` with Tourguide `
  String get withTourGuide {
    return Intl.message(
      ' with Tourguide ',
      name: 'withTourGuide',
      desc: '',
      args: [],
    );
  }

  /// `Tour Programs`
  String get tourPrograms {
    return Intl.message(
      'Tour Programs',
      name: 'tourPrograms',
      desc: '',
      args: [],
    );
  }

  /// `Albums`
  String get albums {
    return Intl.message(
      'Albums',
      name: 'albums',
      desc: '',
      args: [],
    );
  }

  /// `Add Tour Program`
  String get addTourProgram {
    return Intl.message(
      'Add Tour Program',
      name: 'addTourProgram',
      desc: '',
      args: [],
    );
  }

  /// `Edit Tour Program`
  String get editTourProgram {
    return Intl.message(
      'Edit Tour Program',
      name: 'editTourProgram',
      desc: '',
      args: [],
    );
  }

  /// `Add Album`
  String get addAlbum {
    return Intl.message(
      'Add Album',
      name: 'addAlbum',
      desc: '',
      args: [],
    );
  }

  /// `Complete Information`
  String get completeInfo {
    return Intl.message(
      'Complete Information',
      name: 'completeInfo',
      desc: '',
      args: [],
    );
  }

  /// `Program Purpose`
  String get programPurpose {
    return Intl.message(
      'Program Purpose',
      name: 'programPurpose',
      desc: '',
      args: [],
    );
  }

  /// `Write Rating`
  String get writeRating {
    return Intl.message(
      'Write Rating',
      name: 'writeRating',
      desc: '',
      args: [],
    );
  }

  /// `program Description`
  String get programDescription {
    return Intl.message(
      'program Description',
      name: 'programDescription',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Id Number`
  String get idNumber {
    return Intl.message(
      'Id Number',
      name: 'idNumber',
      desc: '',
      args: [],
    );
  }

  /// `Upload Id`
  String get uploadId {
    return Intl.message(
      'Upload Id',
      name: 'uploadId',
      desc: '',
      args: [],
    );
  }

  /// `Do You Have Driving License?`
  String get doYouHaveDrivingLicense {
    return Intl.message(
      'Do You Have Driving License?',
      name: 'doYouHaveDrivingLicense',
      desc: '',
      args: [],
    );
  }

  /// `Upload Driving License`
  String get uploadDriving {
    return Intl.message(
      'Upload Driving License',
      name: 'uploadDriving',
      desc: '',
      args: [],
    );
  }

  /// `Do You Have a Car?`
  String get doYouHaveCar {
    return Intl.message(
      'Do You Have a Car?',
      name: 'doYouHaveCar',
      desc: '',
      args: [],
    );
  }

  /// `Upload Car Photo`
  String get uploadCar {
    return Intl.message(
      'Upload Car Photo',
      name: 'uploadCar',
      desc: '',
      args: [],
    );
  }

  /// `Album Name`
  String get albumName {
    return Intl.message(
      'Album Name',
      name: 'albumName',
      desc: '',
      args: [],
    );
  }

  /// `Album Description`
  String get albumDescription {
    return Intl.message(
      'Album Description',
      name: 'albumDescription',
      desc: '',
      args: [],
    );
  }

  /// `Upload Photo`
  String get uploadPhoto {
    return Intl.message(
      'Upload Photo',
      name: 'uploadPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Mobile and Password do not match.`
  String get loginFormErrorMsg {
    return Intl.message(
      'Mobile and Password do not match.',
      name: 'loginFormErrorMsg',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `You have entered Wrong Code.`
  String get codeError {
    return Intl.message(
      'You have entered Wrong Code.',
      name: 'codeError',
      desc: '',
      args: [],
    );
  }

  /// `Error while Sending Code`
  String get errorSendingCode {
    return Intl.message(
      'Error while Sending Code',
      name: 'errorSendingCode',
      desc: '',
      args: [],
    );
  }

  /// `You mobile `
  String get yourMobile {
    return Intl.message(
      'You mobile ',
      name: 'yourMobile',
      desc: '',
      args: [],
    );
  }

  /// ` is not registered, you can create new account with this number.`
  String get mobileNotRegistered {
    return Intl.message(
      ' is not registered, you can create new account with this number.',
      name: 'mobileNotRegistered',
      desc: '',
      args: [],
    );
  }

  /// `The Mobile you have eneterd is not Found.`
  String get mobileNotFound {
    return Intl.message(
      'The Mobile you have eneterd is not Found.',
      name: 'mobileNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Proceed`
  String get proceed {
    return Intl.message(
      'Proceed',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number is Exists, Try login instead`
  String get mobileExists {
    return Intl.message(
      'Mobile Number is Exists, Try login instead',
      name: 'mobileExists',
      desc: '',
      args: [],
    );
  }

  /// `Enter New Password and the code you recieved on your mobile`
  String get enterNewPass {
    return Intl.message(
      'Enter New Password and the code you recieved on your mobile',
      name: 'enterNewPass',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `You have to log with your account first to see this page.`
  String get youHaveToLoginIn {
    return Intl.message(
      'You have to log with your account first to see this page.',
      name: 'youHaveToLoginIn',
      desc: '',
      args: [],
    );
  }

  /// `About App`
  String get aboutApp {
    return Intl.message(
      'About App',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get chooseLang {
    return Intl.message(
      'Choose Language',
      name: 'chooseLang',
      desc: '',
      args: [],
    );
  }

  /// `Choose City`
  String get chooseCity {
    return Intl.message(
      'Choose City',
      name: 'chooseCity',
      desc: '',
      args: [],
    );
  }

  /// `No Items in your Favorites`
  String get noFavorites {
    return Intl.message(
      'No Items in your Favorites',
      name: 'noFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Reservations`
  String get reservations {
    return Intl.message(
      'Reservations',
      name: 'reservations',
      desc: '',
      args: [],
    );
  }

  /// `Saudy Ryal`
  String get sar {
    return Intl.message(
      'Saudy Ryal',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `Incoming Reservations`
  String get incomingReservations {
    return Intl.message(
      'Incoming Reservations',
      name: 'incomingReservations',
      desc: '',
      args: [],
    );
  }

  /// `Previous Reservations`
  String get previousReservations {
    return Intl.message(
      'Previous Reservations',
      name: 'previousReservations',
      desc: '',
      args: [],
    );
  }

  /// `Idle Reservations`
  String get idleReservations {
    return Intl.message(
      'Idle Reservations',
      name: 'idleReservations',
      desc: '',
      args: [],
    );
  }

  /// `No Reservations`
  String get noReservations {
    return Intl.message(
      'No Reservations',
      name: 'noReservations',
      desc: '',
      args: [],
    );
  }

  /// `Most Famous`
  String get mostFamous {
    return Intl.message(
      'Most Famous',
      name: 'mostFamous',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Search`
  String get advancedSearch {
    return Intl.message(
      'Advanced Search',
      name: 'advancedSearch',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Lowest Price`
  String get lowestPrice {
    return Intl.message(
      'Lowest Price',
      name: 'lowestPrice',
      desc: '',
      args: [],
    );
  }

  /// `Highest Price`
  String get highestPrice {
    return Intl.message(
      'Highest Price',
      name: 'highestPrice',
      desc: '',
      args: [],
    );
  }

  /// `Search by Service Name or Provider`
  String get searchByServiceOrProvider {
    return Intl.message(
      'Search by Service Name or Provider',
      name: 'searchByServiceOrProvider',
      desc: '',
      args: [],
    );
  }

  /// `Book the beauty salons closest to you`
  String get bookNeraest {
    return Intl.message(
      'Book the beauty salons closest to you',
      name: 'bookNeraest',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get closed {
    return Intl.message(
      'Closed',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `Book a Service`
  String get bookService {
    return Intl.message(
      'Book a Service',
      name: 'bookService',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Booking`
  String get confirmBooking {
    return Intl.message(
      'Confirm Booking',
      name: 'confirmBooking',
      desc: '',
      args: [],
    );
  }

  /// `Select Time`
  String get selectTime {
    return Intl.message(
      'Select Time',
      name: 'selectTime',
      desc: '',
      args: [],
    );
  }

  /// `Number Of People`
  String get numberOfPeople {
    return Intl.message(
      'Number Of People',
      name: 'numberOfPeople',
      desc: '',
      args: [],
    );
  }

  /// `Share your Experience`
  String get shareExp {
    return Intl.message(
      'Share your Experience',
      name: 'shareExp',
      desc: '',
      args: [],
    );
  }

  /// `Send Rating`
  String get sendRating {
    return Intl.message(
      'Send Rating',
      name: 'sendRating',
      desc: '',
      args: [],
    );
  }

  /// `Your Rating has been added succesfully`
  String get ratingAdded {
    return Intl.message(
      'Your Rating has been added succesfully',
      name: 'ratingAdded',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continu {
    return Intl.message(
      'Continue',
      name: 'continu',
      desc: '',
      args: [],
    );
  }

  /// `Booking Id`
  String get bookingId {
    return Intl.message(
      'Booking Id',
      name: 'bookingId',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
