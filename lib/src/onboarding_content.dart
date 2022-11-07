class UnboardingContent {
  String image;
  String title;


  UnboardingContent({required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      title: 'Order food instantly from your phone',
      image: 'assets/images/onboarding.png',

  ),
  UnboardingContent(
      title: 'Discover food joints around you',
      image: 'assets/images/onboarding2.png',

  ),
  UnboardingContent(
      title: 'Track delivery process with ease',
      image: 'assets/images/ob3.png',

  ),
];
