class ListKost {
  final String nameIndex;
  final String genderIndex;
  final String imagesIndex;
  final int priceIndex;

  ListKost({
    required this.nameIndex,
    required this.genderIndex,
    required this.imagesIndex,
    required this.priceIndex,
  });
}

List allKost = [
  ListKost(
      nameIndex: 'Fukko Cozy',
      genderIndex: 'Wanita',
      imagesIndex: 'assets/kos1.png',
      priceIndex: 55),
  ListKost(
      nameIndex: 'BLue Fast',
      genderIndex: 'Umum',
      imagesIndex: 'assets/kos2.png',
      priceIndex: 21),
  ListKost(
      nameIndex: 'Jamaixa IIX',
      genderIndex: 'Pria',
      imagesIndex: 'assets/kos3.png',
      priceIndex: 49),
  ListKost(
    nameIndex: 'Yaka Past',
    genderIndex: 'Wanita',
    imagesIndex: 'assets/kos4.png',
    priceIndex: 82,
  ),
];
