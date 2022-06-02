import UIKit
import Combine

class ViewController: UIViewController {
  @IBOutlet private weak var label: UILabel!
  private var cancellables: Set<AnyCancellable> = Set()
  let link = Link()
  
  override func viewDidLoad() {
    super.viewDidLoad()
	  labelSubscription().store(in: &cancellables)
  }
  
  @IBAction private func next(_ sender: UIButton) {
	  link.next()
  }
}

extension ViewController {
	private func labelSubscription() -> AnyCancellable {
		link.$contents
		.sink {[weak self] string in
		  self?.label.text = string
		}
	}
}


// NEXT: Chapter2: Section 5 Assign p 116
