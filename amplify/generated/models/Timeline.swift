// swiftlint:disable all
import Amplify
import Foundation

public struct Timeline: Model {
  public let id: String
  public var description: String
  public var created: String
  public var imageBool: Bool
  public var imageURL: String
  
  public init(id: String = UUID().uuidString,
      description: String,
      created: String,
      imageBool: Bool,
      imageURL: String) {
      self.id = id
      self.description = description
      self.created = created
      self.imageBool = imageBool
      self.imageURL = imageURL
  }
}