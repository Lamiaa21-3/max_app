class CartHomePage {
  int? id;
  String? nameInArabic;
  String? nameInEnglish;
  Null? descriptionInArabic;
  Null? descriptionInEnglish;
  int? categoryId;
  Null? category;
  int? brandId;
  Null? brand;
  Null? companyId;
  Company? company;
  bool? isReturnAllowed;
  Null? barcode;
  bool? autoBarcode;
  String? mainImage;
  num? oldPrice;
  num? price;
  Null? productTaxes;
  Null? addedById;
  Null? addedDate;
  Null? updatedById;
  Null? updatedDate;
  bool? isDeleted;
  bool? showInHomeProductsSection;
  bool? showInBestSellingSection;
  bool? showInFeaturedProductsSection;

  CartHomePage(
      {this.id,
        this.nameInArabic,
        this.nameInEnglish,
        this.descriptionInArabic,
        this.descriptionInEnglish,
        this.categoryId,
        this.category,
        this.brandId,
        this.brand,
        this.companyId,
        this.company,
        this.isReturnAllowed,
        this.barcode,
        this.autoBarcode,
        this.mainImage,
        this.oldPrice,
        this.price,
        this.productTaxes,
        this.addedById,
        this.addedDate,
        this.updatedById,
        this.updatedDate,
        this.isDeleted,
        this.showInHomeProductsSection,
        this.showInBestSellingSection,
        this.showInFeaturedProductsSection});

  CartHomePage.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nameInArabic = json['NameInArabic'];
    nameInEnglish = json['NameInEnglish'];
    descriptionInArabic = json['DescriptionInArabic'];
    descriptionInEnglish = json['DescriptionInEnglish'];
    categoryId = json['CategoryId'];
    category = json['Category'];
    brandId = json['BrandId'];
    brand = json['Brand'];
    companyId = json['CompanyId'];
    company =
    json['Company'] != null ? new Company.fromJson(json['Company']) : null;
    isReturnAllowed = json['IsReturnAllowed'];
    barcode = json['Barcode'];
    autoBarcode = json['AutoBarcode'];
    mainImage = json['MainImage'];
    oldPrice = json['OldPrice'];
    price = json['Price'];
    productTaxes = json['ProductTaxes'];
    addedById = json['AddedById'];
    addedDate = json['AddedDate'];
    updatedById = json['UpdatedById'];
    updatedDate = json['UpdatedDate'];
    isDeleted = json['IsDeleted'];
    showInHomeProductsSection = json['ShowInHomeProductsSection'];
    showInBestSellingSection = json['ShowInBestSellingSection'];
    showInFeaturedProductsSection = json['ShowInFeaturedProductsSection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['NameInArabic'] = this.nameInArabic;
    data['NameInEnglish'] = this.nameInEnglish;
    data['DescriptionInArabic'] = this.descriptionInArabic;
    data['DescriptionInEnglish'] = this.descriptionInEnglish;
    data['CategoryId'] = this.categoryId;
    data['Category'] = this.category;
    data['BrandId'] = this.brandId;
    data['Brand'] = this.brand;
    data['CompanyId'] = this.companyId;
    if (this.company != null) {
      data['Company'] = this.company!.toJson();
    }
    data['IsReturnAllowed'] = this.isReturnAllowed;
    data['Barcode'] = this.barcode;
    data['AutoBarcode'] = this.autoBarcode;
    data['MainImage'] = this.mainImage;
    data['OldPrice'] = this.oldPrice;
    data['Price'] = this.price;
    data['ProductTaxes'] = this.productTaxes;
    data['AddedById'] = this.addedById;
    data['AddedDate'] = this.addedDate;
    data['UpdatedById'] = this.updatedById;
    data['UpdatedDate'] = this.updatedDate;
    data['IsDeleted'] = this.isDeleted;
    data['ShowInHomeProductsSection'] = this.showInHomeProductsSection;
    data['ShowInBestSellingSection'] = this.showInBestSellingSection;
    data['ShowInFeaturedProductsSection'] = this.showInFeaturedProductsSection;
    return data;
  }
}

class Company {
  int? id;
  Null? addedById;
  Null? addedDate;
  Null? updatedById;
  Null? updatedDate;
  bool? isDeleted;
  String? nameInArabic;
  String? nameInEnglish;
  Null? descriptionInArabic;
  Null? descriptionInEnglish;
  Null? tradeRecordFile;
  Null? taxRecordFile;
  bool? isReviewd;
  Null? logo;

  Company(
      {this.id,
        this.addedById,
        this.addedDate,
        this.updatedById,
        this.updatedDate,
        this.isDeleted,
        this.nameInArabic,
        this.nameInEnglish,
        this.descriptionInArabic,
        this.descriptionInEnglish,
        this.tradeRecordFile,
        this.taxRecordFile,
        this.isReviewd,
        this.logo});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    addedById = json['AddedById'];
    addedDate = json['AddedDate'];
    updatedById = json['UpdatedById'];
    updatedDate = json['UpdatedDate'];
    isDeleted = json['IsDeleted'];
    nameInArabic = json['NameInArabic'];
    nameInEnglish = json['NameInEnglish'];
    descriptionInArabic = json['DescriptionInArabic'];
    descriptionInEnglish = json['DescriptionInEnglish'];
    tradeRecordFile = json['TradeRecordFile'];
    taxRecordFile = json['TaxRecordFile'];
    isReviewd = json['IsReviewd'];
    logo = json['Logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['AddedById'] = this.addedById;
    data['AddedDate'] = this.addedDate;
    data['UpdatedById'] = this.updatedById;
    data['UpdatedDate'] = this.updatedDate;
    data['IsDeleted'] = this.isDeleted;
    data['NameInArabic'] = this.nameInArabic;
    data['NameInEnglish'] = this.nameInEnglish;
    data['DescriptionInArabic'] = this.descriptionInArabic;
    data['DescriptionInEnglish'] = this.descriptionInEnglish;
    data['TradeRecordFile'] = this.tradeRecordFile;
    data['TaxRecordFile'] = this.taxRecordFile;
    data['IsReviewd'] = this.isReviewd;
    data['Logo'] = this.logo;
    return data;
  }
}