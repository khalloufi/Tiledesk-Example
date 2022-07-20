//
//  ContentView.swift
//  Tiledesk-Example
//
//  Created by issam on 20/7/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        ZStack{
            WebView(url: .publicUrl, viewModel: viewModel).overlay (
                                RoundedRectangle(cornerRadius: 4, style: .circular)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            ).padding(.leading, 20).padding(.trailing, 20)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
