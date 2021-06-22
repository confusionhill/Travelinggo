//
//  AccountView.swift
//  Travelinggo
//
//  Created by Farhandika Zahrir Mufti guenia on 20/06/21.
//

import SwiftUI

struct AccountView: View {
    @State var isOpen:Bool = false
    @State private var offset:CGFloat = -UIScreen.width/2 - 200
    var body: some View {
        ZStack{
            VStack {
                Button(action: {
                    self.isOpen.toggle()
                    offset = 0
                }) {
                    Text(isOpen ? "Close" : "Open")
                }
               // Image("logo")
            }
            GeometryReader{ _ in
                HStack {
                    VStack {
                        navBarlah(offset: $offset,isOpen: $isOpen)
                    }
                    Spacer()
                    
                }
            }
            .ignoresSafeArea()
            .offset(x:offset)
            .animation(.easeIn.delay(0.2))
            .onAppear{
                offset = -UIScreen.width/2 - 200
            }
        }
    }
}

func NavBar(isOpen:Bool) -> some View {
    if isOpen{
        return AnyView(Text("Makan").foregroundColor(.blue))
    }
    return AnyView(Text("Minum").foregroundColor(.blue))
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

struct navBarlah: View {
    @Binding var offset:CGFloat
    @Binding var isOpen:Bool
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width:UIScreen.width/2 + 130)
            //NavBar(isOpen: isOpen)
            VStack {
                Text("ga ada brow \(offset)").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Button(action: {
                    self.isOpen = false
                    offset = -500
                }) {
                    Text("Close")
                }
            }
            
        }
    }
}
