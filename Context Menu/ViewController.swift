//
//  ViewController.swift
//  Context Menu
//
//  Created by Pankaj Kulkarni on 12/12/19.
//  Copyright © 2019 Pankaj Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addInteraction()
    }

    
    private func addInteraction() {
        
        let interaction = UIContextMenuInteraction(delegate: self)
        menuView.addInteraction(interaction)
        
    }
    

}


extension ViewController: UIContextMenuInteractionDelegate {
    
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration? {
        
        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { (segestdActions) -> UIMenu? in
            
            let share = UIAction(title: "Share", image: UIImage(systemName: "square.and.arrow.up")) { (action) in
                print("Share menu option selected")
            }
            
            let rename = UIAction(title: "Rename", image: UIImage(systemName: "square.and.pencil")) { (action) in
                print("Rename menu option selected")
            }
            
            let delete = UIAction(title: "Delete", image: UIImage(systemName: "trash"), attributes: .destructive) { (action) in
                print("Delete menu option selected")
            }
            
            return UIMenu(title: "", children: [share, rename, delete])
            
        }
        
    }
    
    
}
