//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

struct ___FILEBASENAMEASIDENTIFIER___Builder {
    
    static func viewController() -> UIViewController {
        let dataStore = ___FILEBASENAMEASIDENTIFIER___DataStore()
        let viewModel = ___FILEBASENAMEASIDENTIFIER___ViewModel(withDataStore: dataStore)
        let router = ___FILEBASENAMEASIDENTIFIER___Router()
        let viewController = ___FILEBASENAMEASIDENTIFIER___ViewController(withViewModel: viewModel, router: router)
        router.viewController = viewController
        
        return viewController
    }
}