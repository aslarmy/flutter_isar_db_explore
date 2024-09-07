// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peon.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPeonCollection on Isar {
  IsarCollection<Peon> get peons => this.collection();
}

const PeonSchema = CollectionSchema(
  name: r'Peon',
  id: -6233359682634967044,
  properties: {
    r'contactNo': PropertySchema(
      id: 0,
      name: r'contactNo',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 1,
      name: r'email',
      type: IsarType.string,
    ),
    r'fatherName': PropertySchema(
      id: 2,
      name: r'fatherName',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _peonEstimateSize,
  serialize: _peonSerialize,
  deserialize: _peonDeserialize,
  deserializeProp: _peonDeserializeProp,
  idName: r'id',
  indexes: {
    r'contactNo': IndexSchema(
      id: 298188080457918841,
      name: r'contactNo',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'contactNo',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'email': IndexSchema(
      id: -26095440403582047,
      name: r'email',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'email',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _peonGetId,
  getLinks: _peonGetLinks,
  attach: _peonAttach,
  version: '3.1.0+1',
);

int _peonEstimateSize(
  Peon object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.contactNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fatherName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _peonSerialize(
  Peon object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.contactNo);
  writer.writeString(offsets[1], object.email);
  writer.writeString(offsets[2], object.fatherName);
  writer.writeString(offsets[3], object.name);
}

Peon _peonDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Peon();
  object.contactNo = reader.readStringOrNull(offsets[0]);
  object.email = reader.readStringOrNull(offsets[1]);
  object.fatherName = reader.readStringOrNull(offsets[2]);
  object.peonId = id;
  object.name = reader.readStringOrNull(offsets[3]);
  return object;
}

P _peonDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _peonGetId(Peon object) {
  return object.peonId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _peonGetLinks(Peon object) {
  return [];
}

void _peonAttach(IsarCollection<dynamic> col, Id id, Peon object) {
  object.peonId = id;
}

extension PeonByIndex on IsarCollection<Peon> {
  Future<Peon?> getByContactNo(String? contactNo) {
    return getByIndex(r'contactNo', [contactNo]);
  }

  Peon? getByContactNoSync(String? contactNo) {
    return getByIndexSync(r'contactNo', [contactNo]);
  }

  Future<bool> deleteByContactNo(String? contactNo) {
    return deleteByIndex(r'contactNo', [contactNo]);
  }

  bool deleteByContactNoSync(String? contactNo) {
    return deleteByIndexSync(r'contactNo', [contactNo]);
  }

  Future<List<Peon?>> getAllByContactNo(List<String?> contactNoValues) {
    final values = contactNoValues.map((e) => [e]).toList();
    return getAllByIndex(r'contactNo', values);
  }

  List<Peon?> getAllByContactNoSync(List<String?> contactNoValues) {
    final values = contactNoValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'contactNo', values);
  }

  Future<int> deleteAllByContactNo(List<String?> contactNoValues) {
    final values = contactNoValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'contactNo', values);
  }

  int deleteAllByContactNoSync(List<String?> contactNoValues) {
    final values = contactNoValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'contactNo', values);
  }

  Future<Id> putByContactNo(Peon object) {
    return putByIndex(r'contactNo', object);
  }

  Id putByContactNoSync(Peon object, {bool saveLinks = true}) {
    return putByIndexSync(r'contactNo', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByContactNo(List<Peon> objects) {
    return putAllByIndex(r'contactNo', objects);
  }

  List<Id> putAllByContactNoSync(List<Peon> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'contactNo', objects, saveLinks: saveLinks);
  }

  Future<Peon?> getByEmail(String? email) {
    return getByIndex(r'email', [email]);
  }

  Peon? getByEmailSync(String? email) {
    return getByIndexSync(r'email', [email]);
  }

  Future<bool> deleteByEmail(String? email) {
    return deleteByIndex(r'email', [email]);
  }

  bool deleteByEmailSync(String? email) {
    return deleteByIndexSync(r'email', [email]);
  }

  Future<List<Peon?>> getAllByEmail(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndex(r'email', values);
  }

  List<Peon?> getAllByEmailSync(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'email', values);
  }

  Future<int> deleteAllByEmail(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'email', values);
  }

  int deleteAllByEmailSync(List<String?> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'email', values);
  }

  Future<Id> putByEmail(Peon object) {
    return putByIndex(r'email', object);
  }

  Id putByEmailSync(Peon object, {bool saveLinks = true}) {
    return putByIndexSync(r'email', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByEmail(List<Peon> objects) {
    return putAllByIndex(r'email', objects);
  }

  List<Id> putAllByEmailSync(List<Peon> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'email', objects, saveLinks: saveLinks);
  }
}

extension PeonQueryWhereSort on QueryBuilder<Peon, Peon, QWhere> {
  QueryBuilder<Peon, Peon, QAfterWhere> anyPeonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PeonQueryWhere on QueryBuilder<Peon, Peon, QWhereClause> {
  QueryBuilder<Peon, Peon, QAfterWhereClause> peonIdEqualTo(Id peonId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: peonId,
        upper: peonId,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> peonIdNotEqualTo(Id peonId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: peonId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: peonId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: peonId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: peonId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> peonIdGreaterThan(Id peonId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: peonId, includeLower: include),
      );
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> peonIdLessThan(Id peonId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: peonId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> peonIdBetween(
    Id lowerPeonId,
    Id upperPeonId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerPeonId,
        includeLower: includeLower,
        upper: upperPeonId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> contactNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'contactNo',
        value: [null],
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> contactNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'contactNo',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> contactNoEqualTo(
      String? contactNo) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'contactNo',
        value: [contactNo],
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> contactNoNotEqualTo(
      String? contactNo) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contactNo',
              lower: [],
              upper: [contactNo],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contactNo',
              lower: [contactNo],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contactNo',
              lower: [contactNo],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'contactNo',
              lower: [],
              upper: [contactNo],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'email',
        value: [null],
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'email',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> emailEqualTo(String? email) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'email',
        value: [email],
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterWhereClause> emailNotEqualTo(String? email) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [],
              upper: [email],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [email],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [email],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [],
              upper: [email],
              includeUpper: false,
            ));
      }
    });
  }
}

