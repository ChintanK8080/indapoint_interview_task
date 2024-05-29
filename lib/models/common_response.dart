class CommonResponse {
  final bool? status;
  final String? token;
  CommonResponse({this.status, this.token});

  factory CommonResponse.fromJson(Map<String, dynamic> json) {
    return CommonResponse(
      status: json['status'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (status != null) data['status'] = status;
    if (token != null) data['token'] = token;
    return data;
  }
}
