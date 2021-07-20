// swiftlint:disable all
import Amplify
import Foundation

public struct Message: Model {
  public let id: String
  public var username: String
  public var content: String
  public var created: String
  public var imageBool: Bool
  public var imageIndex: Int
  public var imageURL: String
  public var opponentId: String
  public var opponentName: String
  
  public init(id: String = UUID().uuidString,
      username: String,
      content: String,
      created: String,
      imageBool: Bool,
      imageIndex: Int,
      imageURL: String,
      opponentId: String,
      opponentName: String) {
      self.id = id
      self.username = username
      self.content = content
      self.created = created
      self.imageBool = imageBool
      self.imageIndex = imageIndex
      self.imageURL = imageURL
      self.opponentId = opponentId
      self.opponentName = opponentName
  }
}