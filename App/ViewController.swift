import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let view = UIView()
    view.frame = self.view.frame
    view.backgroundColor = .gray
    self.view = view

    let label = UILabel()
    label.text = "Hello, world!"
    self.view.addSubview(label)
    label.sizeToFit()
    label.center = self.view.center
  }
}
