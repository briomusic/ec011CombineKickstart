//
//  State.swift
//  FarFarAway
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation
import Combine

public class State: ObservableObject {
	
	@Published private var model = Model()
	
	public init() {}
}

extension State {
	public var value: Int {
		model.value
	}

	public func next() {
		model = model.next
	}
}
