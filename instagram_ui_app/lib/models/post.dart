class Post {
  final String avatarUrl;
  final String userName;
  final String imgUrl;

  Post({required this.userName, required this.avatarUrl, required this.imgUrl});
}

final List<Post> posts = [
  Post(
      avatarUrl: 'https://picsum.photos/id/230/200/200',
      userName: 'Your Story',
      imgUrl: 'https://picsum.photos/id/231/200/200'),
  Post(
      avatarUrl: 'https://picsum.photos/id/130/200/200',
      userName: 'John',
      imgUrl: 'https://picsum.photos/id/131/200/200'),
  Post(
      avatarUrl: 'https://picsum.photos/id/330/200/200',
      userName: 'Sara',
      imgUrl: 'https://picsum.photos/id/331/200/200'),
  Post(
      avatarUrl: 'https://picsum.photos/id/430/200/200',
      userName: 'Your Sunday',
      imgUrl: 'https://picsum.photos/id/431/200/200'),
];
