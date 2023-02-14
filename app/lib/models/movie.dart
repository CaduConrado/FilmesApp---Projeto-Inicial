// ignore_for_file: public_member_api_docs, sort_constructors_first

class Movie {
  String name;
  String image;
  Movie({
    required this.name,
    required this.image,
  });

//construtor de redirecionamento -> converte os dados do tipo json
  Movie.fromJson(Map<String, dynamic> json)
      : name = json['nome'].toString(),
        image = json['imagem'].toString();

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nome'] = name;
    data['imagem'] = image;
    return data;
  }
}
