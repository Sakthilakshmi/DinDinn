import Foundation
import RxCocoa
import RxSwift

class APIClient {
  static var shared = APIClient()
  lazy var requestObservable = RequestObservable(config: .default)
  func getRecipes() throws -> Observable<[FoodItem]> {
    var request = URLRequest(url:    
          URL(string:"https://jsonplaceholder.typicode.com/posts")!)
    request.httpMethod = "GET"
    request.addValue("application/json", forHTTPHeaderField: 
              "Content-Type")
    return requestObservable.callAPI(request: request)
  }
 
}