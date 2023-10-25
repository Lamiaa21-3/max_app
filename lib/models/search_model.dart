class SearchModel {
  num? id;
  String? nameInArabic;
  String? nameInEnglish;
  String? descriptionInArabic;
  String? descriptionInEnglish;
  num? categoryId;
  Category? category;
  num? brandId;
  Brand? brand;
  num? companyId;
  Company? company;
  bool? isReturnAllowed;
  Null? barcode;
  bool? autoBarcode;
  String? mainImage;
  num? oldPrice;
  num? price;
  Null? productTaxes;
  String? addedById;
  String? addedDate;
  String? updatedById;
  String? updatedDate;
  bool? isDeleted;
  bool? showInHomeProductsSection;
  bool? showInBestSellingSection;
  bool? showInFeaturedProductsSection;

  SearchModel(
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

  SearchModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nameInArabic = json['NameInArabic'];
    nameInEnglish = json['NameInEnglish'];
    descriptionInArabic = json['DescriptionInArabic'];
    descriptionInEnglish = json['DescriptionInEnglish'];
    categoryId = json['CategoryId'];
    category = json['Category'] != null
        ? new Category.fromJson(json['Category'])
        : null;
    brandId = json['BrandId'];
    brand = json['Brand'] != null ? new Brand.fromJson(json['Brand']) : null;
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
    if (this.category != null) {
      data['Category'] = this.category!.toJson();
    }
    data['BrandId'] = this.brandId;
    if (this.brand != null) {
      data['Brand'] = this.brand!.toJson();
    }
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

class Category {
  num? id;
  String? nameInArabic;
  String? nameInEnglish;
  Null? descriptionInArabic;
  Null? descriptionInEnglish;
  num? commission;
  bool? isPopular;
  Null? image;
  Null? icon;
  Null? addedById;
  Null? addedDate;
  Null? updatedById;
  Null? updatedDate;
  bool? isDeleted;
  bool? showInHomeProductsSection;

  Category(
      {this.id,
        this.nameInArabic,
        this.nameInEnglish,
        this.descriptionInArabic,
        this.descriptionInEnglish,
        this.commission,
        this.isPopular,
        this.image,
        this.icon,
        this.addedById,
        this.addedDate,
        this.updatedById,
        this.updatedDate,
        this.isDeleted,
        this.showInHomeProductsSection});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nameInArabic = json['NameInArabic'];
    nameInEnglish = json['NameInEnglish'];
    descriptionInArabic = json['DescriptionInArabic'];
    descriptionInEnglish = json['DescriptionInEnglish'];
    commission = json['Commission'];
    isPopular = json['IsPopular'];
    image = json['Image'];
    icon = json['Icon'];
    addedById = json['AddedById'];
    addedDate = json['AddedDate'];
    updatedById = json['UpdatedById'];
    updatedDate = json['UpdatedDate'];
    isDeleted = json['IsDeleted'];
    showInHomeProductsSection = json['ShowInHomeProductsSection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['NameInArabic'] = this.nameInArabic;
    data['NameInEnglish'] = this.nameInEnglish;
    data['DescriptionInArabic'] = this.descriptionInArabic;
    data['DescriptionInEnglish'] = this.descriptionInEnglish;
    data['Commission'] = this.commission;
    data['IsPopular'] = this.isPopular;
    data['Image'] = this.image;
    data['Icon'] = this.icon;
    data['AddedById'] = this.addedById;
    data['AddedDate'] = this.addedDate;
    data['UpdatedById'] = this.updatedById;
    data['UpdatedDate'] = this.updatedDate;
    data['IsDeleted'] = this.isDeleted;
    data['ShowInHomeProductsSection'] = this.showInHomeProductsSection;
    return data;
  }
}

class Brand {
  num? id;
  String? nameInArabic;
  String? nameInEnglish;
  Null? imagePath;
  Null? bannerArabic;
  Null? bannerEnglish;
  Null? slug;
  int? companyId;
  bool? isActive;
  Null? addedDate;
  Null? updatedDate;
  bool? isDeleted;
  Null? addedById;
  Null? updatedById;

  Brand(
      {this.id,
        this.nameInArabic,
        this.nameInEnglish,
        this.imagePath,
        this.bannerArabic,
        this.bannerEnglish,
        this.slug,
        this.companyId,
        this.isActive,
        this.addedDate,
        this.updatedDate,
        this.isDeleted,
        this.addedById,
        this.updatedById});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nameInArabic = json['NameInArabic'];
    nameInEnglish = json['NameInEnglish'];
    imagePath = json['ImagePath'];
    bannerArabic = json['BannerArabic'];
    bannerEnglish = json['BannerEnglish'];
    slug = json['Slug'];
    companyId = json['CompanyId'];
    isActive = json['IsActive'];
    addedDate = json['AddedDate'];
    updatedDate = json['UpdatedDate'];
    isDeleted = json['IsDeleted'];
    addedById = json['AddedById'];
    updatedById = json['UpdatedById'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['NameInArabic'] = this.nameInArabic;
    data['NameInEnglish'] = this.nameInEnglish;
    data['ImagePath'] = this.imagePath;
    data['BannerArabic'] = this.bannerArabic;
    data['BannerEnglish'] = this.bannerEnglish;
    data['Slug'] = this.slug;
    data['CompanyId'] = this.companyId;
    data['IsActive'] = this.isActive;
    data['AddedDate'] = this.addedDate;
    data['UpdatedDate'] = this.updatedDate;
    data['IsDeleted'] = this.isDeleted;
    data['AddedById'] = this.addedById;
    data['UpdatedById'] = this.updatedById;
    return data;
  }
}

class Company {
  num? id;
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