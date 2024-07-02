class RoutePath {
  final bool isHomePage;
  final bool isEnglishPage;

  RoutePath.home()
      : isHomePage = true,
        isEnglishPage = false;

  RoutePath.english()
      : isHomePage = false,
        isEnglishPage = true;
}
