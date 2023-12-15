import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Open Bank Project Group Code

class OpenBankProjectGroup {
  static AuthTokenCall authTokenCall = AuthTokenCall();
  static GetBanksCall getBanksCall = GetBanksCall();
  static GetBankCall getBankCall = GetBankCall();
  static GetProductOfBankCall getProductOfBankCall = GetProductOfBankCall();
  static GetBranchesOfBankCall getBranchesOfBankCall = GetBranchesOfBankCall();
  static GetProductsOfBankCall getProductsOfBankCall = GetProductsOfBankCall();
  static CreateBranchOfBankCall createBranchOfBankCall =
      CreateBranchOfBankCall();
  static CreateAtmOfBankCall createAtmOfBankCall = CreateAtmOfBankCall();
  static CreateCustomerOfBankCall createCustomerOfBankCall =
      CreateCustomerOfBankCall();
  static UpdateCustomerIdentityOfBankCall updateCustomerIdentityOfBankCall =
      UpdateCustomerIdentityOfBankCall();
  static UpdateCustomerNumberOfBankCall updateCustomerNumberOfBankCall =
      UpdateCustomerNumberOfBankCall();
  static UpdateCustomerOtherDataOfBankCall updateCustomerOtherDataOfBankCall =
      UpdateCustomerOtherDataOfBankCall();
  static GetCustomerOfBankCall getCustomerOfBankCall = GetCustomerOfBankCall();
  static CreateCustomerAccountLinkCall createCustomerAccountLinkCall =
      CreateCustomerAccountLinkCall();
  static CreateAccountInBankCall createAccountInBankCall =
      CreateAccountInBankCall();
  static GetAccountInBankCall getAccountInBankCall = GetAccountInBankCall();
  static UpdateProductOfBankCall updateProductOfBankCall =
      UpdateProductOfBankCall();
  static UpdateBankCall updateBankCall = UpdateBankCall();
  static UpdateProductCollectionOfBankCall updateProductCollectionOfBankCall =
      UpdateProductCollectionOfBankCall();
  static GetProductCollectionOfBankCall getProductCollectionOfBankCall =
      GetProductCollectionOfBankCall();
  static CreateProductAttributeOfBankCall createProductAttributeOfBankCall =
      CreateProductAttributeOfBankCall();
  static CreateProductFeeOfBankCall createProductFeeOfBankCall =
      CreateProductFeeOfBankCall();
  static GetAtmsOfBankCall getAtmsOfBankCall = GetAtmsOfBankCall();
  static CreateBankCall createBankCall = CreateBankCall();
  static CreateUserCall createUserCall = CreateUserCall();
  static CreateTransactionOfBankCall createTransactionOfBankCall =
      CreateTransactionOfBankCall();
  static GetTransactionsOfBankCall getTransactionsOfBankCall =
      GetTransactionsOfBankCall();
  static GetAccountTransactionsCall getAccountTransactionsCall =
      GetAccountTransactionsCall();
  static CreateTransactionRequestCall createTransactionRequestCall =
      CreateTransactionRequestCall();
}

class AuthTokenCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AuthTokenCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic authToken(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

class GetBanksCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetBanksCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List? banks(dynamic response) => getJsonField(
        response,
        r'''$.banks''',
        true,
      ) as List?;
  List? bankNames(dynamic response) => getJsonField(
        response,
        r'''$.banks[:].full_name''',
        true,
      ) as List?;
}

class GetBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic bankName(dynamic response) => getJsonField(
        response,
        r'''$.full_name''',
      );
  dynamic bankCode(dynamic response) => getJsonField(
        response,
        r'''$.bank_code''',
      );
  dynamic bankWebsite(dynamic response) => getJsonField(
        response,
        r'''$.website''',
      );
  dynamic bankLogoUrl(dynamic response) => getJsonField(
        response,
        r'''$.logo''',
      );
}

class GetProductOfBankCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetProductOfBankCall',
        'variables': {
          'productCode': productCode,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetBranchesOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetBranchesOfBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List? branches(dynamic response) => getJsonField(
        response,
        r'''$.branches''',
        true,
      ) as List?;
}

class GetProductsOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetProductsOfBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class CreateBranchOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateBranchOfBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateAtmOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateAtmOfBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateCustomerOfBankCall {
  Future<ApiCallResponse> call({
    String? legalName = '',
    String? customerNumber = '',
    String? phoneNumber = '',
    String? email = '',
    String? imageUrl =
        'https://www.flaticon.com/free-icon/customer_12989085?term=customer&page=1&position=2&origin=tag&related_id=12989085',
    String? imageDate = '1100-01-01T00:00:00Z',
    String? dateOfBirth = '1100-01-01T00:00:00Z',
    String? relationshipStatus = '',
    String? branchId = 'gr.bank.branch.1',
    String? currentDate = '1100-01-01T00:00:00Z',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCustomerOfBankCall',
        'variables': {
          'legalName': legalName,
          'customerNumber': customerNumber,
          'phoneNumber': phoneNumber,
          'email': email,
          'imageUrl': imageUrl,
          'imageDate': imageDate,
          'dateOfBirth': dateOfBirth,
          'relationshipStatus': relationshipStatus,
          'branchId': branchId,
          'currentDate': currentDate,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class UpdateCustomerIdentityOfBankCall {
  Future<ApiCallResponse> call({
    String? legalName = '',
    String? customerId = '',
    String? dateOfBirth = '',
    String? title = '',
    String? nameSuffix = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateCustomerIdentityOfBankCall',
        'variables': {
          'legalName': legalName,
          'customerId': customerId,
          'dateOfBirth': dateOfBirth,
          'title': title,
          'nameSuffix': nameSuffix,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class UpdateCustomerNumberOfBankCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? phoneNumber = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateCustomerNumberOfBankCall',
        'variables': {
          'customerId': customerId,
          'phoneNumber': phoneNumber,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class UpdateCustomerOtherDataOfBankCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? relationshipStatus = '',
    int? dependants,
    String? highestEducationAttained = '',
    String? employmentStatus = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateCustomerOtherDataOfBankCall',
        'variables': {
          'customerId': customerId,
          'relationshipStatus': relationshipStatus,
          'dependants': dependants,
          'highestEducationAttained': highestEducationAttained,
          'employmentStatus': employmentStatus,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetCustomerOfBankCall {
  Future<ApiCallResponse> call({
    String? customerNumber = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetCustomerOfBankCall',
        'variables': {
          'customerNumber': customerNumber,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List? accounts(dynamic response) => getJsonField(
        response,
        r'''$.accounts''',
        true,
      ) as List?;
}

class CreateCustomerAccountLinkCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? accountId = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCustomerAccountLinkCall',
        'variables': {
          'customerId': customerId,
          'accountId': accountId,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateAccountInBankCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? accountLabel = 'Product Account',
    String? branchId = 'gr.bank.branch.1',
    String? accountNumber = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateAccountInBankCall',
        'variables': {
          'productCode': productCode,
          'accountLabel': accountLabel,
          'branchId': branchId,
          'accountNumber': accountNumber,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic accountId(dynamic response) => getJsonField(
        response,
        r'''$.account_id''',
      );
  dynamic accountNumber(dynamic response) => getJsonField(
        response,
        r'''$.account_routings[:].address''',
      );
}

class GetAccountInBankCall {
  Future<ApiCallResponse> call({
    String? accountId = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAccountInBankCall',
        'variables': {
          'accountId': accountId,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic currency(dynamic response) => getJsonField(
        response,
        r'''$.balance.currency''',
      );
  dynamic balance(dynamic response) => getJsonField(
        response,
        r'''$.balance.amount''',
      );
  dynamic accountNumber(dynamic response) => getJsonField(
        response,
        r'''$.number''',
      );
  dynamic accountName(dynamic response) => getJsonField(
        response,
        r'''$.label''',
      );
}

class UpdateProductOfBankCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? name = '',
    String? moreInfoUrl = '',
    String? parentProductCode = '',
    String? description = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateProductOfBankCall',
        'variables': {
          'productCode': productCode,
          'name': name,
          'moreInfoUrl': moreInfoUrl,
          'parentProductCode': parentProductCode,
          'description': description,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class UpdateBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class UpdateProductCollectionOfBankCall {
  Future<ApiCallResponse> call({
    String? collectionCode = 'gr.bank.collection.deposits',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateProductCollectionOfBankCall',
        'variables': {
          'collectionCode': collectionCode,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetProductCollectionOfBankCall {
  Future<ApiCallResponse> call({
    String? collectionCode = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetProductCollectionOfBankCall',
        'variables': {
          'collectionCode': collectionCode,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
  List? productNames(dynamic response) => getJsonField(
        response,
        r'''$.products[:].name''',
        true,
      ) as List?;
  List? productCodes(dynamic response) => getJsonField(
        response,
        r'''$.products[:].code''',
        true,
      ) as List?;
}

class CreateProductAttributeOfBankCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? name = '',
    String? type = 'STRING',
    String? value = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateProductAttributeOfBankCall',
        'variables': {
          'productCode': productCode,
          'name': name,
          'type': type,
          'value': value,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateProductFeeOfBankCall {
  Future<ApiCallResponse> call({
    String? productCode = 'gr.bank.product.basic-deposit-account',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateProductFeeOfBankCall',
        'variables': {
          'productCode': productCode,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetAtmsOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAtmsOfBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List? atms(dynamic response) => getJsonField(
        response,
        r'''$.atms''',
        true,
      ) as List?;
}

class CreateBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? firstName = '',
    String? lastName = '',
    String? username = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateUserCall',
        'variables': {
          'email': email,
          'password': password,
          'firstName': firstName,
          'lastName': lastName,
          'username': username,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateTransactionOfBankCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? shortCode = '',
    String? summary = '',
    String? description = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateTransactionOfBankCall',
        'variables': {
          'uuid': uuid,
          'shortCode': shortCode,
          'summary': summary,
          'description': description,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetTransactionsOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTransactionsOfBankCall',
        'variables': {
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetAccountTransactionsCall {
  Future<ApiCallResponse> call({
    String? accountId = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAccountTransactionsCall',
        'variables': {
          'accountId': accountId,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List? transactionIds(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].id''',
        true,
      ) as List?;
  List? transactionTypes(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.type''',
        true,
      ) as List?;
  List? newBalances(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.new_balance.amount''',
        true,
      ) as List?;
  List? descriptions(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.description''',
        true,
      ) as List?;
  List? completedDates(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.completed''',
        true,
      ) as List?;
  List? amounts(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.value.amount''',
        true,
      ) as List?;
}

class CreateTransactionRequestCall {
  Future<ApiCallResponse> call({
    String? sourceAccountId = '154e3cf3-5ae2-44de-8c06-b6beea43651d',
    String? description = '',
    String? amount = '',
    String? destinationAccountId = '',
    String? version = '/obp/v5.1.0',
    String? authToken = '',
    String? bankId = 'gr.bank',
    String? userId = '',
    String? currency = 'EUR',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateTransactionRequestCall',
        'variables': {
          'sourceAccountId': sourceAccountId,
          'description': description,
          'amount': amount,
          'destinationAccountId': destinationAccountId,
          'version': version,
          'authToken': authToken,
          'bankId': bankId,
          'userId': userId,
          'currency': currency,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic fromBankId(dynamic response) => getJsonField(
        response,
        r'''$.from.bank_id''',
      );
  dynamic fromAccountId(dynamic response) => getJsonField(
        response,
        r'''$.from.account_id''',
      );
  dynamic transactionRequestId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic transactionRequestType(dynamic response) => getJsonField(
        response,
        r'''$.type''',
      );
}

/// End Open Bank Project Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
