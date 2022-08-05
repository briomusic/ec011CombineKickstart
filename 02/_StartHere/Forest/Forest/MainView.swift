//
//  MainView.swift
//  Forest
//
//  Created by Brio Taliaferro on 05.08.22.
//

import Foundation
import SwiftUI
import Combine

struct MainView {
	private var cancellables: Set<AnyCancellable> = Set()
	@StateObject private var link = Link()
}


extension MainView: View {
	var body: some View {
		VStack(spacing: 80) {
			Text(link.contents)
			Button("Next",
				   action: {
				link.next()
			})
		}
	}
}
