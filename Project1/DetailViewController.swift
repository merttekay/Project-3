//
//  DetailViewController.swift
//  Project1
//
//  Created by Mert Tekay on 12.04.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage:String?
    var selectedPictureNumber:Int?
    var totalPictures :Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        title = "\(selectedPictureNumber!) of  \(totalPictures!)"
 
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
           
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
      
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped(){
           
          let vc = UIActivityViewController(activityItems: ["This is my first project.Enjoy it!"], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
         
        present(vc, animated: true)

}

}
