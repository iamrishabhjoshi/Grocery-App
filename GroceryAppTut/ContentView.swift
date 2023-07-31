//
//  ContentView.swift
//  GroceryAppTut
//
//  Created by Rishabh Joshi on 24/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing :50){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,
                    height: 300)
                Text("We deliver\n grocery at your\n doorstep")
                    .font(.system(size: 42,
                                  weight: .bold,
                                  design: .rounded))
                    .multilineTextAlignment(.center)
                Text("Grocer gives you fresh vegetables and fruits,\n order fresh fruits at grocer ")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button(){
                    changeScreen = true
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Started")
                            .foregroundColor(
                                .white)
                            .bold()
                    }
                }.frame(width: 200, height: 70)
                    .foregroundColor(.purple)
            }
            .navigationDestination(isPresented :$changeScreen){
                Shop()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
