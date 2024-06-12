//
//  ViewController.swift
//  StoryboardDeviceDetectorApp
//
//  Created by racoon on 6/12/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var deviceLabel: UILabel!
    
    func updateViewScreen () {
        switch traitCollection.userInterfaceIdiom {
        case .phone:
            imageView.image = UIImage(systemName: "iphone")
            deviceLabel.text = "i Phone"
        case .pad:
            imageView.image = UIImage(systemName: "ipad")
            deviceLabel.text = "i Pad"
        case .tv:
            imageView.image = UIImage(systemName: "tv")
            deviceLabel.text = "TV"
        case .carPlay:
            imageView.image = UIImage(systemName: "car")
            deviceLabel.text = "Car Play"
        case .mac:
            imageView.image = UIImage(systemName: "macbook")
            deviceLabel.text = "Mac book"
        case .vision:
            imageView.image = UIImage(systemName: "visionpro")
            deviceLabel.text = "Vision Pro"
        default:
            imageView.image = UIImage(systemName: "camera.metering.unknown")
            deviceLabel.text = "Unknown"
        }
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        
//        if newCollection.verticalSizeClass == .compact {
//            stackView.axis = .horizontal
//        } else {
//            stackView.axis = .vertical
//        }
        
        if newCollection.userInterfaceStyle == .dark {
            view.backgroundColor = .systemIndigo
        } else {
            view.backgroundColor = .systemYellow
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if size.width > size.height {
            stackView.axis = .horizontal
        } else {
            stackView.axis = .vertical
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateViewScreen()
    }


}

