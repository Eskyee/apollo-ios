// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import GraphQLAPI

public class Human: MockObject {
  public static let objectType: Object = GraphQLAPI.Objects.Human
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Human>>

  public struct MockFields {
    @Field<Int>("bodyTemperature") public var bodyTemperature
    @Field<String>("firstName") public var firstName
    @Field<Height>("height") public var height
    @Field<Bool>("laysEggs") public var laysEggs
    @Field<[Animal]>("predators") public var predators
    @Field<GraphQLEnum<GraphQLAPI.SkinCovering>>("skinCovering") public var skinCovering
    @Field<String>("species") public var species
  }
}

public extension Mock where O == Human {
  convenience init(
    bodyTemperature: Int? = nil,
    firstName: String? = nil,
    height: Mock<Height>? = nil,
    laysEggs: Bool? = nil,
    predators: [AnyMock]? = nil,
    skinCovering: GraphQLEnum<GraphQLAPI.SkinCovering>? = nil,
    species: String? = nil
  ) {
    self.init()
    self.bodyTemperature = bodyTemperature
    self.firstName = firstName
    self.height = height
    self.laysEggs = laysEggs
    self.predators = predators
    self.skinCovering = skinCovering
    self.species = species
  }
}
