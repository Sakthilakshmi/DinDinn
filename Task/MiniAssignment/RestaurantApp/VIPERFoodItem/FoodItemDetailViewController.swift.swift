import UIKit

class FoodItemDetailViewController: UIViewController {

    let foodItem: FoodItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let foodItemDetail = FoodItemDetail()
        foodItemDetail.foodItem = self.foodItem
        let hosting = UIHostingController(rootView: foodItemDetail)
        hosting.view.frame = UIScreen.main.bounds 
        hosting.view.backgroundColor = UIColor.white
        addChild(hosting)
        view.addSubview(hosting.view)
        hosting.didMove(toParent: self)
        
    }
}