class DrawList {
  final String icon;
  final String text;
  DrawList({required this.icon, required this.text});
  static List<DrawList> listinfo = [
    DrawList(
      icon: 'assets/Draw/InfoCircle.svg',
      text: 'Accaunt information',
    ),
    DrawList(
      icon: 'assets/Draw/Lock.svg',
      text: 'Password',
    ),
    DrawList(
      icon: 'assets/Icon/Bag.svg',
      text: 'Order',
    ),
    DrawList(
      icon: 'assets/Draw/Wallet.svg',
      text: 'My Cards',
    ),
    DrawList(
      icon: 'assets/Icon/Heart.svg',
      text: 'Wishlist',
    ),
    DrawList(
      icon: 'assets/Draw/Setting.svg',
      text: 'Settings',
    ),
  ];
}

class BrandList {
  String icon;
  String text;
  String brand;
  bool isSelected;
  BrandList(
      {required this.icon,
      required this.text,
      required this.brand,
      required this.isSelected});
  static List<BrandList> listinfo = [
    BrandList(
        icon: 'assets/Icon/Adidas.svg',
        brand: 'Adidas adidas',
        text: 'Adidas',
        isSelected: false),
    BrandList(
        icon: 'assets/Icon/Vector.svg',
        brand: 'Nike nike',
        text: 'Nike',
        isSelected: false),
    BrandList(
        icon: 'assets/Icon/fila.svg',
        brand: 'Fila fila',
        text: 'Fila',
        isSelected: false),
    BrandList(
        icon: 'assets/Icon/puma.svg',
        brand: 'Puma puma',
        text: 'Puma',
        isSelected: false),
  ];
}

class GridList {
  dynamic viewImage;
  String viewTitle;

  String brand;
  String viewPrice;
  GridList({
    required this.brand,
    required this.viewImage,
    required this.viewTitle,
    required this.viewPrice,
  });
  static List<GridList> listinfo = [
    GridList(
        brand: 'Nike nike',
        viewImage: 'assets/Image/Rectangle568.png',
        viewTitle: 'Nike Sportswear Club Fleece',
        viewPrice: '\$99'),
    GridList(
        brand: 'Adidas adidas',
        viewImage: 'assets/Image/Rectangle569.png',
        viewTitle: 'Trail Running Jacket Nike Windrunner',
        viewPrice: '\$80'),
    GridList(
        brand: 'Fila fila',
        viewImage: 'assets/Image/Frame20.png',
        viewTitle: 'Training Top Nike Sport Clash',
        viewPrice: '\$100'),
    GridList(
        brand: 'Puma puma',
        viewImage: 'assets/Image/Frame21.png',
        viewTitle: 'Trail Running Jacket Nike Windrunner',
        viewPrice: '\$70'),
  ];
}
