//
//  State.swift
//  FarFarAway
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation
import Combine

public class State {
	private var model = Model() {
		didSet { subject.send(model.value) }
	}
	
	public let subject = PassthroughSubject<Int, Never>()
	
	public init() {}
}

extension State {
	
	public func next() {
		model = model.next
	}
}
