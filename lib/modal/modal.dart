class DatasFromApi {
  int? id;
  String? slug;
  String? url;
  String? title;
  String? content;
  String? status;

  DatasFromApi({
    required this.id,
    required this.slug,
    required this.url,
    required this.title,
    required this.content,
    required this.status,
  });
  factory DatasFromApi.fromJson(Map<String, dynamic> json) {
    return DatasFromApi(
        id: json['id'],
        slug: json['slug'],
        url: json['url'],
        title: json['title'],
        content: json['content'],
        status: json['status']);
  }
}
