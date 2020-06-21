//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ___VARIABLE_productName___DisplayLogic: class {}

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___DisplayLogic {
    var interactor: ___VARIABLE_productName___BusinessLogic?
    var router: (___VARIABLE_productName___RoutingLogic & ___VARIABLE_productName___DataPassing)?
    weak var listener: ___VARIABLE_productName___Listener?
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    private func configureViews() {
        
    }
}
