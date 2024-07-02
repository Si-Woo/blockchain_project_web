class RoutePath {
  final bool isHomePage;
  final bool isHomeEnPage;
  final bool isDonationPage;
  final bool isDonationEnPage;
  final bool pageNotFound;

  RoutePath.home()
      : isHomePage = true,
        isHomeEnPage = false,
        isDonationPage = false,
        isDonationEnPage = false,
        pageNotFound = false;

  RoutePath.homeEn()
      : isHomePage = false,
        isHomeEnPage = true,
        isDonationPage = false,
        isDonationEnPage = false,
        pageNotFound = false;

  RoutePath.donation()
      : isHomePage = false,
        isHomeEnPage = false,
        isDonationPage = true,
        isDonationEnPage = false,
        pageNotFound = false;

  RoutePath.donationEn()
      : isHomePage = false,
        isHomeEnPage = false,
        isDonationPage = false,
        isDonationEnPage = true,
        pageNotFound = false;

  RoutePath.pageNotFound()
      : isHomePage = false,
        isHomeEnPage = false,
        isDonationPage = false,
        isDonationEnPage = false,
        pageNotFound = true;
}
