import 'package:flutter_sixvalley_ecommerce/data/model/response/language_model.dart';
import 'package:flutter_sixvalley_ecommerce/utill/images.dart';

class AppConstants {
  static const String appName = 'Kidluu';
  static const String slogan = 'E-Commerce Marketplace';
  static const String appVersion = '1.0';
  static const String baseUrl = 'https://shop.devdemo.tech';
  static const String userId = 'userId';
  static const String name = 'name';
  static const String categoriesUri = '/api/v4/categories?guest_id=1';
  static const String brandUri = '/api/v4/brands?guest_id=1';
  static const String brandProductUri = '/api/v4/brands/products/';
  static const String categoryProductUri = '/api/v4/categories/products/';
  static const String registrationUri = '/api/v4/auth/register';
  static const String loginUri = '/api/v4/auth/login';
  static const String logOut = '/api/v4/auth/logout';
  static const String latestProductUri = '/api/v4/products/latest?guest_id=1&limit=10&&offset=';
  static const String newArrivalProductUri = '/api/v4/products/latest?guest_id=1&limit=10&&offset=';
  static const String topProductUri = '/api/v4/products/top-rated?guest_id=1&limit=10&&offset=';
  static const String bestSellingProductUri = '/api/v4/products/best-sellings?guest_id=1&limit=10&offset=';
  static const String discountedProductUri = '/api/v4/products/discounted-product?guest_id=1&limit=10&&offset=';
  static const String featuredProductUri = '/api/v4/products/featured?guest_id=1&limit=10&&offset=';
  static const String homeCategoryProductUri = '/api/v4/products/home-categories?guest_id=1';
  static const String productDetailsUri = '/api/v4/products/details/';
  static const String productReviewUri = '/api/v4/products/reviews/';
  static const String searchUri = '/api/v4/products/filter';
  static const String getSuggestionProductName = '/api/v4/products/suggestion-product?guest_id=1&name=';
  static const String configUri = '/api/v4/config';
  static const String addWishListUri = '/api/v4/customer/wish-list/add?product_id=';
  static const String removeWishListUri = '/api/v4/customer/wish-list/remove?product_id=';
  static const String updateProfileUri = '/api/v4/customer/update-profile';
  static const String customerUri = '/api/v4/customer/info';
  static const String addressListUri = '/api/v4/customer/address/list';
  static const String removeAddressUri = '/api/v4/customer/address';
  static const String addAddressUri = '/api/v4/customer/address/add';
  static const String getWishListUri = '/api/v4/customer/wish-list';
  static const String supportTicketUri = '/api/v4/customer/support-ticket/create';
  static const String getBannerList = '/api/v4/banners';
  static const String relatedProductUri = '/api/v4/products/related-products/';
  static const String orderUri = '/api/v4/customer/order/list?limit=10&offset=';
  static const String orderDetailsUri = '/api/v4/customer/order/details?order_id=';
  static const String orderPlaceUri = '/api/v4/customer/order/place';
  static const String sellerUri = '/api/v4/seller?seller_id=';
  static const String sellerProductUri = '/api/v4/seller/';
  static const String topSeller = '/api/v4/seller/top';
  static const String trackingUri = '/api/v4/order/track?order_id=';
  static const String forgetPasswordUri = '/api/v4/auth/forgot-password';
  static const String getSupportTicketUri = '/api/v4/customer/support-ticket/get';
  static const String supportTicketConversationUri = '/api/v4/customer/support-ticket/conv/';
  static const String supportTicketReplyUri = '/api/v4/customer/support-ticket/reply/';
  static const String closeSupportTicketUri = '/api/v4/customer/support-ticket/close/';
  static const String submitReviewUri = '/api/v4/products/reviews/submit';
  static const String flashDealUri = '/api/v4/flash-deals';
  static const String featuredDealUri = '/api/v4/deals/featured';
  static const String flashDealProductUri = '/api/v4/flash-deals/products/';
  static const String counterUri = '/api/v4/products/counter/';
  static const String socialLinkUri = '/api/v4/products/social-share-link/';
  static const String shippingUri = '/api/v4/products/shipping-methods';
  static const String couponUri = '/api/v4/coupon/apply?code=';
  static const String messageUri = '/api/v4/customer/chat/get-messages/';
  static const String chatInfoUri = '/api/v4/customer/chat/list/';
  static const String searchChat = '/api/v4/customer/chat/search/';
  static const String sendMessageUri = '/api/v4/customer/chat/send-message/';
  static const String seenMessageUri = '/api/v4/customer/chat/seen-message/';
  static const String tokenUri = '/api/v4/customer/cm-firebase-token';
  static const String notificationUri = '/api/v4/notifications';
  static const String seenNotificationUri = '/api/v4/notifications/seen';
  static const String getCartDataUri = '/api/v4/cart';
  static const String addToCartUri = '/api/v4/cart/add';
  static const String updateCartQuantityUri = '/api/v4/cart/update';
  static const String removeFromCartUri = '/api/v4/cart/remove';
  static const String getShippingMethod = '/api/v4/shipping-method/by-seller';
  static const String chooseShippingMethod = '/api/v4/shipping-method/choose-for-order';
  static const String chosenShippingMethod = '/api/v4/shipping-method/chosen';
  static const String checkPhoneUri = '/api/v4/auth/check-phone';
  static const String resendPhoneOtpUri = '/api/v4/auth/resend-otp-check-phone';
  static const String verifyPhoneUri = '/api/v4/auth/verify-phone';
  static const String socialLoginUri = '/api/v4/auth/social-login';
  static const String checkEmailUri = '/api/v4/auth/check-email';
  static const String resendEmailOtpUri = '/api/v4/auth/resend-otp-check-email';
  static const String verifyEmailUri = '/api/v4/auth/verify-email';
  static const String resetPasswordUri = '/api/v4/auth/reset-password';
  static const String verifyOtpUri = '/api/v4/auth/verify-otp';
  static const String refundRequestUri = '/api/v4/customer/order/refund-store';
  static const String refundRequestPreReqUri = '/api/v4/customer/order/refund';
  static const String refundResultUri = '/api/v4/customer/order/refund-details';
  static const String cancelOrderUri = '/api/v4/order/cancel-order';
  static const String getSelectedShippingTypeUri = '/api/v4/shipping-method/check-shipping-type';
  static const String dealOfTheDay = '/api/v4/dealsoftheday/deal-of-the-day';
  static const String walletTransactionUri = '/api/v4/customer/wallet/list?limit=10&offset=';
  static const String loyaltyPointUri = '/api/v4/customer/loyalty/list?limit=20&offset=';
  static const String loyaltyPointConvert = '/api/v4/customer/loyalty/loyalty-exchange-currency';
  static const String deleteCustomerAccount = '/api/v4/customer/account-delete';
  static const String deliveryRestrictedCountryList = '/api/v4/customer/get-restricted-country-list';
  static const String deliveryRestrictedZipList = '/api/v4/customer/get-restricted-zip-list';
  static const String getOrderFromOrderId = '/api/v4/customer/order/get-order-by-id?order_id=';
  static const String offlinePayment = '/api/v4/customer/order/place-by-offline-payment';
  static const String walletPayment = '/api/v4/customer/order/place-by-wallet';
  static const String couponListApi = '/api/v4/coupon/list?limit=100&offset=';
  static const String sellerWiseCouponListApi = '/api/v4/coupons/';
  static const String sellerWiseBestSellingProduct = '/api/v4/seller/';
  static const String digitalPayment = '/api/v4/digital-payment';
  static const String offlinePaymentList = '/api/v4/customer/order/offline-payment-method-list';
  static const String sellerWiseCategoryList = '/api/v4/categories?seller_id=';
  static const String sellerWiseBrandList = '/api/v4/brands?seller_id=';
  //address
  static const String updateAddressUri = '/api/v4/customer/address/update/';
  static const String geocodeUri = '/api/v4/mapapi/geocode-api';
  static const String searchLocationUri = '/api/v4/mapapi/place-api-autocomplete';
  static const String placeDetailsUri = '/api/v4/mapapi/place-api-details';
  static const String distanceMatrixUri = '/api/v4/mapapi/distance-api';
  static const String chatWithDeliveryMan = '/api/v4/mapapi/distance-api';

