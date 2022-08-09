//
//  CreditCard.swift
//  CreditCardAnimation
//
//  Created by Lucas Newlands on 09/08/22.
//

import SwiftUI

struct CreditCard: View {
    var body: some View {
        VStack {
            CreditCardFront()
            CreditCardBack()
        }
        
    }
}

struct CreditCardFront: View {
    var body: some View {
        
        VStack {
            Text("Front")
                .foregroundColor(.white)
        }
        .frame(width: 300, height: 200)
        .background(LinearGradient(colors: [Color.purple, Color.blue], startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCardBack: View {
    var body: some View {
        
        VStack {
            Text("")
                .foregroundColor(.white)
        }
        .frame(width: 300, height: 200)
        .background(LinearGradient(colors: [Color.purple, Color.blue], startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard()
    }
}
