import "package:http/http.dart" as http;

class HttpStateful {
  String id, fullname, phone, education, address, skill, avatar;

  HttpStateful(
      {this.id,
      this.fullname,
      this.phone,
      this.education,
      this.address,
      this.skill,
      this.avatar});

  static Future<HttpStateful> connectAPI(String id) async {
    Uri url = Uri.parse('http://localhost:5000/api/v1/user/1' + id);

    var response = await http.get(url);

    var data = json.decode(response.body);
    print(data)

    return HttpStateful(
      id: data["id"].toString(),
      fullname: data["first_name"] + " " + data["last_name"],
      avatar: data["avatar"],
      education: data["education"],
      skill: data["skill"],
      phone: data["phone"],
      address: data["address"],
    )
  }
}
