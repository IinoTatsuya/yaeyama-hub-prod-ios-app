// swiftlint:disable all
import Amplify
import Foundation

extension Timeline {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case description
    case created
    case imageBool
    case imageURL
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let timeline = Timeline.keys
    
    model.pluralName = "Timelines"
    
    model.fields(
      .id(),
      .field(timeline.description, is: .required, ofType: .string),
      .field(timeline.created, is: .required, ofType: .string),
      .field(timeline.imageBool, is: .required, ofType: .bool),
      .field(timeline.imageURL, is: .required, ofType: .string)
    )
    }
}