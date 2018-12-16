
import UIKit
import PhotoView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let photoView = PhotoView()
        
        photoView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(photoView)
        
        view.addConstraints([
            NSLayoutConstraint(item: photoView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 30),
            NSLayoutConstraint(item: photoView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: photoView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: photoView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0),
        ])
        
//        photoView.scaleType = PhotoView.ScaleType.fillHeight
        
        photoView.imageView.image = UIImage(named: "image")
        
        photoView.onTap = {
            photoView.imageView.image = UIImage(named: "image")
        }
        
        photoView.onLongPress = {
            print("long press")
        }
        
        photoView.onScaleChange = { scale in
            print("onScaleChange \(scale)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

