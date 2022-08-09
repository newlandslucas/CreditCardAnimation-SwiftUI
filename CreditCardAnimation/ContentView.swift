//
//  ContentView.swift
//  CreditCardAnimation
//
//  Created by Lucas Newlands on 09/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var degress: Double = 0
    @State private var flipped: Bool = false
    
    var body: some View {
        CreditCard{
            VStack {
                Group {
                    if flipped {
                        CreditCardBack()
                    } else {
                        CreditCardFront()
                    }
                }
                .rotation3DEffect(.degrees(degress),
                                  axis: (x: 0.0, y: 1.0, z: 0.0))    
            }

            }
            .onTapGesture {
            withAnimation {
                degress += 180
                flipped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
