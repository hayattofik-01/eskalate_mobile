class MyCard {
  String title;
  String subtitle;
  String imageUrl;

  MyCard({required this.title, required this.subtitle, required this.imageUrl});
}

List<MyCard> _cards  = [
  MyCard(
    title: 'Card 1',
    subtitle: 'Subtitle 1',
    imageUrl: "https://thumbs.dreamstime.com/b/sky-colorful-clouds-above-atlantic-ocean-sunset-landscape-background-space-ror-your-own-text-tenerife-canary-islands-169519920.jpg",
  ),
  MyCard(
    title: 'Card 2',
    subtitle: 'Subtitle 2',
    imageUrl:"https://thumbs.dreamstime.com/b/sky-colorful-clouds-above-atlantic-ocean-sunset-landscape-background-space-ror-your-own-text-tenerife-canary-islands-169519920.jpg" ,
  ),
  MyCard(
    title: 'Card 3',
     subtitle: 'Subtitle 3',
    imageUrl: "https://thumbs.dreamstime.com/b/sky-colorful-clouds-above-atlantic-ocean-sunset-landscape-background-space-ror-your-own-text-tenerife-canary-islands-169519920.jpg",
  ),
];