//
//  CreditCard.swift
//  CreditCardAnimation
//
//  Created by Lucas Newlands on 09/08/22.
//

import SwiftUI

struct CreditCard<Content>: View where Content: View {
    
    var content: () -> Content
    
    var body: some View {
        content()
        
    }
}

struct CreditCardFront: View {
    
    let name: String
    let cardNumber: String
    let expires: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("GOL Smiles")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                    Image(systemName: "dot.radiowaves.forward")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 1) {
                    Text("VISA")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                    
                    Text("Infinite")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                        .font(.system(size: 12))
                }

            }
            
            Spacer()
            
        
            
            Spacer()
            
            HStack {
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text(name)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text(cardNumber)
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }
                    
                    Spacer()
                    
                    HStack {

                        Text("EXP DATE: ")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                        
                        Text(expires)
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                        
                    }
                    
                }
                
            }
            
            
        }
        .frame(width: 330, height: 180)
        .padding()
        .background(LinearGradient(colors: [Color.black, Color.black], startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCardBack: View {
    
    let cvv: String
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            
            HStack {
                
            }
            .frame(width: 360, height: 30)
            .background(.gray)
            .cornerRadius(10)
            
            Spacer()
            
            
            HStack {
                VStack(alignment: .trailing, spacing: 10) {
                    
                    HStack {

                        Text(cvv)
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                            .rotation3DEffect(.degrees(180),
                                            axis: (x: 0.0, y: 1.0, z: 0.0))
                        
                        Text("SECURITY CODE: ")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                            .rotation3DEffect(.degrees(180),
                                            axis: (x: 0.0, y: 1.0, z: 0.0))
                        
                    }
                    
                    Spacer()
                    
                    
                }
                Spacer()
            }
        }
        .frame(width: 330, height: 180)
        .padding()
        .background(LinearGradient(colors: [Color.black, Color.black], startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard<CreditCardFront>(content: {CreditCardFront(name: "Lucas S N MAchado", cardNumber: "0000 0000 0000 0000", expires: "00/00") })
    }
}