  static const String getGuestIdUri = '/api/v4/get-guest-id';
  static const String mostDemandedProduct = '/api/v4/products/most-demanded-product?guest_id=1';
  static const String shopAgainFromRecentStore = '/api/v4/products/shop-again-product';
  static const String findWhatYouNeed = '/api/v4/categories/find-what-you-need';
  static const String orderTrack = '/api/v4/order/track-order';
  static const String addFundToWallet = '/api/v4/add-to-fund';
  static const String reorder = '/api/v4/customer/order/again';
  static const String walletBonusList = '/api/v4/customer/wallet/bonus-list';
  static const String moreStore = '/api/v4/seller/more';
  static const String justForYou = '/api/v4/products/just-for-you?guest_id=1';
  static const String mostSearching = '/api/v4/products/most-searching?guest_id=1';
  static const String contactUsUri = '/api/v4/contact-us';
  static const String attributeUri = '/api/v4/attributes';
  static const String availableCoupon = '/api/v4/coupon/applicable-list';
  static const String downloadDigitalProduct = '/api/v4/customer/order/digital-product-download/';
  static const String otpVResendForDigitalProduct = '/api/v4/customer/order/digital-product-download-otp-resend';
static const String otpVerificationForDigitalProduct = '/api/v4/customer/order/digital-product-download-otp-verify';



