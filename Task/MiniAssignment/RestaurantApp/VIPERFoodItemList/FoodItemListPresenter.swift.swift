
import Foundation

class FoodItemListPresenter: ViewToPresenterFoodItemListProtocol {
    
    // MARK: Properties
    weak var view: PresenterToViewFoodItemListProtocol?
    var interactor: PresenterToInteractorFoodItemListProtocol?
    var router: PresenterToRouterFoodItemListProtocol?
    
    var foodItemList: [FoodItem]?
    
    // MARK: Inputs from view
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
        view?.showHUD()
        interactor?.loadFoodItemList()
    }
    
    func buttonSelectedAtListRow(foodItem: FoodItem) {
        router?.pushToFoodItemDetail(on view: view, with foodItem: foodItem)
    }
    
    
}

// MARK: - Outputs to view
extension FoodItemListPresenter: InteractorToPresenterFoodItemListProtocol {
    
    func fetchFoodItemListSuccess(foodItemList: [FoodItem])) {
        self.foodItemList = foodItemList
        view?.hideHUD()
        view?.onFetchFoodItemListSuccess(foodItemList: foodItemList)
    }
    
    func fetchFoodItemListFailure(errorCode: Int) {
        view?.hideHUD()
        view?.onFetchFoodItemListFailure(error: "Couldn't fetch quotes: \(errorCode)")
    }
    
}
