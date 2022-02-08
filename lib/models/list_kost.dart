class ListKost {
  final String nameIndex;
  final String genderIndex;
  final String imagesIndex;

  ListKost({
    required this.nameIndex,
    required this.genderIndex,
    required this.imagesIndex,
  });
}

List allKost = [
  ListKost(
      nameIndex: 'Anjas Pailah,',
      genderIndex: 'Wanita',
      imagesIndex: 'assets/kos1.png'),
  ListKost(
      nameIndex: 'BLue Fast,',
      genderIndex: 'Umum',
      imagesIndex: 'assets/kos2.png'),
  ListKost(
      nameIndex: 'Jamaixa IIX,',
      genderIndex: 'Pria',
      imagesIndex: 'assets/kos3.png'),
  ListKost(
      nameIndex: 'Yaka Past,',
      genderIndex: 'Wanita',
      imagesIndex: 'assets/kos4.png'),
];
