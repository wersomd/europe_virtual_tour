class DataModel {
  final String title;
  final String location;
  final String image;
  final String year;
  final String description;
  final String url;
  final String ticketUrl;

  DataModel({
    required this.title,
    required this.location,
    required this.image,
    required this.year,
    required this.description,
    required this.url,
    required this.ticketUrl,
  });
}

List<DataModel> populars = [
  DataModel(
    title: 'Колизей в Риме',
    location: 'Италия',
    image: 'assets/images/coliseum.webp',
    year: '70 году н.э',
    description:
        'Амфитеатр, памятник архитектуры Древнего Рима, наиболее известное и одно из самых грандиозных сооружений Древнего мира, сохранившихся до нашего времени.',
    url: 'https://www.360cities.net/image/rome-colosseum-spherical-panorama/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D1%80%D0%B8%D0%BC-%D0%B8%D1%82%D0%B0%D0%BB%D0%B8%D1%8F/anytime/no-return',
  ),
  DataModel(
    title: 'Эйфелевая башня',
    location: 'Париж',
    image: 'assets/images/paris.webp',
    year: '1887 году',
    description:
        'Чем бы был Париж без его известного символа Эйфелевой башни? Построенная Густавом Эйфелом в честь юбилея со дня Французской Революции, она была представлена на Всемирной Выставке 1889 года. В вышину Эйфелева башня достигает 324 метра, и является одним из самых посещаемых памятников в мире с 7 миллионами визитеров в год.',
    url:
        'https://www.360cities.net/image/aerial-view-of-the-eiffel-tower-in-paris-with-a-nice-cloudy-sky/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%BF%D0%B0%D1%80%D0%B8%D0%B6-%D1%84%D1%80%D0%B0%D0%BD%D1%86%D0%B8%D1%8F/anytime/no-return',
  ),
  DataModel(
    title: 'Амстердам',
    location: 'Голландия',
    image: 'assets/images/amsterdam.webp',
    year: '1682',
    description:
        'Столица и крупнейший город Нидерландов. Является столицей королевства с 1814 года. Расположен в провинции Северная Голландия на западе страны в устье реки Амстел, у бухты Эй. Амстердам соединён Нордзе-каналом с Северным морем. ',
    url: 'https://www.360cities.net/image/oudezijds-achterburgwal-amsterdam/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%B0%D0%BC%D1%81%D1%82%D0%B5%D1%80%D0%B4%D0%B0%D0%BC-%D0%BD%D0%B8%D0%B4%D0%B5%D1%80%D0%BB%D0%B0%D0%BD%D0%B4%D1%8B/anytime/no-return',
  )
];
List<DataModel> inspiration = [
  DataModel(
    title: 'Лондон',
    location: 'Великобритания',
    image: 'assets/images/london.jpg',
    year: '543',
    description:
        'Столица Великобритании и крупнейший город страны, третий по величине город Европы, расположен на реке Темза. Политический, экономический и культурный центр Великобритании. Являет одним из старейших городов Европы, основан в 47 году',
    url:
        'https://www.360cities.net/image/2013-05-12-151224-london-churchill-bigben/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%BB%D0%BE%D0%BD%D0%B4%D0%BE%D0%BD-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D1%8F/anytime/no-return',
  ),
  DataModel(
    title: 'Дублин',
    location: 'Ирландия',
    image: 'assets/images/dublin.jpg',
    year: '1919',
    description:
        'Дублин – столица Ирландии и один из старейших городов страны, имеющий статус города-графства и расположенный в том месте, где река Лиффи впадает в Дублинский залив. Многовековая история и большое количество достопримечательностей привлекают сюда туристов со всего мира. Дублин – культурный центр страны.',
    url: 'https://www.360cities.net/image/dublin-spire-2/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%B4%D1%83%D0%B1%D0%BB%D0%B8%D0%BD-%D0%B8%D1%80%D0%BB%D0%B0%D0%BD%D0%B4%D0%B8%D1%8F/anytime/no-return',
  ),
  DataModel(
    title: 'Единбург',
    location: 'Шотландия',
    image: 'assets/images/edinburgh.jpg',
    year: '1600',
    description:
        'Эдинбург – столица Шотландии и один из красивейших городов Европы. Он расположился вблизи восточного побережья острова Великобритания, обращенного к Северному морю. Город, ставший столицей Шотландского королевства еще в эпоху Средневековья, располагает бесчисленными историческими памятниками, а многие выстроенные здесь здания признаны архитектурными шедеврами.',
    url:
        'https://www.360cities.net/image/the-royal-mile-lawnmarket-edinburgh/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D1%8D%D0%B4%D0%B8%D0%BD%D0%B1%D1%83%D1%80%D0%B3-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D1%8F/anytime/no-return',
  )
];

