enum Sorting {
  popularity('По популярности'),
  newest('Новинки'),
  priceAsc('Дешевле'),
  priceDesc('Дороже');

  final String title;

  const Sorting(this.title);
}

enum SkinType {
  oily('Жирная'),
  combi('Комбинированная'),
  normal('Нормальная'),
  dry('Сухая'),
  anyType('Любой');

  final String title;

  const SkinType(this.title);
}


enum IntendedFor {
  face('Для лица'),
  eyes('Для глаз'),
  body('Для тела'),
  cleansing('Умывание'),
  productSet('Набор');

  final String title;

  const IntendedFor(this.title);
}

enum ProductType {
  serum('Сыворотка'),
  tonic('Тоник'),
  cream('Крем'),
  mask('Маска'),
  toner('Тонер'),
  productSet('Набор'),
  sale('Акции'),
  all('Все');

  final String title;

  const ProductType(this.title);
}

enum SkinProblem {
  irritation('Раздражение'),
  peeling('Шелушение'),
  wrinkles('Морщины'),
  acne('Акне'),
  notSelected('Не выбрано');

  final String title;

  const SkinProblem(this.title);
}

enum ProductLine {
  unstress('UNSTRESS'),
  muse('MUSE'),
  foreverYoung('FOREVER YOUNG'),
  illustrious('ILLUSTRIOUS'),
  lineRepair('LINE REPAIR'),
  all('Все');

  final String title;

  const ProductLine(this.title);
}

enum Effect {
  cleansing('Для очищения'),
  moisturizing('Для увлажнения'),
  nourishment('Для питания'),
  antiaging('Для омоложения'),
  notSelected('Не выбрано');

  final String title;

  const Effect(this.title);
}