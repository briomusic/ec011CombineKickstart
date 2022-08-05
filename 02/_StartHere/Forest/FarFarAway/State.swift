//
//  State.swift
//  FarFarAway
//
//  Created by Brio Taliaferro on 02.06.22.
//

import Foundation
import Combine

public class State {
	
	@Published private var model = Model()
	@Published public private(set) var value = 0

	/*
	lazy public private(set)  var valuePublisher: AnyPublisher<Int, Never>
	= $model
		.dropFirst()
		.map(\.value)
		.eraseToAnyPublisher()
	 */
	
	public init() {
		Task {await setUpValueSequence()}
	}
	
	@MainActor
	private func setUpValueSequence() async {
		let valueSequence
		= $model.values
			.dropFirst()
			.map(\.value)
			
		
		for await value in valueSequence { // error
			self.value = value
		}
	}
}

extension State {

	public func next() {
		model = model.next
	}
}
