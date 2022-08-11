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
    
    @State private var name: String = ""
    @State private var cardNumber: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    
    var body: some View {
        VStack() {
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Pagamento")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                }
                .padding()
                
                Spacer()
                
            }
            
            
            CreditCard{
                VStack {
                    Group {
                        if flipped {
                            CreditCardBack(cvv: cvv)
                        } else {
                            CreditCardFront(name: name, cardNumber: cardNumber, expires: expires)
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
            
            VStack(spacing: 3) {
                TextField("Nome", text: $name)
                    .foregroundColor(.black)
                    .font(.headline)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
                
                TextField("Número do cartão", text: $cardNumber).font(.headline)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
                
                TextField("Data de expiração", text: $expires).font(.headline)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
            
                
                TextField("CVV", text: $cvv) { (editingChanged) in
                    
                    if editingChanged {
                        withAnimation {
                            degress += 180
                            flipped.toggle()
                        }
                    } else {
                        withAnimation {
                            degress += 180
                            flipped.toggle()
                        }
                    }
                    
                } onCommit: {}
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .trailing])
            }
 
            
            Spacer()
            
            Button {
                print("Comprou")
            } label: {
                HStack {
                    Text("Finalizar")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                }
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(20)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
