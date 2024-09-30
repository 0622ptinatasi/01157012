//
//  ContentView.swift
//  demo
//
//  Created by user12 on 2024/9/25.
//

import SwiftUI
import WebKit
import MapKit

struct ContentView: View {
    @State private var isRotating = false
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            ScrollView(.vertical) {
                VStack {
                    Image("人")
                        .resizable()
                        .padding(.leading, 20.0)
                        .scaledToFit()
                        .frame(width: 350, height:350)
                       Image("字")
                        .resizable()
                        .padding(.top, -15.0)
                        .frame(width: 350, height:120)
                    HStack{
                        Text("MEMBER")
                            .font(.custom("MaokenAssortedSans", size: 40))
                            .foregroundColor(.white)
                        Image(systemName: "person.2.circle")
                            .font(.title)
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                    .padding(.leading, 40.0)
                    HStack{
                        ProfileView(imageName: "大姐", name: "李恩智")
                            .padding(.trailing, 50.0)
                        ProfileView(imageName: "mimi", name: "mimi")
                    }
                    HStack{
                        ProfileView(imageName: "李", name: "李泳知")
                            .padding(.trailing, 50.0)
                        ProfileView(imageName: "安", name: "安俞真")
                    }
                    
                    HStack{
                        Text("BACKGROUND")
                            .font(.custom("MaokenAssortedSans", size: 40))
                            .foregroundColor(.white)
                        Image(systemName: "book.pages.fill")
                            .foregroundColor(Color.white)
                            .font(.title)
                        Spacer()
                    }
                    .padding(.leading, 40.0)
                    .padding(.top, 10.0)
                    HStack{
                        Image(.rabbit)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .rotationEffect(.degrees(isRotating ? 20 : -20))  // 從 20 旋轉到 -20
                                    .animation(Animation.linear(duration: 2).repeatForever(autoreverses: true), value: isRotating)  // 來回旋轉
                                    .onAppear {
                                        isRotating = true  // 開始旋轉
                                    }
                        VStack{
                            Text("月球背面有個玉皇大帝經營的休息站，休息站最熱門的商店’宇宙年糕店‘，宇宙年糕店中有銷售一等的功臣—兔瓏，因為受不了頻繁的加班，因此興起了逃往地球的念頭。                                            為了得到豐厚的獎金，4名勇士們穿越時空，為了抓住逃到地球的月球兔子而聚集在一起的展開的新概念Hybrid動作冒險綜藝節目。")
                                .font(.callout)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .padding(.leading, -30.0)
                                .padding(.trailing,25.0)
                            
                        }
                    }
                    HStack{
                        Text("SEASON")
                            .font(.custom("MaokenAssortedSans", size: 40))
                            .foregroundColor(.white)
                        Image(systemName: "list.number")
                            .foregroundColor(Color.white)
                            .font(.title)
                        Spacer()
                    }
                    .padding(.leading, 40.0)
                    TextShadow(text: "第一季-熱帶國家的平行宇宙地球")
                    ScrollView(.horizontal){
                        HStack{
                            Image("S1-1")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                            Image("S1-2")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                            Image("S1-3")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                        }
                        .padding(.leading, 40.0)
                        .padding(.bottom,10.0)
                    }
                    .scrollIndicators(.hidden)
                    HStack{
                        VStack{
                            MapView(longitude: 9.532384,latitude: 100.061694)
                                .frame(width: 200.0, height: 200.0)
                                .cornerRadius(15)
                                .padding(.leading, 25.0)
                            Text("地點：泰國蘇梅島")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                            
                        }
                        VStack{
                            
                            YouTubePlayerWithCoverView(videoURL: "https://www.youtube.com/watch?v=L5WWWFbIp4s/embed/", thumbnailImageName: "R1")
                            Text("reels：IVE-love dive")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                        }
                        .padding(.bottom,10.0)
                    }
                    TextShadow(text:"第二季-東南雅報北歐的時空冒險")
                    ScrollView(.horizontal){
                        HStack{
                            Image("S2-1")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                            Image("S2-2")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                            Image("S2-3")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                        }
                        .padding(.leading, 40.0)
                        .padding(.bottom,10.0)
                    }
                    .scrollIndicators(.hidden)
                    HStack{
                        VStack{
                            MapView(longitude: 60.167928,latitude: 24.952984)
                                .frame(width: 200.0, height: 200.0)
                                .cornerRadius(15)
                                .padding(.leading, 25.0)
                            Text("地點：芬蘭赫爾辛基、羅瓦涅米、峇里島")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                        }
                        VStack{
                            YouTubePlayerWithCoverView(videoURL: "https://youtube.com/shorts/CqxluYhV5Js?si=So3frIbDIar-KTen/embed/", thumbnailImageName: "R2")
                            Text("reels：IVE-I AM")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                        }
                        .padding(.bottom,10.0)
                    }
                    TextShadow(text:"番外篇-韓國郊區加平的自駕遊")
                    ScrollView(.horizontal){
                        HStack{
                            Image("S3-1")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                            Image("S3-2")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                            Image("S3-3")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(5)
                        }
                        .padding(.leading, 40.0)
                        .padding(.bottom,10.0)
                    }
                    .scrollIndicators(.hidden)
                    HStack{
                        VStack{
                            MapView(longitude: 37.83284634767526,latitude: 127.5105751689261)
                                .frame(width: 200.0, height: 200.0)
                                .cornerRadius(15)
                                .padding(.leading, 25.0)
                            Text("地點：韓國加平")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                        }
                        VStack{
                            YouTubePlayerWithCoverView(videoURL: "https://youtube.com/shorts/ydnDWH8HCuM?si=eN081j15gkb_8NQYS1/embed/", thumbnailImageName: "R3")
                            Text("reels：IVE-HEYA")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
                
            }
            .padding(.top,1)
        }
        
    }
}

struct ProfileView: View {
    let imageName: String
    let name: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(AmoebaShape())
            Text(name)
                .font(.custom("UoqMunThenKhung", size: 30))
                .foregroundColor(.white)
        }
    }
}

