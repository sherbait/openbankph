import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Open Bank Project Group Code

class OpenBankProjectGroup {
  static String baseUrl = 'https://apisandbox.openbankproject.com';
  static Map<String, String> headers = {};
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'authToken',
      apiUrl: '${OpenBankProjectGroup.baseUrl}/my/logins/direct',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'directlogin':
            'username=dgepte23, password=2vb2qw6z78gvouiuo, consumer_key=41xj02ympart3grvqhjchw4mjrpzf3um5ixhdrme',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic authToken(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

class GetBanksCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBanks',
      apiUrl: '${OpenBankProjectGroup.baseUrl}$version/banks',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic banks(dynamic response) => getJsonField(
        response,
        r'''$.banks''',
        true,
      );
  dynamic bankNames(dynamic response) => getJsonField(
        response,
        r'''$.banks[:].full_name''',
        true,
      );
}

class GetBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBank',
      apiUrl: '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/products/$productCode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBranchesOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getBranchesOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/branches',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic branches(dynamic response) => getJsonField(
        response,
        r'''$.branches''',
        true,
      );
}

class GetProductsOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductsOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}/obp/v2.0.0/banks/$bankId/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
}

class CreateBranchOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "gr.bank.branch.2",
  "bank_id": "$bankId",
  "name": "GRBank San Fernando",
  "address": {
    "line_1": "GRBank Corporate Center",
    "line_2": "Barangay Dolores",
    "line_3": "",
    "city": "City of San Fernando",
    "county": "Pampanga",
    "state": "Region III",
    "postcode": "2003",
    "country_code": "PH"
  },
  "location": {
    "latitude": 15.03,
    "longitude": 120.68
  },
  "meta": {
    "license": {
      "id": "ODbL-1.0",
      "name": "Open Database License"
    }
  },
  "lobby": {
    "monday": [
      {
        "opening_time": "8:00",
        "closing_time": "16:00"
      }
    ],
    "tuesday": [
      {
        "opening_time": "8:00",
        "closing_time": "16:00"
      }
    ],
    "wednesday": [
      {
        "opening_time": "8:00",
        "closing_time": "16:00"
      }
    ],
    "thursday": [
      {
        "opening_time": "8:00",
        "closing_time": "16:00"
      }
    ],
    "friday": [
      {
        "opening_time": "8:00",
        "closing_time": "16:00"
      }
    ],
    "saturday": [
      {
        "opening_time": "",
        "closing_time": ""
      }
    ],
    "sunday": [
      {
        "opening_time": "",
        "closing_time": ""
      }
    ]
  },
  "drive_up": {
    "monday": {
      "opening_time": "",
      "closing_time": ""
    },
    "tuesday": {
      "opening_time": "",
      "closing_time": ""
    },
    "wednesday": {
      "opening_time": "",
      "closing_time": ""
    },
    "thursday": {
      "opening_time": "",
      "closing_time": ""
    },
    "friday": {
      "opening_time": "",
      "closing_time": ""
    },
    "saturday": {
      "opening_time": "",
      "closing_time": ""
    },
    "sunday": {
      "opening_time": "",
      "closing_time": ""
    }
  },
  "branch_routing": {
    "scheme": "OBP",
    "address": "gr.bank"
  },
  "is_accessible": "true",
  "accessibleFeatures": "wheelchair, atm usuable by the visually impaired",
  "branch_type": "",
  "more_info": "sfdolores@grbank.com.ph",
  "phone_number": "+63459611113"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createBranchOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/branches',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateAtmOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    const ffApiRequestBody = '''
{
  "id": "gr.bank.atm.0",
  "bank_id": "gr.bank",
  "name": "Atm by the Lake",
  "address": {
    "line_1": "No 1 the Road",
    "line_2": "The Place",
    "line_3": "The Hill",
    "city": "Berlin",
    "county": "",
    "state": "Brandenburg",
    "postcode": "13359",
    "country_code": "DE"
  },
  "location": {
    "latitude": 11.45,
    "longitude": 11.45
  },
  "meta": {
    "license": {
      "id": "ODbL-1.0",
      "name": "Open Database License"
    }
  },
  "monday": {
    "opening_time": "10:00",
    "closing_time": "18:00"
  },
  "tuesday": {
    "opening_time": "10:00",
    "closing_time": "18:00"
  },
  "wednesday": {
    "opening_time": "10:00",
    "closing_time": "18:00"
  },
  "thursday": {
    "opening_time": "10:00",
    "closing_time": "18:00"
  },
  "friday": {
    "opening_time": "10:00",
    "closing_time": "18:00"
  },
  "saturday": {
    "opening_time": "10:00",
    "closing_time": "18:00"
  },
  "sunday": {
    "opening_time": "10:00",
    "closing_time": "18:00"
  },
  "is_accessible": "true",
  "located_at": "",
  "more_info": "More information about this fee",
  "has_deposit_capability": "true",
  "supported_languages": [
    "es",
    "fr",
    "de"
  ],
  "services": [
    "ATBP",
    "ATBA"
  ],
  "accessibility_features": [
    "ATAC",
    "ATAD"
  ],
  "supported_currencies": [
    "EUR",
    "MXN",
    "USD"
  ],
  "notes": [
    "String1",
    "String2"
  ],
  "location_categories": [
    "ATBI",
    "ATBE"
  ],
  "minimum_withdrawal": "5",
  "branch_identification": "",
  "site_identification": "",
  "site_name": "",
  "cash_withdrawal_national_fee": "",
  "cash_withdrawal_international_fee": "",
  "balance_inquiry_fee": "",
  "atm_type": "",
  "phone": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAtmOfBank',
      apiUrl: '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/atms',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "legal_name": "$legalName",
  "customer_number": "$customerNumber",
  "mobile_phone_number": "$phoneNumber",
  "email": "$email",
  "face_image": {
    "url": "$imageUrl",
    "date": "$imageDate"
  },
  "date_of_birth": "$dateOfBirth",
  "relationship_status": "$relationshipStatus",
  "dependants": 0,
  "dob_of_dependants": [],
  "credit_rating": {
    "rating": "OBP",
    "source": "OBP"
  },
  "credit_limit": {
    "currency": "$currency",
    "amount": "0"
  },
  "highest_education_attained": "",
  "employment_status": "",
  "kyc_status": true,
  "last_ok_date": "$currentDate",
  "title": "",
  "branch_id": "$branchId",
  "name_suffix": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCustomerOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/customers',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "legal_name": "$legalName",
  "date_of_birth": "$dateOfBirth",
  "title": "$title",
  "name_suffix": "$nameSuffix"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateCustomerIdentityOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/customers/$customerId/identity',
      callType: ApiCallType.PUT,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateCustomerNumberOfBankCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? phoneNumber = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile_phone_number": "$phoneNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateCustomerNumberOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/customers/$customerId/mobile-number',
      callType: ApiCallType.PUT,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "face_image": {
    "url": "https://www.openbankproject.com",
    "date": "1100-01-01T00:00:00Z"
  },
  "relationship_status": "$relationshipStatus",
  "dependants": $dependants,
  "highest_education_attained": "$highestEducationAttained",
  "employment_status": "$employmentStatus"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateCustomerOtherDataOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/customers/$customerId/data',
      callType: ApiCallType.PUT,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCustomerOfBankCall {
  Future<ApiCallResponse> call({
    String? customerNumber = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_number": "$customerNumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCustomerOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/customers/customer-number-query/overview',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic accounts(dynamic response) => getJsonField(
        response,
        r'''$.accounts''',
        true,
      );
}

class CreateCustomerAccountLinkCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? accountId = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_id": "$customerId",
  "bank_id": "$bankId",
  "account_id": "$accountId",
  "relationship_type": "Owner"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCustomerAccountLink',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/customer-account-links',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateAccountInBankCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? accountLabel = 'Product Account',
    String? branchId = 'gr.bank.branch.1',
    String? accountNumber = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "label": "$accountLabel",
  "product_code": "$productCode",
  "balance": {
    "currency": "$currency",
    "amount": "0"
  },
  "branch_id": "$branchId",
  "account_routings": [
    {
      "scheme": "AccountNumber",
      "address": "$accountNumber"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAccountInBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/accounts',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAccountInBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/my/banks/$bankId/accounts/$accountId/account',
      callType: ApiCallType.GET,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "parent_product_code": "$parentProductCode",
  "name": "$name",
  "more_info_url": "$moreInfoUrl",
  "terms_and_conditions_url": "https://www.grbank.com.ph/faqs",
  "description": "$description",
  "meta": {
    "license": {
      "id": "ODbL-1.0",
      "name": "Open Database License"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProductOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/products/$productCode',
      callType: ApiCallType.PUT,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "$bankId",
  "bank_code": "GRB",
  "full_name": "GRBank",
  "logo": "https://static.openbankproject.com/images/sandbox/bank_y.png",
  "website": "https://www.openbankproject.com",
  "bank_routings": [
    {
      "scheme": "BIC",
      "address": ""
    },
    {
      "scheme": "OBP",
      "address": "gr.bank"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateBank',
      apiUrl: '${OpenBankProjectGroup.baseUrl}$version/banks',
      callType: ApiCallType.PUT,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateProductCollectionOfBankCall {
  Future<ApiCallResponse> call({
    String? collectionCode = 'gr.bank.collection.deposits',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    const ffApiRequestBody = '''
{
  "parent_product_code": "gr.bank.products",
  "children_product_codes": [
    "gr.bank.product.payroll-account",
    "gr.bank.product.basic-deposit-account"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProductCollectionOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/product-collections/$collectionCode',
      callType: ApiCallType.PUT,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetProductCollectionOfBankCall {
  Future<ApiCallResponse> call({
    String? collectionCode = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductCollectionOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/product-collections/$collectionCode',
      callType: ApiCallType.GET,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
  dynamic productNames(dynamic response) => getJsonField(
        response,
        r'''$.products[:].name''',
        true,
      );
  dynamic productCodes(dynamic response) => getJsonField(
        response,
        r'''$.products[:].code''',
        true,
      );
}

class CreateProductAttributeOfBankCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? name = '',
    String? type = 'STRING',
    String? value = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "type": "$type",
  "value": "$value",
  "is_active": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createProductAttributeOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/products/$productCode/attribute',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateProductFeeOfBankCall {
  Future<ApiCallResponse> call({
    String? productCode = 'gr.bank.product.basic-deposit-account',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    const ffApiRequestBody = '''
{
  "name": "DORMANCY_FEE",
  "is_active": true,
  "more_info": "Dormancy fee",
  "value": {
    "currency": "PHP",
    "amount": "0",
    "frequency": "DAILY",
    "type": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createProductFeeOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/products/$productCode/fee',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAtmsOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAtmsOfBank',
      apiUrl: '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/atms',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic atms(dynamic response) => getJsonField(
        response,
        r'''$.atms''',
        true,
      );
}

class CreateBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    const ffApiRequestBody = '''
{
  "id": "gr.bank",
  "bank_code": "GRB",
  "full_name": "GRBank",
  "logo": "https://static.openbankproject.com/images/sandbox/bank_y.png",
  "website": "www.openbankproject.com",
  "bank_routings": [
    {
      "scheme": "OBP",
      "address": "gr.bank"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createBank',
      apiUrl: '${OpenBankProjectGroup.baseUrl}$version/banks',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "username": "$username",
  "password": "$password",
  "first_name": "$firstName",
  "last_name": "$lastName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl: '${OpenBankProjectGroup.baseUrl}$version/users',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateTransactionOfBankCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? shortCode = '',
    String? summary = '',
    String? description = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "id": {
    "value": "$uuid"
  },
  "bank_id": "$bankId",
  "short_code": "$shortCode",
  "summary": "$summary",
  "description": "$description",
  "charge": {
    "currency": "$currency",
    "amount": "0"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createTransactionOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/transaction-types',
      callType: ApiCallType.PUT,
      headers: {
        'directlogin': 'token=$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetTransactionsOfBankCall {
  Future<ApiCallResponse> call({
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTransactionsOfBank',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/transaction-types',
      callType: ApiCallType.GET,
      headers: {
        'directlogin': 'token=$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAccountTransactionsCall {
  Future<ApiCallResponse> call({
    String? accountId = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAccountTransactions',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/my/banks/$bankId/accounts/$accountId/transactions',
      callType: ApiCallType.GET,
      headers: {
        'directlogin': 'token=$authToken',
      },
      params: {
        'limit': 50,
        'offset': 0,
        'sort_direction': "DESC",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic transactionIds(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].id''',
        true,
      );
  dynamic transactionTypes(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.type''',
        true,
      );
  dynamic newBalances(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.new_balance.amount''',
        true,
      );
  dynamic descriptions(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.description''',
        true,
      );
  dynamic completedDates(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.completed''',
        true,
      );
  dynamic amounts(dynamic response) => getJsonField(
        response,
        r'''$.transactions[:].details.value.amount''',
        true,
      );
}

class CreateTransactionRequestCall {
  Future<ApiCallResponse> call({
    String? sourceAccountId = '154e3cf3-5ae2-44de-8c06-b6beea43651d',
    String? description = '',
    String? amount = '',
    String? destinationAccountId = '',
    String? version = '/obp/v5.1.0',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyIiOiIifQ.8aNvfL0hxb-Z4VzIi2GDN8Qr0d8FRpIhssKqzTKE6wQ',
    String? bankId = 'gr.bank',
    String? userId = '870aea47-ff14-46fe-9851-4be33c575d4f',
    String? currency = 'EUR',
  }) async {
    final ffApiRequestBody = '''
{
  "to": {
    "bank_id": "$bankId",
    "account_id": "$destinationAccountId"
  },
  "value": {
    "currency": "$currency",
    "amount": "$amount"
  },
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createTransactionRequest',
      apiUrl:
          '${OpenBankProjectGroup.baseUrl}$version/banks/$bankId/accounts/$sourceAccountId/owner/transaction-request-types/ACCOUNT/transaction-requests',
      callType: ApiCallType.POST,
      headers: {
        'directlogin': 'token=$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
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
