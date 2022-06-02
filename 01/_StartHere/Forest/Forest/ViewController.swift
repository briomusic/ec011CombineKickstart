import UIKit
import Combine

class ViewController: UIViewController {
  @IBOutlet private weak var label: UILabel!
	private var cancellable: AnyCancellable?
	
  
  @IBAction private func next(_ sender: UIButton) {
	  numberProvider.next()
  }
	
	private let numberProvider = NumberProvider()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		cancellable = numberProvider.$value
			.dropFirst()
			.map (\.description)
			.sink { [weak self] string in
				self?.label.text = string
			}

	}
}

