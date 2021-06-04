
import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewFoodItemListProtocol: class {
    func onFetchFoodItemListSuccess(foodItemList: [FoodItem])
    func onFetchFoodItemListFailure(error: String)
    
    func showHUD()
    func hideHUD()
    
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterFoodItemListProtocol: class {
    
    var view: PresenterToFoodItemListProtocol? { get set }
    var interactor: PresenterToInteractorFoodItemListProtocol? { get set }
    var router: PresenterToRouterFoodItemListProtocol? { get set }
    
    var foodItemList: [FoodItem]? { get set }
    
    func viewDidLoad()
    
    func buttonSelectedAtListRow(foodItem: FoodItem)

}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorFoodItemListProtocol: class {
    
    var presenter: InteractorToPresenterFoodItemListProtocol? { get set }
    
    func loadFoodItemList()
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterFoodItemListProtocol: class {
    
    func fetchFoodItemListSuccess(foodItemList: [FoodItem])
    func fetchFoodItemListFailure(errorCode: Int)
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterFoodItemListProtocol: class {
    
    static func createModule() -> UINavigationController
    
    func pushToFoodItemDetail(on view: PresenterToViewFoodItemListProtocol, with foodItem: FoodItem)
}
