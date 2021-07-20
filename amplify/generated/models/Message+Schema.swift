// swiftlint:disable all
import Amplify
import Foundation

extension Message {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case username
    case content
    case created
    case imageBool
    case imageIndex
    case imageURL
    case opponentId
    case opponentName
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let message = Message.keys
    
    model.pluralName = "Messages"
    
    model.fields(
      .id(),
      .field(message.username, is: .required, ofType: .string),
      .field(message.content, is: .required, ofType: .string),
      .field(message.created, is: .required, ofType: .string),
      .field(message.imageBool, is: .required, ofType: .bool),
      .field(message.imageIndex, is: .required, ofType: .int),
      .field(message.imageURL, is: .required, ofType: .string),
      .field(message.opponentId, is: .required, ofType: .string),
      .field(message.opponentName, is: .required, ofType: .string)
    )
    }
}