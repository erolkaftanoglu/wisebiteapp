enum AppRoute {
  home,
  splash,
  login;

  String get getRoute => {
        AppRoute.home: "/home",
        AppRoute.login: "/login",
        AppRoute.splash: "/",
      }[this]!;
}
