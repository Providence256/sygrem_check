// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QRCodeDataImpl _$$QRCodeDataImplFromJson(Map<String, dynamic> json) =>
    _$QRCodeDataImpl(
      type: json['type'] as String,
      id: json['id'] as String,
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QRCodeDataImplToJson(_$QRCodeDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'timestamp': instance.timestamp,
    };

_$ReceiptDataImpl _$$ReceiptDataImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptDataImpl(
      id: json['id'] as String,
      receiptNumber: json['receiptNumber'] as String,
      storeName: json['storeName'] as String,
      storeAddress: json['storeAddress'] as String,
      date: DateTime.parse(json['date'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => ReceiptItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: (json['subtotal'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
      pdfUrl: json['pdfUrl'] as String?,
    );

Map<String, dynamic> _$$ReceiptDataImplToJson(_$ReceiptDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'receiptNumber': instance.receiptNumber,
      'storeName': instance.storeName,
      'storeAddress': instance.storeAddress,
      'date': instance.date.toIso8601String(),
      'items': instance.items,
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'total': instance.total,
      'paymentMethod': instance.paymentMethod,
      'pdfUrl': instance.pdfUrl,
    };

_$ReceiptItemImpl _$$ReceiptItemImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptItemImpl(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReceiptItemImplToJson(_$ReceiptItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
    };

_$DeclarationDataImpl _$$DeclarationDataImplFromJson(
  Map<String, dynamic> json,
) => _$DeclarationDataImpl(
  id: json['id'] as String,
  declarationNumber: json['declarationNumber'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  date: DateTime.parse(json['date'] as String),
  status: json['status'] as String,
  pdfUrl: json['pdfUrl'] as String?,
);

Map<String, dynamic> _$$DeclarationDataImplToJson(
  _$DeclarationDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'declarationNumber': instance.declarationNumber,
  'title': instance.title,
  'description': instance.description,
  'date': instance.date.toIso8601String(),
  'status': instance.status,
  'pdfUrl': instance.pdfUrl,
};
