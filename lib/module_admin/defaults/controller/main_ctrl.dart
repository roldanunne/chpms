import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainController extends GetxController {

  final storage = GetStorage();

  
  var isAnimated = false.obs;
  var isAuthenticating = true.obs;
  var isAuthenticated = false.obs;

  var profileName = ''.obs;
  
  var pages = 0.obs;

  var isRatingLoaded = false.obs;
  
  var isTwitter = false.obs;
  var nameTwitter = ''.obs;
  var isFacebook = false.obs;
  var nameFacebook = ''.obs;
  var isInstagram = false.obs;
  var nameInstagram = ''.obs;
  var isGoogle = false.obs;
  var nameGoogle = ''.obs;
  var isLinkedIn = false.obs;
  var nameLinkedIn = ''.obs;

  // Get More Connection Requirement
  var isConnectedFbAds = false.obs;
  var isConnectedSendgrid = false.obs;
  var isConnectedWhatsapp = false.obs;
  var privacyUrl = ''.obs;
  
  // Global varialble loader
  var isLoadingCustomer = false.obs;
  var isLoadingBooking = false.obs;
  var isLoadingCampaignUpcoming = false.obs;
  var isLoadingCampaignPrevious = false.obs;
  var isLoadingNotification = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    loadInitialized();
  }

  loadInitialized() async {
  }

  

}
