// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static String m0(min) => "Password should be at least ${min} characters";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAnAccount": MessageLookupByLibrary.simpleMessage(
            "Already have an account? Login"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "designation": MessageLookupByLibrary.simpleMessage("Designation"),
        "designationIsRequired":
            MessageLookupByLibrary.simpleMessage("Designation is required"),
        "doYouWantToExit":
            MessageLookupByLibrary.simpleMessage("Do you want to exit"),
        "dontHaveAnAccount": MessageLookupByLibrary.simpleMessage(
            "Don\'t have an account? Register"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailIsInvalid":
            MessageLookupByLibrary.simpleMessage("Email is invalid"),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("Email is required"),
        "factory": MessageLookupByLibrary.simpleMessage("Factory"),
        "factoryIsRequired":
            MessageLookupByLibrary.simpleMessage("Factory is Required"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nameIsRequired":
            MessageLookupByLibrary.simpleMessage("Name is required"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordIsRequired":
            MessageLookupByLibrary.simpleMessage("Password is required"),
        "passwordShouldBeLong": m0,
        "personalInfo": MessageLookupByLibrary.simpleMessage("Personal Info"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phoneIsRequired":
            MessageLookupByLibrary.simpleMessage("Phone is required"),
        "profilePicture": MessageLookupByLibrary.simpleMessage("Profile Photo"),
        "region": MessageLookupByLibrary.simpleMessage("Region"),
        "regionIsRequired":
            MessageLookupByLibrary.simpleMessage("Region is Required"),
        "selectRegionFirst": MessageLookupByLibrary.simpleMessage(
            "Please, select a region first"),
        "signup": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "youSelected": MessageLookupByLibrary.simpleMessage("You Selected"),
        "yourInformationWillBeLost": MessageLookupByLibrary.simpleMessage(
            "Your information will be lost.")
      };
}
