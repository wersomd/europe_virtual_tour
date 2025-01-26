class WelcomePageContents {
  final String title;
  final String image;

  WelcomePageContents({
    required this.title,
    required this.image,
  });
}

List<WelcomePageContents> welcomeContentsList = [
  WelcomePageContents(
    title: "Добро пожаловать в мир виртуальных приключений по Европе!",
    image: "assets/images/welcome/welcome-1.jpg",
  ),
  WelcomePageContents(
    title: "Приветствуем вас в приложении виртуальных туров по Европе!",
    image: "assets/images/welcome/welcome-2.png",
  ),
  WelcomePageContents(
    title: "Виртуальный тур который откроет вам двери в великолепную Европу.",
    image: "assets/images/welcome/welcome-3.jpg",
  ),
];