extension PeonQueryFilter on QueryBuilder<Peon, Peon, QFilterCondition> {
  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactNo',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactNo',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contactNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contactNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contactNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contactNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contactNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contactNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> contactNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fatherName',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fatherName',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fatherName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fatherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fatherName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fatherName',
        value: '',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> fatherNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fatherName',
        value: '',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> peonIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> peonIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> peonIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> peonIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> peonIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> peonIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Peon, Peon, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension PeonQueryObject on QueryBuilder<Peon, Peon, QFilterCondition> {}

extension PeonQueryLinks on QueryBuilder<Peon, Peon, QFilterCondition> {}

extension PeonQuerySortBy on QueryBuilder<Peon, Peon, QSortBy> {
  QueryBuilder<Peon, Peon, QAfterSortBy> sortByContactNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactNo', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> sortByContactNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactNo', Sort.desc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> sortByFatherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> sortByFatherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.desc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension PeonQuerySortThenBy on QueryBuilder<Peon, Peon, QSortThenBy> {
  QueryBuilder<Peon, Peon, QAfterSortBy> thenByContactNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactNo', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByContactNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactNo', Sort.desc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByFatherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByFatherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatherName', Sort.desc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByPeonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByPeonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Peon, Peon, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension PeonQueryWhereDistinct on QueryBuilder<Peon, Peon, QDistinct> {
  QueryBuilder<Peon, Peon, QDistinct> distinctByContactNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Peon, Peon, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Peon, Peon, QDistinct> distinctByFatherName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fatherName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Peon, Peon, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension PeonQueryProperty on QueryBuilder<Peon, Peon, QQueryProperty> {
  QueryBuilder<Peon, int, QQueryOperations> peonIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Peon, String?, QQueryOperations> contactNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactNo');
    });
  }

  QueryBuilder<Peon, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<Peon, String?, QQueryOperations> fatherNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fatherName');
    });
  }

  QueryBuilder<Peon, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
