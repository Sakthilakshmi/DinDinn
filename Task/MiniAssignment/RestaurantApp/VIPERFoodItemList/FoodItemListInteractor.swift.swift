
import Foundation
import RxSwift
import RxCocoa

class FoodItemListInteractor: PresenterToInteractorFoodItemListProtocol {
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterFoodItemListProtocol?
    var foodItemList: [FoodItem]?
    
    func loadFoodItemList() {
         let client = APIClient.shared
    do{
      try client.getRecipes().subscribe(
        onNext: { result in
           self.foodItemList = result
           self.presenter?.fetchFoodItemListSuccess(foodItemList:self.foodItemList)
        },
        onError: { error in
           print(error.localizedDescription)
           self.presenter?.fetchFoodItemListFailure(errorCode: 400)
        },
        onCompleted: {
           print("Completed event.")
        }).disposed(by: disposeBag)
      }
      catch{
    }

    }
    
}
