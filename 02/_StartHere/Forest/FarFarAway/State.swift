//
//  State.swift
//  FarFarAway
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation

public class State {
	@Published public private(set) var model = Model()
	
	public init() {}
}

extension State {
	
	public func next() {
		model = model.next
	}
}
