import 'ReadingModes.dart';
import 'PanelizationSummary.dart';
import 'ImageLinks.dart';

/// title : "Men's Health"
/// publishedDate : "2007-05"
/// description : "Men's Health magazine contains daily tips and articles on fitness, nutrition, relationships, sex, career and lifestyle."
/// readingModes : {"text":false,"image":true}
/// pageCount : 198
/// printType : "MAGAZINE"
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.0.2.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=4scDAAAAMBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=4scDAAAAMBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=4scDAAAAMBAJ&printsec=frontcover&dq=health&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=4scDAAAAMBAJ&dq=health&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Men_s_Health.html?hl=&id=4scDAAAAMBAJ"

class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.publishedDate, 
      this.description, 
      this.readingModes, 
      this.pageCount, 
      this.printType, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  String? publishedDate;
  String? description;
  ReadingModes? readingModes;
  num? pageCount;
  String? printType;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}