  static const String getCompareList = '/api/v4/customer/compare/list';
  static const String addToCompareList = '/api/v4/customer/compare/product-store';
  static const String removeAllFromCompareList = '/api/v4/customer/compare/clear-all';
  static const String replaceFromCompareList = '/api/v4/customer/compare/product-replace';
  static const String setCurrentLanguage = '/api/v4/customer/language-change';






  // sharePreference
  static const String userLoginToken = 'user_login_token';
  static const String guestId = 'guestId';
  static const String user = 'user';
  static const String userEmail = 'user_email';
  static const String userPassword = 'user_password';
  static const String homeAddress = 'home_address';
  static const String searchAddress = 'search_address';
  static const String officeAddress = 'office_address';
  static const String config = 'config';
  static const String guestMode = 'guest_mode';
  static const String currency = 'currency';
  static const String langKey = 'lang';
  static const String intro = 'intro';
  static const pi = 3.14;
  static const defaultSpread = 0.0872665;
  static const double minFilter = 0;
  static const double maxFilter = 1000000;

  // order status
  static const String pending = 'pending';
  static const String confirmed = 'confirmed';
  static const String processing = 'processing';
  static const String processed = 'processed';
  static const String delivered = 'delivered';
  static const String failed = 'failed';
  static const String returned = 'returned';
  static const String cancelled = 'canceled';
  static const String outForDelivery = 'out_for_delivery';
  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';
  static const String theme = 'theme';
  static const String topic = 'sixvalley';
  static const String userAddress = 'user_address';


  static const String get_started = "Get Started";
  static const String welcome_to_kidluu = "Welcome to Kidluu!";


  static List<LanguageModel> languages = [
    LanguageModel(imageUrl: Images.en, languageName: 'English', countryCode: 'US', languageCode: 'en'),
    LanguageModel(imageUrl: Images.ar, languageName: 'Arabic', countryCode: 'SA', languageCode: 'ar'),
    LanguageModel(imageUrl: Images.hi, languageName: 'Hindi', countryCode: 'IN', languageCode: 'hi'),
    LanguageModel(imageUrl: Images.bn, languageName: 'Bangla', countryCode: 'BD', languageCode: 'bn'),
    LanguageModel(imageUrl: Images.es, languageName: 'Spanish', countryCode: 'ES', languageCode: 'es'),
  ];
}
