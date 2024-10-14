enum ProductServicePath {
  userV1('user'),
  posts('posts'),
  usersV2('v2/users');

  const ProductServicePath(this.value);

  final String value;

  String withQuery(String value) {
    return '${this.value}/$value';
  }
}
