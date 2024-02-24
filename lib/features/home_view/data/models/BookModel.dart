import 'package:equatable/equatable.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "4scDAAAAMBAJ"
/// etag : "QmocQCUesMI"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/4scDAAAAMBAJ"
/// volumeInfo : {"title":"Men's Health","publishedDate":"2007-05","description":"Men's Health magazine contains daily tips and articles on fitness, nutrition, relationships, sex, career and lifestyle.","readingModes":{"text":false,"image":true},"pageCount":198,"printType":"MAGAZINE","maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.0.2.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=4scDAAAAMBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=4scDAAAAMBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=4scDAAAAMBAJ&printsec=frontcover&dq=health&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=4scDAAAAMBAJ&dq=health&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Men_s_Health.html?hl=&id=4scDAAAAMBAJ"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"ALL_PAGES","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=4scDAAAAMBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"Men&#39;s Health magazine contains daily tips and articles on fitness, nutrition, relationships, sex, career and lifestyle."}

class BookModel  extends Equatable{
   BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});


  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  late final String? kind;
  late final String? id;
  late final String? etag;
  late final String? selfLink;
  late final VolumeInfo? volumeInfo;
  late final SaleInfo? saleInfo;
  late final AccessInfo? accessInfo;
  late final SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

  @override
  List<Object?> get props => [];

}