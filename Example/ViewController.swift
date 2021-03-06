
import UIKit
import PhotoView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let photoView = PhotoView()
        
        photoView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(photoView)
        
        view.addConstraints([
            NSLayoutConstraint(item: photoView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: photoView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: photoView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: photoView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0),
        ])
        
        photoView.scaleType = .fit
        
        photoView.imageView.image = UIImage(named: "image")
        
        photoView.onTap = {

            
        }
        
        photoView.onLongPress = {
            print("long press")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

