import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/product_tour_one_screen/product_tour_one_screen.dart';
import '../presentation/product_tour_one_screen/binding/product_tour_one_binding.dart';
import '../presentation/product_tour_two_screen/product_tour_two_screen.dart';
import '../presentation/product_tour_two_screen/binding/product_tour_two_binding.dart';
import '../presentation/product_tour_three_screen/product_tour_three_screen.dart';
import '../presentation/product_tour_three_screen/binding/product_tour_three_binding.dart';
import '../presentation/featured_estates_screen/featured_estates_screen.dart';
import '../presentation/featured_estates_screen/binding/featured_estates_binding.dart';
import '../presentation/real_estates_list_by_category_screen/real_estates_list_by_category_screen.dart';
import '../presentation/real_estates_list_by_category_screen/binding/real_estates_list_by_category_binding.dart';
import '../presentation/top_locations_screen/top_locations_screen.dart';
import '../presentation/top_locations_screen/binding/top_locations_binding.dart';
import '../presentation/top_locations_location_detail_screen/top_locations_location_detail_screen.dart';
import '../presentation/top_locations_location_detail_screen/binding/top_locations_location_detail_binding.dart';
import '../presentation/top_agents_screen/top_agents_screen.dart';
import '../presentation/top_agents_screen/binding/top_agents_binding.dart';
import '../presentation/top_agents_profile_detail_tab_container_screen/top_agents_profile_detail_tab_container_screen.dart';
import '../presentation/top_agents_profile_detail_tab_container_screen/binding/top_agents_profile_detail_tab_container_binding.dart';
import '../presentation/review_empty_screen/review_empty_screen.dart';
import '../presentation/review_empty_screen/binding/review_empty_binding.dart';
import '../presentation/review_fill_screen/review_fill_screen.dart';
import '../presentation/review_fill_screen/binding/review_fill_binding.dart';
import '../presentation/summary_screen/summary_screen.dart';
import '../presentation/summary_screen/binding/summary_binding.dart';
import '../presentation/form_detail_screen/form_detail_screen.dart';
import '../presentation/form_detail_screen/binding/form_detail_binding.dart';
import '../presentation/add_location_screen/add_location_screen.dart';
import '../presentation/add_location_screen/binding/add_location_binding.dart';
import '../presentation/add_photos_screen/add_photos_screen.dart';
import '../presentation/add_photos_screen/binding/add_photos_binding.dart';
import '../presentation/extra_information_screen/extra_information_screen.dart';
import '../presentation/extra_information_screen/binding/extra_information_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/form_empty_screen/form_empty_screen.dart';
import '../presentation/form_empty_screen/binding/form_empty_binding.dart';
import '../presentation/notification_list_tab_container_screen/notification_list_tab_container_screen.dart';
import '../presentation/notification_list_tab_container_screen/binding/notification_list_tab_container_binding.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/chat_screen/binding/chat_binding.dart';
import '../presentation/call_screen/call_screen.dart';
import '../presentation/call_screen/binding/call_binding.dart';
import '../presentation/favourite_empty_screen/favourite_empty_screen.dart';
import '../presentation/favourite_empty_screen/binding/favourite_empty_binding.dart';
import '../presentation/horizontal_screen/horizontal_screen.dart';
import '../presentation/horizontal_screen/binding/horizontal_binding.dart';
import '../presentation/register_form_empty_screen/register_form_empty_screen.dart';
import '../presentation/register_form_empty_screen/binding/register_form_empty_binding.dart';
import '../presentation/form_otp_screen/form_otp_screen.dart';
import '../presentation/form_otp_screen/binding/form_otp_binding.dart';
import '../presentation/empty_map_screen/empty_map_screen.dart';
import '../presentation/empty_map_screen/binding/empty_map_binding.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import '../presentation/all_reviews_tab_container_screen/all_reviews_tab_container_screen.dart';
import '../presentation/all_reviews_tab_container_screen/binding/all_reviews_tab_container_binding.dart';
import '../presentation/empty_search_screen/empty_search_screen.dart';
import '../presentation/empty_search_screen/binding/empty_search_binding.dart';
import '../presentation/search_result_screen/search_result_screen.dart';
import '../presentation/search_result_screen/binding/search_result_binding.dart';
import '../presentation/filter_choose_location_screen/filter_choose_location_screen.dart';
import '../presentation/filter_choose_location_screen/binding/filter_choose_location_binding.dart';
import '../presentation/result_filter_screen/result_filter_screen.dart';
import '../presentation/result_filter_screen/binding/result_filter_binding.dart';
import '../presentation/location_empty_screen/location_empty_screen.dart';
import '../presentation/location_empty_screen/binding/location_empty_binding.dart';
import '../presentation/location_choose_location_screen/location_choose_location_screen.dart';
import '../presentation/location_choose_location_screen/binding/location_choose_location_binding.dart';
import '../presentation/location_fill_screen/location_fill_screen.dart';
import '../presentation/location_fill_screen/binding/location_fill_binding.dart';
import '../presentation/preferable_screen/preferable_screen.dart';
import '../presentation/preferable_screen/binding/preferable_binding.dart';
import '../presentation/preferable_selected_screen/preferable_selected_screen.dart';
import '../presentation/preferable_selected_screen/binding/preferable_selected_binding.dart';
import '../presentation/payment_empty_tab_container_screen/payment_empty_tab_container_screen.dart';
import '../presentation/payment_empty_tab_container_screen/binding/payment_empty_tab_container_binding.dart';
import '../presentation/history_detail_screen/history_detail_screen.dart';
import '../presentation/history_detail_screen/binding/history_detail_binding.dart';
import '../presentation/add_review_empty_screen/add_review_empty_screen.dart';
import '../presentation/add_review_empty_screen/binding/add_review_empty_binding.dart';
import '../presentation/add_review_fill_screen/add_review_fill_screen.dart';
import '../presentation/add_review_fill_screen/binding/add_review_fill_binding.dart';
import '../presentation/user_empty_screen/user_empty_screen.dart';
import '../presentation/user_empty_screen/binding/user_empty_binding.dart';
import '../presentation/edit_form_screen/edit_form_screen.dart';
import '../presentation/edit_form_screen/binding/edit_form_binding.dart';
import '../presentation/property_details_screen/property_details_screen.dart';
import '../presentation/property_details_screen/binding/property_details_binding.dart';
import '../presentation/view_screen/view_screen.dart';
import '../presentation/view_screen/binding/view_binding.dart';
import '../presentation/view_on_map_screen/view_on_map_screen.dart';
import '../presentation/view_on_map_screen/binding/view_on_map_binding.dart';
import '../presentation/reviews_tab_container_screen/reviews_tab_container_screen.dart';
import '../presentation/reviews_tab_container_screen/binding/reviews_tab_container_binding.dart';
import '../presentation/reviews_gallery_screen/reviews_gallery_screen.dart';
import '../presentation/reviews_gallery_screen/binding/reviews_gallery_binding.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/home_container_screen/binding/home_container_binding.dart';
import '../presentation/promotion_screen/promotion_screen.dart';
import '../presentation/promotion_screen/binding/promotion_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String productTourOneScreen = '/product_tour_one_screen';

  static const String productTourTwoScreen = '/product_tour_two_screen';

  static const String productTourThreeScreen = '/product_tour_three_screen';

  static const String featuredEstatesScreen = '/featured_estates_screen';

  static const String realEstatesListByCategoryScreen =
      '/real_estates_list_by_category_screen';

  static const String topLocationsScreen = '/top_locations_screen';

  static const String topLocationsLocationDetailScreen =
      '/top_locations_location_detail_screen';

  static const String topAgentsScreen = '/top_agents_screen';

  static const String topAgentsProfileDetailPage =
      '/top_agents_profile_detail_page';

  static const String topAgentsProfileDetailTabContainerScreen =
      '/top_agents_profile_detail_tab_container_screen';

  static const String reviewEmptyScreen = '/review_empty_screen';

  static const String reviewFillScreen = '/review_fill_screen';

  static const String summaryScreen = '/summary_screen';

  static const String formDetailScreen = '/form_detail_screen';

  static const String addLocationScreen = '/add_location_screen';

  static const String addPhotosScreen = '/add_photos_screen';

  static const String extraInformationScreen = '/extra_information_screen';

  static const String loginScreen = '/login_screen';

  static const String formEmptyScreen = '/form_empty_screen';

  static const String notificationListPage = '/notification_list_page';

  static const String notificationListTabContainerScreen =
      '/notification_list_tab_container_screen';

  static const String messagesListPage = '/messages_list_page';

  static const String chatScreen = '/chat_screen';

  static const String callScreen = '/call_screen';

  static const String favouriteEmptyScreen = '/favourite_empty_screen';

  static const String verticalPage = '/vertical_page';

  static const String horizontalScreen = '/horizontal_screen';

  static const String registerFormEmptyScreen = '/register_form_empty_screen';

  static const String formOtpScreen = '/form_otp_screen';

  static const String emptyMapScreen = '/empty_map_screen';

  static const String exampleDataPage = '/example_data_page';

  static const String transactionPage = '/transaction_page';

  static const String transactionTabContainerPage =
      '/transaction_tab_container_page';

  static const String listingsPage = '/listings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String allReviewsPage = '/all_reviews_page';

  static const String allReviewsTabContainerScreen =
      '/all_reviews_tab_container_screen';

  static const String emptySearchScreen = '/empty_search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String filterChooseLocationScreen =
      '/filter_choose_location_screen';

  static const String resultFilterScreen = '/result_filter_screen';

  static const String locationEmptyScreen = '/location_empty_screen';

  static const String locationChooseLocationScreen =
      '/location_choose_location_screen';

  static const String locationFillScreen = '/location_fill_screen';

  static const String preferableScreen = '/preferable_screen';

  static const String preferableSelectedScreen = '/preferable_selected_screen';

  static const String paymentEmptyPage = '/payment_empty_page';

  static const String paymentEmptyTabContainerScreen =
      '/payment_empty_tab_container_screen';

  static const String historyDetailScreen = '/history_detail_screen';

  static const String addReviewEmptyScreen = '/add_review_empty_screen';

  static const String addReviewFillScreen = '/add_review_fill_screen';

  static const String paymentPaypalPage = '/payment_paypal_page';

  static const String paymentMastercardPage = '/payment_mastercard_page';

  static const String userEmptyScreen = '/user_empty_screen';

  static const String editFormScreen = '/edit_form_screen';

  static const String propertyDetailsScreen = '/property_details_screen';

  static const String viewScreen = '/view_screen';

  static const String viewOnMapScreen = '/view_on_map_screen';

  static const String reviewsPage = '/reviews_page';

  static const String reviewsTabContainerScreen =
      '/reviews_tab_container_screen';

  static const String reviewsGalleryScreen = '/reviews_gallery_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String promotionScreen = '/promotion_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: productTourOneScreen,
      page: () => ProductTourOneScreen(),
      bindings: [
        ProductTourOneBinding(),
      ],
    ),
    GetPage(
      name: productTourTwoScreen,
      page: () => ProductTourTwoScreen(),
      bindings: [
        ProductTourTwoBinding(),
      ],
    ),
    GetPage(
      name: productTourThreeScreen,
      page: () => ProductTourThreeScreen(),
      bindings: [
        ProductTourThreeBinding(),
      ],
    ),
    GetPage(
      name: featuredEstatesScreen,
      page: () => FeaturedEstatesScreen(),
      bindings: [
        FeaturedEstatesBinding(),
      ],
    ),
    GetPage(
      name: realEstatesListByCategoryScreen,
      page: () => RealEstatesListByCategoryScreen(),
      bindings: [
        RealEstatesListByCategoryBinding(),
      ],
    ),
    GetPage(
      name: topLocationsScreen,
      page: () => TopLocationsScreen(),
      bindings: [
        TopLocationsBinding(),
      ],
    ),
    GetPage(
      name: topLocationsLocationDetailScreen,
      page: () => TopLocationsLocationDetailScreen(),
      bindings: [
        TopLocationsLocationDetailBinding(),
      ],
    ),
    GetPage(
      name: topAgentsScreen,
      page: () => TopAgentsScreen(),
      bindings: [
        TopAgentsBinding(),
      ],
    ),
    GetPage(
      name: topAgentsProfileDetailTabContainerScreen,
      page: () => TopAgentsProfileDetailTabContainerScreen(),
      bindings: [
        TopAgentsProfileDetailTabContainerBinding(),
      ],
    ),
    GetPage(
      name: reviewEmptyScreen,
      page: () => ReviewEmptyScreen(),
      bindings: [
        ReviewEmptyBinding(),
      ],
    ),
    GetPage(
      name: reviewFillScreen,
      page: () => ReviewFillScreen(),
      bindings: [
        ReviewFillBinding(),
      ],
    ),
    GetPage(
      name: summaryScreen,
      page: () => SummaryScreen(),
      bindings: [
        SummaryBinding(),
      ],
    ),
    GetPage(
      name: formDetailScreen,
      page: () => FormDetailScreen(),
      bindings: [
        FormDetailBinding(),
      ],
    ),
    GetPage(
      name: addLocationScreen,
      page: () => AddLocationScreen(),
      bindings: [
        AddLocationBinding(),
      ],
    ),
    GetPage(
      name: addPhotosScreen,
      page: () => AddPhotosScreen(),
      bindings: [
        AddPhotosBinding(),
      ],
    ),
    GetPage(
      name: extraInformationScreen,
      page: () => ExtraInformationScreen(),
      bindings: [
        ExtraInformationBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: formEmptyScreen,
      page: () => FormEmptyScreen(),
      bindings: [
        FormEmptyBinding(),
      ],
    ),
    GetPage(
      name: notificationListTabContainerScreen,
      page: () => NotificationListTabContainerScreen(),
      bindings: [
        NotificationListTabContainerBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: callScreen,
      page: () => CallScreen(),
      bindings: [
        CallBinding(),
      ],
    ),
    GetPage(
      name: favouriteEmptyScreen,
      page: () => FavouriteEmptyScreen(),
      bindings: [
        FavouriteEmptyBinding(),
      ],
    ),
    GetPage(
      name: horizontalScreen,
      page: () => HorizontalScreen(),
      bindings: [
        HorizontalBinding(),
      ],
    ),
    GetPage(
      name: registerFormEmptyScreen,
      page: () => RegisterFormEmptyScreen(),
      bindings: [
        RegisterFormEmptyBinding(),
      ],
    ),
    GetPage(
      name: formOtpScreen,
      page: () => FormOtpScreen(),
      bindings: [
        FormOtpBinding(),
      ],
    ),
    GetPage(
      name: emptyMapScreen,
      page: () => EmptyMapScreen(),
      bindings: [
        EmptyMapBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: allReviewsTabContainerScreen,
      page: () => AllReviewsTabContainerScreen(),
      bindings: [
        AllReviewsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: emptySearchScreen,
      page: () => EmptySearchScreen(),
      bindings: [
        EmptySearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: filterChooseLocationScreen,
      page: () => FilterChooseLocationScreen(),
      bindings: [
        FilterChooseLocationBinding(),
      ],
    ),
    GetPage(
      name: resultFilterScreen,
      page: () => ResultFilterScreen(),
      bindings: [
        ResultFilterBinding(),
      ],
    ),
    GetPage(
      name: locationEmptyScreen,
      page: () => LocationEmptyScreen(),
      bindings: [
        LocationEmptyBinding(),
      ],
    ),
    GetPage(
      name: locationChooseLocationScreen,
      page: () => LocationChooseLocationScreen(),
      bindings: [
        LocationChooseLocationBinding(),
      ],
    ),
    GetPage(
      name: locationFillScreen,
      page: () => LocationFillScreen(),
      bindings: [
        LocationFillBinding(),
      ],
    ),
    GetPage(
      name: preferableScreen,
      page: () => PreferableScreen(),
      bindings: [
        PreferableBinding(),
      ],
    ),
    GetPage(
      name: preferableSelectedScreen,
      page: () => PreferableSelectedScreen(),
      bindings: [
        PreferableSelectedBinding(),
      ],
    ),
    GetPage(
      name: paymentEmptyTabContainerScreen,
      page: () => PaymentEmptyTabContainerScreen(),
      bindings: [
        PaymentEmptyTabContainerBinding(),
      ],
    ),
    GetPage(
      name: historyDetailScreen,
      page: () => HistoryDetailScreen(),
      bindings: [
        HistoryDetailBinding(),
      ],
    ),
    GetPage(
      name: addReviewEmptyScreen,
      page: () => AddReviewEmptyScreen(),
      bindings: [
        AddReviewEmptyBinding(),
      ],
    ),
    GetPage(
      name: addReviewFillScreen,
      page: () => AddReviewFillScreen(),
      bindings: [
        AddReviewFillBinding(),
      ],
    ),
    GetPage(
      name: userEmptyScreen,
      page: () => UserEmptyScreen(),
      bindings: [
        UserEmptyBinding(),
      ],
    ),
    GetPage(
      name: editFormScreen,
      page: () => EditFormScreen(),
      bindings: [
        EditFormBinding(),
      ],
    ),
    GetPage(
      name: propertyDetailsScreen,
      page: () => PropertyDetailsScreen(),
      bindings: [
        PropertyDetailsBinding(),
      ],
    ),
    GetPage(
      name: viewScreen,
      page: () => ViewScreen(),
      bindings: [
        ViewBinding(),
      ],
    ),
    GetPage(
      name: viewOnMapScreen,
      page: () => ViewOnMapScreen(),
      bindings: [
        ViewOnMapBinding(),
      ],
    ),
    GetPage(
      name: reviewsTabContainerScreen,
      page: () => ReviewsTabContainerScreen(),
      bindings: [
        ReviewsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: reviewsGalleryScreen,
      page: () => ReviewsGalleryScreen(),
      bindings: [
        ReviewsGalleryBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: promotionScreen,
      page: () => PromotionScreen(),
      bindings: [
        PromotionBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
