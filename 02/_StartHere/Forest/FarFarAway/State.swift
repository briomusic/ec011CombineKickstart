//
//  State.swift
//  FarFarAway
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation
import Combine

public class State {
	
	public var value: Int {
		model.value
	}
	
	private var model = Model() {
		didSet { subject.send() }
	}
	
	public let subject = PassthroughSubject<Void, Never>()
	
	public init() {}
}

extension State {
	
	public func next() {
		model = model.next
	}
}
