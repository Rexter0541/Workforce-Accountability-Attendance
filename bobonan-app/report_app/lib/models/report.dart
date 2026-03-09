class Report {
  final String id;
  final String title;
  final String description;
  final String category;
  final String status;
  final String userId;
  final DateTime createdAt;

  Report({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.status,
    required this.userId,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'category': category,
      'status': status,
      'userId': userId,
      'createdAt': createdAt,
    };
  }
}