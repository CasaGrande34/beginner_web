class MyAppPath {
  final bool _isHome;
  bool get isHome => _isHome;

  final bool _isUnknown;
  bool get isUnknown => _isUnknown;

  MyAppPath.home()
      : _isHome = true,
        _isUnknown = false;
  MyAppPath.unknown()
      : _isHome = false,
        _isUnknown = true;
}
