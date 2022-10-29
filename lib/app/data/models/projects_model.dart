class ProjectsModel {
   String? name;
   String? logo;
   bool? isLive;
   String? url;
   int? slot;

  ProjectsModel({
    this.name,
    this.logo,
    this.isLive,
    this.url,
    this.slot,
  });

  ProjectsModel.fromJson(Map<String, dynamic> json)
      : name = json['name']??"",
        logo = json['logo']??"",
        isLive = json['isLive']??false,
        url = json['url']??"",
        slot = json['slot']??0;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'logo' : logo,
    'isLive' : isLive,
    'url' : url,
    'slot' : slot
  };
}