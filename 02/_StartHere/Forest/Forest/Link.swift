//
//  Link.swift
//  Forest
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation
import FarFarAway

class Link {
	private let state = State()
	@Published public var contents: String? = "..."
	
	init() {
		contentsSubscription()
	}
}

extension Link {
	func next() {
		state.next()
	}
	
	private func contentsSubscription()  {
		state.valuePublisher
			.map{ .some($0.description) }
			.assign(to: &$contents)
		// equivalent to
//			.assignDescription(asOptionalTo: &$contents)
	}
}
