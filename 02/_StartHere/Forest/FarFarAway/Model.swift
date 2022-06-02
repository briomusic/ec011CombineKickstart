//
//  Model.swift
//  FarFarAway
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation

public struct Model {
	public let value : Int
	
	init() {
		self.value = 0
	}
}

extension Model {
	private init(value: Int) {
		self.value = value
	}
	
	var next: Model {
		Model(value: Int.random(in: 1...100))
	}
}
