import UIKit

class FoodItemListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hosting = UIHostingController(rootView: FoodItemList())
        hosting.view.frame = UIScreen.main.bounds 
        hosting.view.backgroundColor = UIColor.white
        addChild(hosting)
        view.addSubview(hosting.view)
        hosting.didMove(toParent: self)
        
    }
}