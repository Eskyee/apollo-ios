public protocol AnyScalarType: JSONEncodable, AnyHashableConvertible {}

public protocol ScalarType:
  AnyScalarType,
  JSONDecodable,
  GraphQLOperationVariableValue {}

extension String: ScalarType {}
extension Int: ScalarType {}
extension Bool: ScalarType {}
extension Float: ScalarType {}
extension Double: ScalarType {}

public protocol CustomScalarType:
  AnyScalarType,
  JSONDecodable,
  OutputTypeConvertible,
  GraphQLOperationVariableValue
{
  var jsonValue: JSONValue { get }
}

extension CustomScalarType {
  @inlinable public static var asOutputType: Selection.Field.OutputType {
    .nonNull(.customScalar(self))
  }
}

extension Array: AnyScalarType where Array.Element: AnyScalarType & Hashable {}

extension Optional: AnyScalarType where Wrapped: AnyScalarType & Hashable {}