List<DataModel> mostVisited = [
  DataModel(
    title: 'Барселона',
    location: 'Испания',
    image: 'assets/images/barcelona.jpg',
    year: '2019',
    description:
        'Барселона - город на северо-востоке Испании, столица Каталонии. Это крупнейший мегаполис на берегу Средиземного моря с населением более полутора миллионов человек и второй по величине в стране. Барселона - это оживленный приморский город и порт с великолепным культурным и историческим наследием, уникальной атмосферой и очаровательной архитектурой.',
    url: 'https://www.360cities.net/image/04-47/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%B1%D0%B0%D1%80%D1%81%D0%B5%D0%BB%D0%BE%D0%BD%D0%B0-%D0%B8%D1%81%D0%BF%D0%B0%D0%BD%D0%B8%D1%8F/anytime/no-return',
  ),
  DataModel(
    title: 'Венеция',
    location: 'Италия',
    image: 'assets/images/venice.webp',
    year: '2019',
    description:
        'Венеция — самый романтичный уголок Европы, расположенный на северном побережье Адриатического моря в Италии. Величественная архитектура, неповторимая атмосфера свободы и легкости, оживленные лабиринты улиц – все это создает уникальный ансамбль, который обязательно нужно увидеть, услышать, ощутить.',
    url:
        'https://www.360cities.net/image/venice-burano-fondamenta-pontinello-1/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%B2%D0%B5%D0%BD%D0%B5%D1%86%D0%B8%D1%8F-%D0%B8%D1%82%D0%B0%D0%BB%D0%B8%D1%8F/anytime/no-return',
  ),
  DataModel(
    title: 'Прага',
    location: 'Чехия',
    image: 'assets/images/prague.jpg',
    year: '2019',
    description:
        'Прага — столица Чехии; крупнейший мегаполис и популярнейший туристический центр Европы, ежегодно принимающий более 6 миллионов гостей. В этом элегантном и доброжелательном городе мечтает побывать каждый, кто хоть немного разбирается в красоте архитектуры и пиве.',
    url:
        'https://www.360cities.net/image/czech-prague-fair-in-prague-castle/vr',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%BF%D1%80%D0%B0%D0%B3%D0%B0-%D1%87%D0%B5%D1%85%D0%B8%D1%8F/anytime/no-return',
  ),
];

List<DataModel> peopleAlsoLikeModel = [
  DataModel(
    title: "Лондон",
    location: "Великобритания",
    image: "assets/images/london.jpg",
    year: "1889",
    description:
        "Столица Великобритании и крупнейший город страны, третий по величине город Европы, расположен на реке Темза. Политический, экономический и культурный центр Великобритании. Являет одним из старейших городов Европы, основан в 47 году",
    url:
        'https://www.360cities.net/image/2013-05-12-151224-london-churchill-bigben/',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%BB%D0%BE%D0%BD%D0%B4%D0%BE%D0%BD-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D1%8F/anytime/no-return',
  ),
  DataModel(
      title: "Париж",
      location: "Франция",
      image: "assets/images/paris.webp",
      year: "7",
      description:
          "Чем бы был Париж без его известного символа Эйфелевой башни? Построенная Густавом Эйфелом в честь юбилея со дня Французской Революции, она была представлена на Всемирной Выставке 1889 года. В вышину Эйфелева башня достигает 324 метра, и является одним из самых посещаемых памятников в мире с 7 миллионами визитеров в год.",
      url:
          'https://www.360cities.net/image/aerial-view-of-the-eiffel-tower-in-paris-with-a-nice-cloudy-sky',
      ticketUrl:
          'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D0%BF%D0%B0%D1%80%D0%B8%D0%B6-%D1%84%D1%80%D0%B0%D0%BD%D1%86%D0%B8%D1%8F/anytime/no-return'),
  DataModel(
    title: "Единбург",
    location: "Шотландия",
    image: "assets/images/edinburgh.jpg",
    year: "9",
    description:
        "Эдинбург – столица Шотландии и один из красивейших городов Европы. Он расположился вблизи восточного побережья острова Великобритания, обращенного к Северному морю. Город, ставший столицей Шотландского королевства еще в эпоху Средневековья, располагает бесчисленными историческими памятниками, а многие выстроенные здесь здания признаны архитектурными шедеврами.",
    url: 'https://www.360cities.net/image/the-royal-mile-lawnmarket-edinburgh',
    ticketUrl:
        'https://flyarystan.kiwi.com/ru/search/results/%D0%BA%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD/%D1%8D%D0%B4%D0%B8%D0%BD%D0%B1%D1%83%D1%80%D0%B3-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE%D0%B1%D1%80%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D1%8F/anytime/no-return',
  ),
];
