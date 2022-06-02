//
//  NumberProvider.swift
//  Forest
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation
import Combine

class NumberProvider {
	@Published var value = 0

	func next() {
		value = Int.random(in: 1...100)
	}
}
