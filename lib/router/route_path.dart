class RoutePath {

  final bool _isHome;
  final bool _isUnknown;

  //Constructor 1
  RoutePath.home() : _isHome = true, _isUnknown = false;
  //Constructor 2
  RoutePath.unknown() : _isHome = false, _isUnknown = true;

  bool get isHomePage => _isHome;
  bool get isUnknown => _isUnknown;
}
