//
//  Link.swift
//  Forest
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation
import Combine
import FarFarAway

class Link {
	private var cancellables: Set<AnyCancellable> = Set()
	private let state = State()
	@Published public var contents: String? = "..."
	
	init() {
		contentsSubscription().store(in: &cancellables)
	}
}

extension Link {
	func next() {
		state.next()
	}
	
	private func contentsSubscription() -> AnyCancellable {
		state.$model
		.dropFirst()
		.map(\.value.description)
		.sink {[weak self] string in
			self?.contents = string
		}
	}

}
