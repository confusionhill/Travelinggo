//
//  ContentView.swift
//  Travelinggo
//   
//  Created by Farhandika Zahrir Mufti guenia on 20/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment:.top){
            Color(hex: "F2F7FF")
                .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            VStack{
                ScrollView {
                    VStack(alignment:.leading){
                        CardButton()
                        PromoView()
                    }
                    
                }
                Spacer()
            }.padding(.top,30)
            Rectangle()
                .shadow(color: .white, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                .frame(height:30)
                .foregroundColor(.white)
            HStack{
                Text("Travellingo")
                Spacer()
                Text("Morning Sunshine :)")
            }
            .padding(.horizontal,10)
            VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: UIScreen.width-40, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardItem: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 190, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(hex: "E66868"))
            .overlay(
                VStack
                {
                    HStack {
                        Circle()
                            .foregroundColor(.white)
                            .shadow(color: .secondary, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }.padding()
                    Spacer()
                    HStack {
                        Text("Lorem Ipsum")
                            .fontWeight(.bold)
                            .padding([.bottom,.leading])
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
            )
    }
}

struct CardButton: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    CardItem()
                })
                CardItem()
            }
            HStack {
                CardItem()
                CardItem()
            }
        }
        .frame(width: UIScreen.width,height:280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.white)
       //.padding(.top,-10)
    }
}

struct PromoView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Promo")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                Text("Lihat semua")
                    .fontWeight(.regular)
                    .foregroundColor(.orange)
            }.padding(.top)
            ScrollView(.horizontal,showsIndicators: false){
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 262, height: 164)
                        .foregroundColor(.orange)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 262, height: 164)
                        .foregroundColor(.orange)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 262, height: 164)
                        .foregroundColor(.orange)
                }
                .padding(.bottom)
            }
        }.padding(.horizontal)
        .background(Color.white)
    }
}
