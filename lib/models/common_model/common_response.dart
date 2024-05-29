class CommonResponse {
  final bool? status;
  final String? token;
  final String? message;
  CommonResponse({this.status, this.token, this.message});

  factory CommonResponse.fromJson(Map<String, dynamic> json) {
    return CommonResponse(
      status: json['status'],
      token: json['token'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (status != null) data['status'] = status;
    if (token != null) data['token'] = token;
    if (message != null) data['message'] = message;
    return data;
  }
}
