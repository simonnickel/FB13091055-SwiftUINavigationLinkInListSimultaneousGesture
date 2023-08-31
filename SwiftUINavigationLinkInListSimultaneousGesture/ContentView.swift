//
//  ContentView.swift
//  SwiftUINavigationLinkInListSimultaneousGesture
//
//  Created by Simon Nickel on 31.08.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var highlighted: Int?
	
	var body: some View {
		NavigationStack {
			List(0..<5) { item in
				NavigationLink(value: item) {
					Text("Item \(item)")
				}
				.listRowBackground(highlighted == item ? Color.teal : Color.white)
				.simultaneousGesture(TapGesture().onEnded {
					highlighted = item
				})
			}
			.navigationDestination(for: Int.self) { item in
				Text("Item \(item)")
			}
		}
	}
}

#Preview {
    ContentView()
}
