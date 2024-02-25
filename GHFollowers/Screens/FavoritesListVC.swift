
import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break 
            }
            
        }
    }
}
