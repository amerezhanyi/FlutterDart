class Story {
  final String imgUrl;
  final String title;

  Story({required this.imgUrl, required this.title});
}

final List<Story> stories = [
  Story(
    imgUrl: 'https://picsum.photos/id/237/200/200',
    title: 'Your Story',
  ),
  Story(
    imgUrl: 'https://picsum.photos/id/137/200/200',
    title: 'John',
  ),
  Story(
    imgUrl: 'https://picsum.photos/id/337/200/200',
    title: 'Sara',
  ),
  Story(
    imgUrl: 'https://picsum.photos/id/437/200/200',
    title: 'Your Sunday',
  ),
];
