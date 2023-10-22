
class FavouriteModel {
  int? id;
  int? productId;
  Product? product;
  String? userId;
  User? user;
  String? date;

  FavouriteModel(
      {this.id,
        this.productId,
        this.product,
        this.userId,
        this.user,
        this.date});

  FavouriteModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    productId = json['ProductId'];
    product =
    json['Product'] != null ? new Product.fromJson(json['Product']) : null;
    userId = json['UserId'];
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['ProductId'] = this.productId;
    if (this.product != null) {
      data['Product'] = this.product!.toJson();
    }
    data['UserId'] = this.userId;
    if (this.user != null) {
      data['User'] = this.user!.toJson();
    }
    data['Date'] = this.date;
    return data;
  }
}

class Product {
  int? id;
  String? nameInArabic;
  String? nameInEnglish;
  String? descriptionInArabic;
  String? descriptionInEnglish;
  int? categoryId;
  Null? category;
  int? brandId;
  Null? brand;
  Null? companyId;
  Null? company;
  bool? isReturnAllowed;
  Null? barcode;
  bool? autoBarcode;
  String? mainImage;
  int? oldPrice;
  int? price;
  Null? productTaxes;
  Null? addedById;
  Null? addedDate;
  Null? updatedById;
  Null? updatedDate;
  bool? isDeleted;
  bool? showInHomeProductsSection;
  bool? showInBestSellingSection;
  bool? showInFeaturedProductsSection;

  Product(
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

  Product.fromJson(Map<String, dynamic> json) {
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
    company = json['Company'];
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
    data['Company'] = this.company;
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

class User {
  String? id;
  String? name;
  Null? phone;
  Null? companyId;
  Null? company;
  Null? jobTitleId;
  Null? jobTitle;
  Null? groupId;
  Null? group;
  bool? isActive;
  Null? addedDate;
  Null? updatedDate;
  String? email;
  Null? address;
  Null? roles;
  Null? userRoles;
  Null? rolesIds;
  Null? phoneNumber;
  Null? password;

  User(
      {this.id,
        this.name,
        this.phone,
        this.companyId,
        this.company,
        this.jobTitleId,
        this.jobTitle,
        this.groupId,
        this.group,
        this.isActive,
        this.addedDate,
        this.updatedDate,
        this.email,
        this.address,
        this.roles,
        this.userRoles,
        this.rolesIds,
        this.phoneNumber,
        this.password});

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    phone = json['Phone'];
    companyId = json['CompanyId'];
    company = json['Company'];
    jobTitleId = json['JobTitleId'];
    jobTitle = json['JobTitle'];
    groupId = json['GroupId'];
    group = json['Group'];
    isActive = json['IsActive'];
    addedDate = json['AddedDate'];
    updatedDate = json['UpdatedDate'];
    email = json['Email'];
    address = json['Address'];
    roles = json['Roles'];
    userRoles = json['userRoles'];
    rolesIds = json['RolesIds'];
    phoneNumber = json['PhoneNumber'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Phone'] = this.phone;
    data['CompanyId'] = this.companyId;
    data['Company'] = this.company;
    data['JobTitleId'] = this.jobTitleId;
    data['JobTitle'] = this.jobTitle;
    data['GroupId'] = this.groupId;
    data['Group'] = this.group;
    data['IsActive'] = this.isActive;
    data['AddedDate'] = this.addedDate;
    data['UpdatedDate'] = this.updatedDate;
    data['Email'] = this.email;
    data['Address'] = this.address;
    data['Roles'] = this.roles;
    data['userRoles'] = this.userRoles;
    data['RolesIds'] = this.rolesIds;
    data['PhoneNumber'] = this.phoneNumber;
    data['Password'] = this.password;
    return data;
  }
}