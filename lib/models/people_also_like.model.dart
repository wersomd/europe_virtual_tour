class PeopleAlsoLikeModel {
  final String title;
  final String location;
  final int year;
  final String image;
  final String description;
  final String url;
  final String ticketUrl;

  PeopleAlsoLikeModel({
    required this.title,
    required this.location,
    required this.year,
    required this.image,
    required this.description,
    required this.url,
    required this.ticketUrl,
  });
}

List<PeopleAlsoLikeModel> peopleAlsoLikeModel = [
  PeopleAlsoLikeModel(
    title: "Лондон",
    location: "Великобритания",
    image: "assets/images/london.jpg",
    year: 1889,
    description:
        "Столица Великобритании и крупнейший город страны, третий по величине город Европы, расположен на реке Темза. Политический, экономический и культурный центр Великобритании. Являет одним из старейших городов Европы, основан в 47 году",
    url:
        'https://www.360cities.net/image/2013-05-12-151224-london-churchill-bigben/',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%BB%D0%BE%D0%BD%D0%B4%D0%BE%D0%BD-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D1%8F/anytime/no-return',
  ),
  PeopleAlsoLikeModel(
      title: "Париж",
      location: "Франция",
      image: "assets/images/paris.webp",
      year: 7,
      description:
          "Чем бы был Париж без его известного символа Эйфелевой башни? Построенная Густавом Эйфелом в честь юбилея со дня Французской Революции, она была представлена на Всемирной Выставке 1889 года. В вышину Эйфелева башня достигает 324 метра, и является одним из самых посещаемых памятников в мире с 7 миллионами визитеров в год.",
      url:
          'https://www.360cities.net/image/aerial-view-of-the-eiffel-tower-in-paris-with-a-nice-cloudy-sky',
      ticketUrl:
          'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%BF%D0%B0%D1%80%D0%B8%D0%B6-%D1%84%D1%80%D0%B0%D0%BD%D1%86%D0%B8%D1%8F/anytime/no-return'),
  PeopleAlsoLikeModel(
    title: "Единбург",
    location: "Шотландия",
    image: "assets/images/edinburgh.jpg",
    year: 9,
    description:
        "Эдинбург – столица Шотландии и один из красивейших городов Европы. Он расположился вблизи восточного побережья острова Великобритания, обращенного к Северному морю. Город, ставший столицей Шотландского королевства еще в эпоху Средневековья, располагает бесчисленными историческими памятниками, а многие выстроенные здесь здания признаны архитектурными шедеврами.",
    url: 'https://www.360cities.net/image/the-royal-mile-lawnmarket-edinburgh',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D1%8D%D0%B4%D0%B8%D0%BD%D0%B1%D1%83%D1%80%D0%B3-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D1%8F/anytime/no-return',
  ),
];
