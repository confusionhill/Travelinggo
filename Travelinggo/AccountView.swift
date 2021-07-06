//
//  AccountView.swift
//  Travelinggo
//
//  Created by Farhandika Zahrir Mufti guenia on 20/06/21.
//

import SwiftUI

struct AccountView: View {
    let kolor:[Color] = [.green,.blue,.pink,.gray,.orange,.red,.purple]
    @State  private var offset:CGFloat = UIScreen.height/4
    @State var isLoaded:Bool = false
    var body: some View {
        ZStack(alignment:.bottom){
            Button("Makan bang"){
                self.offset = UIScreen.height/4
                isLoaded.toggle()
            }
           BottomDrawer(offset: $offset)
        }
        .frame(width: UIScreen.width, height: UIScreen.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.gray.ignoresSafeArea())
    }
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

struct BottomDrawer: View {
    @Binding var offset:CGFloat
    @State var isClicked:Bool = false
    var body: some View {
        ZStack {
            VStack{
                Capsule()
                    .fill(Color.black.opacity(0.2))
                    .frame(width:60,height:7)
                    .padding()
                ScrollView{
                    VStack(spacing:20){
                        ForEach(0..<10){_ in
                            Text("Makan bang")
                        }
                    }.frame(width:UIScreen.width)
                }
                .onTapGesture {
                    isClicked.toggle()
                }
                Spacer()
                Button("makan bang"){
                    
                }
                .foregroundColor(.white)
                .padding()
                .frame(width:UIScreen.width-50)
                .background(Color.pink)
                .cornerRadius(10)
                .padding(.bottom,30)
            }
            .frame(width:UIScreen.width,height:UIScreen.height/2)
            .background(Color.white)
            .cornerRadius(25)
            .offset(y:offset)
            .gesture(
                DragGesture()
                    .onChanged{val in
                        let startLoc = val.startLocation
                        let pindah = startLoc.y + val.translation.height
                        if (pindah > UIScreen.height/4 && self.isClicked == false) {
                            self.offset = pindah
                        }
                    }
                    .onEnded{val in
                        if self.offset >  UIScreen.height/4 + 200 {
                            self.offset = UIScreen.height
                        } else {
                            self.offset = UIScreen.height/4 //14
                        }
                    }
            )
            .animation(.easeIn(duration: 1))
        }
    }
}
