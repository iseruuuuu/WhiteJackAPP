
//
//  ContentView.swift
//  SwiftUIWarCardGame
//
//  Created by user on 2020/10/23.
//２１から減らしていく

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 2
    @State private var randNum2 = 2
    
    @State private var score1 = 21
    @State private var score2 = 21
    
    
    var body: some View {
        
        ZStack {
            Image("background2")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                
                Text("ホワイトジャック")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                
                
                Spacer()
                
                HStack {
                    Image("card" + String(randNum1))
                        .resizable()
                        .frame(width:150 , height: 200)
                    Image("card" + String(randNum2))
                        .resizable()
                        .frame(width:150 , height: 200)
                }
                
                Spacer()
                
                HStack {
                
                Button(action: {
                    //TODO
                    self.randNum1 = Int.random(in: 1...10)
                    self.score1 -= randNum1
                    
                }
                ) {
                    Text("ドロー")
                        .font(.title)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .padding(.leading, 74.0)
                }
                    
                    Spacer()
                
                Button(action: {
                    //TODO
                    self.randNum2 = Int.random(in: 1...10)
                    self.score2 -= randNum2
                }
                ) {
                    Text("ドロー")
                        .font(.title)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 59.0)
                    
                }
                }
                
                Spacer()
                
                HStack{
                    VStack {
                        Text("Player")
                            .bold()
                            .padding(.bottom,20)
                        Text(String(score1))
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    .font(.title)
                    
                    
                    
                    VStack {
                        Text("CPU")
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score2))
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    .font(.title)
                    
                    
                    
                    Text("")
                    
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
