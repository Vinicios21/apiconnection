class PokemonModel {

  final String name;
  final String url;

  PokemonModel(this.name, this.url );


  PokemonModel.fromJson(Map<String, dynamic> json) :

        name= json['name'],
        url= json['url'];


  Map<String, dynamic> toJson() => {
    'name': name,
    'url': url,
  };

}