struct AmoebaShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        // 隨機設計變形蟲形狀的點和曲線
        let startPoint = CGPoint(x: rect.midX, y: rect.minY)
        path.move(to: startPoint)

        // 使用貝塞爾曲線來創建變形蟲的外形
        path.addCurve(to: CGPoint(x: rect.maxX, y: rect.midY),
                      control1: CGPoint(x: rect.maxX * 0.8, y: rect.minY * 0.4),
                      control2: CGPoint(x: rect.maxX, y: rect.midY * 0.3))

        path.addCurve(to: CGPoint(x: rect.midX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX, y: rect.maxY * 0.9),
                      control2: CGPoint(x: rect.midX * 1.5, y: rect.maxY))

        path.addCurve(to: CGPoint(x: rect.minX, y: rect.midY),
                      control1: CGPoint(x: rect.midX * 0.5, y: rect.maxY),
                      control2: CGPoint(x: rect.minX, y: rect.maxY * 0.8))

        path.addCurve(to: startPoint,
                      control1: CGPoint(x: rect.minX, y: rect.minY * 0.5),
                      control2: CGPoint(x: rect.midX * 0.2, y: rect.minY))

        path.closeSubpath()

        return path
    }
}

struct TextShadow: View {
    var text: String

    var body: some View {
        ZStack {
            // 外层描边效果（放大字体并设置描边颜色）
            Text(text)
                .font(.custom("UoqMunThenKhung", size: 27))
                .foregroundColor(.black) // 描边的颜色
                .offset(x: -1, y: -1) // 偏移一点，模拟外框效果
                .overlay(
                    Text(text)
                        .font(.custom("UoqMunThenKhung", size: 27))
                        .foregroundColor(.black)
                        .offset(x: 1, y: 1)
                )
                .overlay(
                    Text(text)
                        .font(.custom("UoqMunThenKhung", size: 27))
                        .foregroundColor(.black)
                        .offset(x: 1, y: -1)
                )
                .overlay(
                    Text(text)
                        .font(.custom("UoqMunThenKhung", size: 27))
                        .foregroundColor(.black)
                        .offset(x: -1, y: 1)
                )
            
            // 内层实际的文字
            Text(text)
                .font(.custom("UoqMunThenKhung", size: 27))
                .foregroundColor(.white) // 实际的文字颜色
        }
        .multilineTextAlignment(.center)
    }
}


struct MapView: View {
    var longitude: Double
    var latitude: Double
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: longitude, longitude: latitude), latitudinalMeters: 500, longitudinalMeters: 500)
    }
}

// 子视图：用于封面和播放 YouTube 视频
struct YouTubePlayerWithCoverView: View {
    var videoURL: String  // 接收完整的 YouTube 视频链接
    var thumbnailImageName: String  // 封面图片名称
    
    @State private var isPlaying = false

    var body: some View {
        VStack {
            if isPlaying {
                // 播放 YouTube 视频
                YouTubePlayerView(videoURL: videoURL)
                    .frame(height: 200)
            } else {
                // 显示自定义封面图
                Button(action: {
                    isPlaying = true // 点击后开始播放视频
                }) {
                    Image(thumbnailImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                }
            }
        }
    }
}

// 子视图：封装 WKWebView 用于播放视频
struct YouTubePlayerView: UIViewRepresentable {
    var videoURL: String  // 接收完整的 YouTube 视频链接

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // 使用传入的 YouTube 视频链接
        if let url = URL(string: videoURL) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

#Preview {
    ContentView()
}
