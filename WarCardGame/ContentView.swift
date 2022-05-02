//
//  ContentView.swift
//  WarCardGame
//
//  Created by Developer on 21/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 2
    @State private var randNum2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0
    var body: some View {
        
        ZStack{
            Image("Background").resizable().ignoresSafeArea(.all)
            //vertical
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                //orizontal
                HStack{
                    Image("card" + String(randNum1))
                    Image("card" + String(randNum2))
                }
                Spacer()
                
                Button(action: {
                    
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2 = Int.random(in: 2...14)
                    
                    //update scores
                    if self.randNum1 > self.randNum2 {
                        score1 += 1
                    }else if self.randNum2 > self.randNum1 {
                        score2 += 1
                    }
                    //prova 
                }) {
                    Image("dealbutton")
                }
                
                Spacer()
                
                HStack{
                    VStack{
                        Text("Player").bold()
                            .padding(.bottom,20)
                        Text(String(score1))
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    
                    Spacer()
                    VStack{
                        Text("CPU").bold().padding(.bottom, 20)
                        Text(String(score2))
                    }
                    .padding(.trailing, 20)
                    .foregroundColor(.white)
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
