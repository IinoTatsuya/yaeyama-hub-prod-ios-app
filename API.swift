//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String) {
    graphQLMap = ["id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var created: String {
    get {
      return graphQLMap["created"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: Bool {
    get {
      return graphQLMap["imageBool"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageIndex: Int {
    get {
      return graphQLMap["imageIndex"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageIndex")
    }
  }

  public var imageUrl: String {
    get {
      return graphQLMap["imageURL"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var opponentId: GraphQLID {
    get {
      return graphQLMap["opponentId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentId")
    }
  }

  public var opponentName: String {
    get {
      return graphQLMap["opponentName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentName")
    }
  }
}

public struct ModelMessageConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, content: ModelStringInput? = nil, created: ModelStringInput? = nil, imageBool: ModelBooleanInput? = nil, imageIndex: ModelIntInput? = nil, imageUrl: ModelStringInput? = nil, opponentId: ModelIDInput? = nil, opponentName: ModelStringInput? = nil, and: [ModelMessageConditionInput?]? = nil, or: [ModelMessageConditionInput?]? = nil, not: ModelMessageConditionInput? = nil) {
    graphQLMap = ["username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var created: ModelStringInput? {
    get {
      return graphQLMap["created"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: ModelBooleanInput? {
    get {
      return graphQLMap["imageBool"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageIndex: ModelIntInput? {
    get {
      return graphQLMap["imageIndex"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageIndex")
    }
  }

  public var imageUrl: ModelStringInput? {
    get {
      return graphQLMap["imageURL"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var opponentId: ModelIDInput? {
    get {
      return graphQLMap["opponentId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentId")
    }
  }

  public var opponentName: ModelStringInput? {
    get {
      return graphQLMap["opponentName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentName")
    }
  }

  public var and: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMessageConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMessageConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelBooleanInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Bool? = nil, eq: Bool? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Bool? {
    get {
      return graphQLMap["ne"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Bool? {
    get {
      return graphQLMap["eq"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, content: String? = nil, created: String? = nil, imageBool: Bool? = nil, imageIndex: Int? = nil, imageUrl: String? = nil, opponentId: GraphQLID? = nil, opponentName: String? = nil) {
    graphQLMap = ["id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var created: String? {
    get {
      return graphQLMap["created"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: Bool? {
    get {
      return graphQLMap["imageBool"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageIndex: Int? {
    get {
      return graphQLMap["imageIndex"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageIndex")
    }
  }

  public var imageUrl: String? {
    get {
      return graphQLMap["imageURL"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var opponentId: GraphQLID? {
    get {
      return graphQLMap["opponentId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentId")
    }
  }

  public var opponentName: String? {
    get {
      return graphQLMap["opponentName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentName")
    }
  }
}

public struct DeleteMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateTimelineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, description: String, created: String, imageBool: Bool, imageUrl: String) {
    graphQLMap = ["id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var description: String {
    get {
      return graphQLMap["description"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var created: String {
    get {
      return graphQLMap["created"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: Bool {
    get {
      return graphQLMap["imageBool"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageUrl: String {
    get {
      return graphQLMap["imageURL"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }
}

public struct ModelTimelineConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(description: ModelStringInput? = nil, created: ModelStringInput? = nil, imageBool: ModelBooleanInput? = nil, imageUrl: ModelStringInput? = nil, and: [ModelTimelineConditionInput?]? = nil, or: [ModelTimelineConditionInput?]? = nil, not: ModelTimelineConditionInput? = nil) {
    graphQLMap = ["description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "and": and, "or": or, "not": not]
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var created: ModelStringInput? {
    get {
      return graphQLMap["created"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: ModelBooleanInput? {
    get {
      return graphQLMap["imageBool"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageUrl: ModelStringInput? {
    get {
      return graphQLMap["imageURL"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var and: [ModelTimelineConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTimelineConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTimelineConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTimelineConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTimelineConditionInput? {
    get {
      return graphQLMap["not"] as! ModelTimelineConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateTimelineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, description: String? = nil, created: String? = nil, imageBool: Bool? = nil, imageUrl: String? = nil) {
    graphQLMap = ["id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var created: String? {
    get {
      return graphQLMap["created"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: Bool? {
    get {
      return graphQLMap["imageBool"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageUrl: String? {
    get {
      return graphQLMap["imageURL"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }
}

public struct DeleteTimelineInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelMessageFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, content: ModelStringInput? = nil, created: ModelStringInput? = nil, imageBool: ModelBooleanInput? = nil, imageIndex: ModelIntInput? = nil, imageUrl: ModelStringInput? = nil, opponentId: ModelIDInput? = nil, opponentName: ModelStringInput? = nil, and: [ModelMessageFilterInput?]? = nil, or: [ModelMessageFilterInput?]? = nil, not: ModelMessageFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var created: ModelStringInput? {
    get {
      return graphQLMap["created"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: ModelBooleanInput? {
    get {
      return graphQLMap["imageBool"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageIndex: ModelIntInput? {
    get {
      return graphQLMap["imageIndex"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageIndex")
    }
  }

  public var imageUrl: ModelStringInput? {
    get {
      return graphQLMap["imageURL"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var opponentId: ModelIDInput? {
    get {
      return graphQLMap["opponentId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentId")
    }
  }

  public var opponentName: ModelStringInput? {
    get {
      return graphQLMap["opponentName"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "opponentName")
    }
  }

  public var and: [ModelMessageFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMessageFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMessageFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMessageFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelTimelineFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, description: ModelStringInput? = nil, created: ModelStringInput? = nil, imageBool: ModelBooleanInput? = nil, imageUrl: ModelStringInput? = nil, and: [ModelTimelineFilterInput?]? = nil, or: [ModelTimelineFilterInput?]? = nil, not: ModelTimelineFilterInput? = nil) {
    graphQLMap = ["id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var created: ModelStringInput? {
    get {
      return graphQLMap["created"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created")
    }
  }

  public var imageBool: ModelBooleanInput? {
    get {
      return graphQLMap["imageBool"] as! ModelBooleanInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageBool")
    }
  }

  public var imageUrl: ModelStringInput? {
    get {
      return graphQLMap["imageURL"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageURL")
    }
  }

  public var and: [ModelTimelineFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTimelineFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTimelineFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTimelineFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTimelineFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTimelineFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMessage($input: CreateMessageInput!, $condition: ModelMessageConditionInput) {\n  createMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    content\n    created\n    imageBool\n    imageIndex\n    imageURL\n    opponentId\n    opponentName\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: CreateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMessage: CreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMessage": createMessage.flatMap { $0.snapshot }])
    }

    public var createMessage: CreateMessage? {
      get {
        return (snapshot["createMessage"] as? Snapshot).flatMap { CreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMessage")
      }
    }

    public struct CreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageIndex: Int {
        get {
          return snapshot["imageIndex"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageIndex")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var opponentId: GraphQLID {
        get {
          return snapshot["opponentId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentId")
        }
      }

      public var opponentName: String {
        get {
          return snapshot["opponentName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMessage($input: UpdateMessageInput!, $condition: ModelMessageConditionInput) {\n  updateMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    content\n    created\n    imageBool\n    imageIndex\n    imageURL\n    opponentId\n    opponentName\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: UpdateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMessage: UpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMessage": updateMessage.flatMap { $0.snapshot }])
    }

    public var updateMessage: UpdateMessage? {
      get {
        return (snapshot["updateMessage"] as? Snapshot).flatMap { UpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMessage")
      }
    }

    public struct UpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageIndex: Int {
        get {
          return snapshot["imageIndex"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageIndex")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var opponentId: GraphQLID {
        get {
          return snapshot["opponentId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentId")
        }
      }

      public var opponentName: String {
        get {
          return snapshot["opponentName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMessage($input: DeleteMessageInput!, $condition: ModelMessageConditionInput) {\n  deleteMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    content\n    created\n    imageBool\n    imageIndex\n    imageURL\n    opponentId\n    opponentName\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: DeleteMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMessage: DeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMessage": deleteMessage.flatMap { $0.snapshot }])
    }

    public var deleteMessage: DeleteMessage? {
      get {
        return (snapshot["deleteMessage"] as? Snapshot).flatMap { DeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMessage")
      }
    }

    public struct DeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageIndex: Int {
        get {
          return snapshot["imageIndex"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageIndex")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var opponentId: GraphQLID {
        get {
          return snapshot["opponentId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentId")
        }
      }

      public var opponentName: String {
        get {
          return snapshot["opponentName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateTimelineMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTimeline($input: CreateTimelineInput!, $condition: ModelTimelineConditionInput) {\n  createTimeline(input: $input, condition: $condition) {\n    __typename\n    id\n    description\n    created\n    imageBool\n    imageURL\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateTimelineInput
  public var condition: ModelTimelineConditionInput?

  public init(input: CreateTimelineInput, condition: ModelTimelineConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTimeline", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTimeline: CreateTimeline? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTimeline": createTimeline.flatMap { $0.snapshot }])
    }

    public var createTimeline: CreateTimeline? {
      get {
        return (snapshot["createTimeline"] as? Snapshot).flatMap { CreateTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTimeline")
      }
    }

    public struct CreateTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["Timeline"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateTimelineMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTimeline($input: UpdateTimelineInput!, $condition: ModelTimelineConditionInput) {\n  updateTimeline(input: $input, condition: $condition) {\n    __typename\n    id\n    description\n    created\n    imageBool\n    imageURL\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateTimelineInput
  public var condition: ModelTimelineConditionInput?

  public init(input: UpdateTimelineInput, condition: ModelTimelineConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTimeline", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTimeline: UpdateTimeline? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTimeline": updateTimeline.flatMap { $0.snapshot }])
    }

    public var updateTimeline: UpdateTimeline? {
      get {
        return (snapshot["updateTimeline"] as? Snapshot).flatMap { UpdateTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTimeline")
      }
    }

    public struct UpdateTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["Timeline"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteTimelineMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTimeline($input: DeleteTimelineInput!, $condition: ModelTimelineConditionInput) {\n  deleteTimeline(input: $input, condition: $condition) {\n    __typename\n    id\n    description\n    created\n    imageBool\n    imageURL\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteTimelineInput
  public var condition: ModelTimelineConditionInput?

  public init(input: DeleteTimelineInput, condition: ModelTimelineConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTimeline", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTimeline: DeleteTimeline? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTimeline": deleteTimeline.flatMap { $0.snapshot }])
    }

    public var deleteTimeline: DeleteTimeline? {
      get {
        return (snapshot["deleteTimeline"] as? Snapshot).flatMap { DeleteTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTimeline")
      }
    }

    public struct DeleteTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["Timeline"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GetMessageQuery: GraphQLQuery {
  public static let operationString =
    "query GetMessage($id: ID!) {\n  getMessage(id: $id) {\n    __typename\n    id\n    username\n    content\n    created\n    imageBool\n    imageIndex\n    imageURL\n    opponentId\n    opponentName\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMessage", arguments: ["id": GraphQLVariable("id")], type: .object(GetMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMessage: GetMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMessage": getMessage.flatMap { $0.snapshot }])
    }

    public var getMessage: GetMessage? {
      get {
        return (snapshot["getMessage"] as? Snapshot).flatMap { GetMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMessage")
      }
    }

    public struct GetMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageIndex: Int {
        get {
          return snapshot["imageIndex"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageIndex")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var opponentId: GraphQLID {
        get {
          return snapshot["opponentId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentId")
        }
      }

      public var opponentName: String {
        get {
          return snapshot["opponentName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMessages($filter: ModelMessageFilterInput, $limit: Int, $nextToken: String) {\n  listMessages(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      content\n      created\n      imageBool\n      imageIndex\n      imageURL\n      opponentId\n      opponentName\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelMessageFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelMessageFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMessages", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMessages: ListMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMessages": listMessages.flatMap { $0.snapshot }])
    }

    public var listMessages: ListMessage? {
      get {
        return (snapshot["listMessages"] as? Snapshot).flatMap { ListMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMessages")
      }
    }

    public struct ListMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMessageConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("created", type: .nonNull(.scalar(String.self))),
          GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
          GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var created: String {
          get {
            return snapshot["created"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "created")
          }
        }

        public var imageBool: Bool {
          get {
            return snapshot["imageBool"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageBool")
          }
        }

        public var imageIndex: Int {
          get {
            return snapshot["imageIndex"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageIndex")
          }
        }

        public var imageUrl: String {
          get {
            return snapshot["imageURL"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var opponentId: GraphQLID {
          get {
            return snapshot["opponentId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "opponentId")
          }
        }

        public var opponentName: String {
          get {
            return snapshot["opponentName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "opponentName")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetTimelineQuery: GraphQLQuery {
  public static let operationString =
    "query GetTimeline($id: ID!) {\n  getTimeline(id: $id) {\n    __typename\n    id\n    description\n    created\n    imageBool\n    imageURL\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTimeline", arguments: ["id": GraphQLVariable("id")], type: .object(GetTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTimeline: GetTimeline? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTimeline": getTimeline.flatMap { $0.snapshot }])
    }

    public var getTimeline: GetTimeline? {
      get {
        return (snapshot["getTimeline"] as? Snapshot).flatMap { GetTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTimeline")
      }
    }

    public struct GetTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["Timeline"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListTimelinesQuery: GraphQLQuery {
  public static let operationString =
    "query ListTimelines($filter: ModelTimelineFilterInput, $limit: Int, $nextToken: String) {\n  listTimelines(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      description\n      created\n      imageBool\n      imageURL\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTimelineFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTimelineFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTimelines", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTimelines: ListTimeline? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTimelines": listTimelines.flatMap { $0.snapshot }])
    }

    public var listTimelines: ListTimeline? {
      get {
        return (snapshot["listTimelines"] as? Snapshot).flatMap { ListTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTimelines")
      }
    }

    public struct ListTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTimelineConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTimelineConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Timeline"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("created", type: .nonNull(.scalar(String.self))),
          GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var created: String {
          get {
            return snapshot["created"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "created")
          }
        }

        public var imageBool: Bool {
          get {
            return snapshot["imageBool"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageBool")
          }
        }

        public var imageUrl: String {
          get {
            return snapshot["imageURL"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageURL")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMessage {\n  onCreateMessage {\n    __typename\n    id\n    username\n    content\n    created\n    imageBool\n    imageIndex\n    imageURL\n    opponentId\n    opponentName\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMessage", type: .object(OnCreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMessage: OnCreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMessage": onCreateMessage.flatMap { $0.snapshot }])
    }

    public var onCreateMessage: OnCreateMessage? {
      get {
        return (snapshot["onCreateMessage"] as? Snapshot).flatMap { OnCreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMessage")
      }
    }

    public struct OnCreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageIndex: Int {
        get {
          return snapshot["imageIndex"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageIndex")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var opponentId: GraphQLID {
        get {
          return snapshot["opponentId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentId")
        }
      }

      public var opponentName: String {
        get {
          return snapshot["opponentName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMessage {\n  onUpdateMessage {\n    __typename\n    id\n    username\n    content\n    created\n    imageBool\n    imageIndex\n    imageURL\n    opponentId\n    opponentName\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMessage", type: .object(OnUpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMessage: OnUpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMessage": onUpdateMessage.flatMap { $0.snapshot }])
    }

    public var onUpdateMessage: OnUpdateMessage? {
      get {
        return (snapshot["onUpdateMessage"] as? Snapshot).flatMap { OnUpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMessage")
      }
    }

    public struct OnUpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageIndex: Int {
        get {
          return snapshot["imageIndex"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageIndex")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var opponentId: GraphQLID {
        get {
          return snapshot["opponentId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentId")
        }
      }

      public var opponentName: String {
        get {
          return snapshot["opponentName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMessage {\n  onDeleteMessage {\n    __typename\n    id\n    username\n    content\n    created\n    imageBool\n    imageIndex\n    imageURL\n    opponentId\n    opponentName\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMessage", type: .object(OnDeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMessage: OnDeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMessage": onDeleteMessage.flatMap { $0.snapshot }])
    }

    public var onDeleteMessage: OnDeleteMessage? {
      get {
        return (snapshot["onDeleteMessage"] as? Snapshot).flatMap { OnDeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMessage")
      }
    }

    public struct OnDeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageIndex", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("opponentId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("opponentName", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, content: String, created: String, imageBool: Bool, imageIndex: Int, imageUrl: String, opponentId: GraphQLID, opponentName: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Message", "id": id, "username": username, "content": content, "created": created, "imageBool": imageBool, "imageIndex": imageIndex, "imageURL": imageUrl, "opponentId": opponentId, "opponentName": opponentName, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageIndex: Int {
        get {
          return snapshot["imageIndex"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageIndex")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var opponentId: GraphQLID {
        get {
          return snapshot["opponentId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentId")
        }
      }

      public var opponentName: String {
        get {
          return snapshot["opponentName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "opponentName")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateTimelineSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTimeline {\n  onCreateTimeline {\n    __typename\n    id\n    description\n    created\n    imageBool\n    imageURL\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTimeline", type: .object(OnCreateTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTimeline: OnCreateTimeline? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTimeline": onCreateTimeline.flatMap { $0.snapshot }])
    }

    public var onCreateTimeline: OnCreateTimeline? {
      get {
        return (snapshot["onCreateTimeline"] as? Snapshot).flatMap { OnCreateTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTimeline")
      }
    }

    public struct OnCreateTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["Timeline"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateTimelineSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTimeline {\n  onUpdateTimeline {\n    __typename\n    id\n    description\n    created\n    imageBool\n    imageURL\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTimeline", type: .object(OnUpdateTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTimeline: OnUpdateTimeline? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTimeline": onUpdateTimeline.flatMap { $0.snapshot }])
    }

    public var onUpdateTimeline: OnUpdateTimeline? {
      get {
        return (snapshot["onUpdateTimeline"] as? Snapshot).flatMap { OnUpdateTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTimeline")
      }
    }

    public struct OnUpdateTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["Timeline"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteTimelineSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTimeline {\n  onDeleteTimeline {\n    __typename\n    id\n    description\n    created\n    imageBool\n    imageURL\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTimeline", type: .object(OnDeleteTimeline.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTimeline: OnDeleteTimeline? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTimeline": onDeleteTimeline.flatMap { $0.snapshot }])
    }

    public var onDeleteTimeline: OnDeleteTimeline? {
      get {
        return (snapshot["onDeleteTimeline"] as? Snapshot).flatMap { OnDeleteTimeline(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTimeline")
      }
    }

    public struct OnDeleteTimeline: GraphQLSelectionSet {
      public static let possibleTypes = ["Timeline"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("created", type: .nonNull(.scalar(String.self))),
        GraphQLField("imageBool", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("imageURL", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, description: String, created: String, imageBool: Bool, imageUrl: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Timeline", "id": id, "description": description, "created": created, "imageBool": imageBool, "imageURL": imageUrl, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var created: String {
        get {
          return snapshot["created"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "created")
        }
      }

      public var imageBool: Bool {
        get {
          return snapshot["imageBool"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageBool")
        }
      }

      public var imageUrl: String {
        get {
          return snapshot["imageURL"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageURL")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}