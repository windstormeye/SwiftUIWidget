//
//  SwiftUIWidgetDemo.swift
//  SwiftUIWidgetDemo
//
//  Created by 翁培钧 on 2020/11/22.
//

import WidgetKit
import SwiftUI
import Intents

struct SmallWidgetView: View {
    let countNum: Int
    let uiImage: UIImage?
    
    @State var networkImage: UIImage?
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
//                Image(uiImage: UIImage(named: "avatar")!)
                Image(uiImage: uiImage ?? UIImage(named: "avatar")!)
//                Image(uiImage: self.networkImage ?? UIImage(named: "avatar")!)
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .topLeading)
                    .cornerRadius(15)
//                    .onAppear(perform: getNetworkImage)
                
                
                Spacer()
                
                VStack(alignment:.leading) {
                    Text("PJHubs")
                        .font(.body)
                    
                    Text("数据日报")
                        .font(.footnote)
                        .foregroundColor(Color.init(UIColor(red: 105/255, green: 105/255, blue: 105/255, alpha: 1)))
                }
            }
            .padding(10)
            .frame(height:60)
            .background(ContainerRelativeShape().fill(Color.init(UIColor(red: 1, green: 193/255, blue: 193/255, alpha: 1))))
            
            Spacer()
            
            HStack {
                Text("播放")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                
                Text("\(countNum)")
                    .font(.system(size: 15))
                    .foregroundColor(Color.init(UIColor(red: 139/255, green: 54/255, blue: 38/255, alpha: 1)))
            }
            
            HStack {
                Text("粉丝")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                Text("+4")
                    .fontWeight(.black)
                    .foregroundColor(Color.init(UIColor(red: 139/255, green: 54/255, blue: 38/255, alpha: 1)))
            }
            
        }
        .padding()
        .background(Color.init(UIColor(red: 1, green: 106/255, blue: 106/255, alpha: 1)))
        .widgetURL(URL(string: "urlschema://pjhubsWidgetURL"))
    }
    
    func getNetworkImage() {
        URLSession.shared.dataTask(with: URL(string: "https://tu.sioe.cn/gj/qiege/image.jpg")!) { (data, _, _) in
            self.networkImage = UIImage(data: data!)
        }.resume()
    }
}

struct MediumWidgetView: View {
    var body: some View {
        Link(destination:URL(string: "urlschema://pjhubsLink")!) {
            VStack(alignment:.leading) {
                HStack {
                    Image(uiImage: UIImage(named: "avatar")!)
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .topLeading)
                        .cornerRadius(15)
                    
                    VStack(alignment:.leading) {
                        Text("PJHubs")
                            .font(.body)

                        Text("播放量周报")
                            .font(.footnote)
                            .foregroundColor(Color.init(UIColor(red: 105/255, green: 105/255, blue: 105/255, alpha: 1)))
                    }
                }
                .padding(.top, 10)
                
                GeometryReader { g in
                    
                    HStack {
                        Text("过去的一周中，你的播放量")
                            .fontWeight(.bold)
                        
                        Text("+4578次")
                            .fontWeight(.black)
                            .foregroundColor(.red)
                    }
                    
                    
                    let maxX = g.frame(in : .local).maxX
                    Path { p in
                        p.move(to: CGPoint(x: 0, y: 120) )
                        
                        p.addCurve(to : CGPoint(x: 20, y: 90),
                                   control1 : CGPoint(x: 10, y: 30),
                                   control2 : CGPoint(x: 10, y: 100))
                        
                        p.addCurve(to : CGPoint(x: 50, y: 100),
                                   control1 : CGPoint(x: 40, y: 30),
                                   control2 : CGPoint(x: 30, y: 40))
                        
                        p.addCurve(to : CGPoint(x: 90, y: 110),
                                   control1 : CGPoint(x: 70, y: 80),
                                   control2 : CGPoint(x: 60, y: 90))
                        
                        p.addCurve(to : CGPoint(x: 120, y: 110),
                                   control1 : CGPoint(x: 110, y: 80),
                                   control2 : CGPoint(x: 100, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 150, y: 50),
                                   control1 : CGPoint(x: 135, y: 80),
                                   control2 : CGPoint(x: 140, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 190, y: 90),
                                   control1 : CGPoint(x: 170, y: 80),
                                   control2 : CGPoint(x: 155, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 240, y: 90),
                                   control1 : CGPoint(x: 230, y: 60),
                                   control2 : CGPoint(x: 205, y: 50))
                        
                        p.addCurve(to : CGPoint(x: 300, y: 90),
                                   control1 : CGPoint(x: 290, y: 60),
                                   control2 : CGPoint(x: 255, y: 50))
                        
                        p.addCurve(to :CGPoint(x: maxX, y: 120),
                                   control1 : CGPoint(x: maxX, y: 100),
                                   control2 : CGPoint(x: maxX, y: 100))
                        
                        
                    }
                    .fill(LinearGradient(
                            gradient: .init(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)),Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) ]),
                            startPoint: .top,
                            endPoint: .bottom))
                    
                    Path { p in
                        p.move(to: CGPoint(x: 0, y: 120) )
                        
                        p.addCurve(to : CGPoint(x: 20, y: 90),
                                   control1 : CGPoint(x: 10, y: 30),
                                   control2 : CGPoint(x: 10, y: 100))
                        
                        p.addCurve(to : CGPoint(x: 50, y: 100),
                                   control1 : CGPoint(x: 40, y: 30),
                                   control2 : CGPoint(x: 30, y: 40))
                        
                        p.addCurve(to : CGPoint(x: 90, y: 110),
                                   control1 : CGPoint(x: 70, y: 80),
                                   control2 : CGPoint(x: 60, y: 90))
                        
                        p.addCurve(to : CGPoint(x: 120, y: 110),
                                   control1 : CGPoint(x: 110, y: 80),
                                   control2 : CGPoint(x: 100, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 150, y: 50),
                                   control1 : CGPoint(x: 135, y: 80),
                                   control2 : CGPoint(x: 140, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 190, y: 90),
                                   control1 : CGPoint(x: 170, y: 80),
                                   control2 : CGPoint(x: 155, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 240, y: 90),
                                   control1 : CGPoint(x: 230, y: 60),
                                   control2 : CGPoint(x: 205, y: 50))
                        
                        p.addCurve(to : CGPoint(x: 300, y: 90),
                                   control1 : CGPoint(x: 290, y: 60),
                                   control2 : CGPoint(x: 255, y: 50))
                        
                        p.addCurve(to :CGPoint(x: maxX, y: 120),
                                   control1 : CGPoint(x: maxX, y: 100),
                                   control2 : CGPoint(x: maxX, y: 100))


                    }
                    .stroke(LinearGradient(
                                gradient: .init(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)),Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.04069456336)) ]),
                                startPoint: .top,
                                endPoint: .bottom), lineWidth: 2 )
                }
                .frame(height: 100)
            }
            .padding()
        }
    }
}


struct MediumWidgetFansView: View {
    var body: some View {
    
        Link(destination: URL(string: "urlschema://pjhubsGiao")!, label: {
            VStack(alignment:.leading) {
                HStack {
                    Image(uiImage: UIImage(named: "avatar")!)
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .topLeading)
                        .cornerRadius(15)
                    
                    VStack(alignment:.leading) {
                        Text("PJHubs")
                            .font(.body)

                        Text("收入周报")
                            .font(.footnote)
                            .foregroundColor(Color.init(UIColor(red: 105/255, green: 105/255, blue: 105/255, alpha: 1)))
                    }
                }
                .padding(.top, 10)
                
                GeometryReader { g in
                    
                    HStack {
                        Text("过去的一周中，你的收入")
                            .fontWeight(.bold)
                        
                        Text("+23.1元")
                            .fontWeight(.black)
                            .foregroundColor(Color(#colorLiteral(red: 0.9529411793, green: 0.6984577579, blue: 0, alpha: 1)))
                    }
                    
                    
                    let maxX = g.frame(in : .local).maxX
                    Path { p in
                        p.move(to: CGPoint(x: 0, y: 120) )
                        
                        p.addCurve(to : CGPoint(x: 20, y: 90),
                                   control1 : CGPoint(x: 10, y: 30),
                                   control2 : CGPoint(x: 10, y: 100))
                        
                        p.addCurve(to : CGPoint(x: 50, y: 100),
                                   control1 : CGPoint(x: 40, y: 30),
                                   control2 : CGPoint(x: 30, y: 40))
                        
                        p.addCurve(to : CGPoint(x: 90, y: 110),
                                   control1 : CGPoint(x: 70, y: 80),
                                   control2 : CGPoint(x: 60, y: 90))
                        
                        p.addCurve(to : CGPoint(x: 120, y: 110),
                                   control1 : CGPoint(x: 110, y: 80),
                                   control2 : CGPoint(x: 100, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 150, y: 50),
                                   control1 : CGPoint(x: 135, y: 80),
                                   control2 : CGPoint(x: 140, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 190, y: 90),
                                   control1 : CGPoint(x: 170, y: 80),
                                   control2 : CGPoint(x: 155, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 240, y: 90),
                                   control1 : CGPoint(x: 230, y: 60),
                                   control2 : CGPoint(x: 205, y: 50))
                        
                        p.addCurve(to : CGPoint(x: 300, y: 90),
                                   control1 : CGPoint(x: 290, y: 60),
                                   control2 : CGPoint(x: 255, y: 50))
                        
                        p.addCurve(to :CGPoint(x: maxX, y: 120),
                                   control1 : CGPoint(x: maxX, y: 100),
                                   control2 : CGPoint(x: maxX, y: 100))
                        
                        
                    }
                    .fill(LinearGradient(
                            gradient: .init(colors: [Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) ]),
                            startPoint: .top,
                            endPoint: .bottom))
                    
                    Path { p in
                        p.move(to: CGPoint(x: 0, y: 120) )
                        
                        p.addCurve(to : CGPoint(x: 20, y: 90),
                                   control1 : CGPoint(x: 10, y: 30),
                                   control2 : CGPoint(x: 10, y: 100))
                        
                        p.addCurve(to : CGPoint(x: 50, y: 100),
                                   control1 : CGPoint(x: 40, y: 30),
                                   control2 : CGPoint(x: 30, y: 40))
                        
                        p.addCurve(to : CGPoint(x: 90, y: 110),
                                   control1 : CGPoint(x: 70, y: 80),
                                   control2 : CGPoint(x: 60, y: 90))
                        
                        p.addCurve(to : CGPoint(x: 120, y: 110),
                                   control1 : CGPoint(x: 110, y: 80),
                                   control2 : CGPoint(x: 100, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 150, y: 50),
                                   control1 : CGPoint(x: 135, y: 80),
                                   control2 : CGPoint(x: 140, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 190, y: 90),
                                   control1 : CGPoint(x: 170, y: 80),
                                   control2 : CGPoint(x: 155, y: 70))
                        
                        p.addCurve(to : CGPoint(x: 240, y: 90),
                                   control1 : CGPoint(x: 230, y: 60),
                                   control2 : CGPoint(x: 205, y: 50))
                        
                        p.addCurve(to : CGPoint(x: 300, y: 90),
                                   control1 : CGPoint(x: 290, y: 60),
                                   control2 : CGPoint(x: 255, y: 50))
                        
                        p.addCurve(to :CGPoint(x: maxX, y: 120),
                                   control1 : CGPoint(x: maxX, y: 100),
                                   control2 : CGPoint(x: maxX, y: 100))


                    }
                    .stroke(LinearGradient(
                                gradient: .init(colors: [Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.04069456336)) ]),
                                startPoint: .top,
                                endPoint: .bottom), lineWidth: 2 )
                }
                .frame(height: 100)
            }
            .padding()
        })
    }
}


struct Provider: IntentTimelineProvider {
    
    @AppStorage("integer", store: UserDefaults(suiteName: "group.com.pjhubs.swiftuiwidge"))
    var intString: String = ""
    
    // NOTE: 小组件占位视图，第一次添加或 loading 状态中的视图
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), count: 0, image: nil, configuration: ConfigurationIntent())
    }

    // NOTE: 第一次添加或小组件第一次被展示时调用
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), count: 0, image: nil, configuration: configuration)
        completion(entry)
    }
                
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        let currentDate = Date()
        for hourOffset in 0 ..< 3 {
            let entryDate = Calendar.current.date(byAdding: .minute, value: hourOffset, to: currentDate)!

            var image: UIImage? = nil
            if let imageData = try? Data(contentsOf: URL(string: "https://tu.sioe.cn/gj/qiege/image.jpg")!) {
                image = UIImage(data: imageData)
            }
//            let entry = SimpleEntry(date: entryDate, count: Int.random(in: 0...100), image: image, configuration: configuration)
            
            if (hourOffset == 1) {
                let revelance = TimelineEntryRelevance(score: 2000, duration: 0);
                let entry = SimpleEntry(date: entryDate, count: 2000, image: image, configuration: configuration, relevance: revelance)
                entries.append(entry)
            } else {
                let revelance = TimelineEntryRelevance(score: 10, duration: 0);
                let entry = SimpleEntry(date: entryDate, count: Int(intString)!, image: image, configuration: configuration, relevance: revelance)
                entries.append(entry)
            }
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
        
        
//        networkHandler {
//            let timeline = Timeline(entries: $0, policy: .atEnd)
//            completion(timeline)
//        }
    }
    
    
    func networkHandler(completion: @escaping ([SimpleEntry]) -> Void) {
        URLSession.shared.dataTask(with: URL(string: "https://i.snssdk.com/api/news/feed/v88/?widget_type=choiceness_small")!) { (data, response, error) in
            let originalDict = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as? NSDictionary
            print(originalDict as Any)
            completion([SimpleEntry(date: Date(), count: 1234, image: UIImage(named: "avatar")!, configuration: ConfigurationIntent())])
        }.resume()
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let count: Int
    let image: UIImage?
    let configuration: ConfigurationIntent
    var relevance: TimelineEntryRelevance?
}

struct SwiftUIWidgetDemoEntryView : View {
    var entry: Provider.Entry

    var body: some View {
//        Text(entry.date, style: .time)
        SmallWidgetView(countNum: entry.count, uiImage: entry.image ?? UIImage(named: "avatar"))
    }
}

struct SwiftUIWidgetDemoMediumEntryView : View {
    var entry: Provider.Entry

    @ViewBuilder
    var body: some View {
        switch entry.configuration.countType {
        case .money:
            MediumWidgetFansView()
        default:
            MediumWidgetView()
        }
    }
}

struct SwiftUIWidgetDemoMediumFansEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        MediumWidgetFansView()
    }
}


struct SwiftUIWidgetDemo: Widget {
    let kind: String = "SwiftUIWidgetDemo"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            SwiftUIWidgetDemoEntryView(entry: entry)
        }
        .configurationDisplayName("西瓜作者-数据日报")
        .description("你的数据精简日报")
        .supportedFamilies([.systemSmall])
    }
}

struct SwiftUIWidgeMediumDemo: Widget {
    let kind: String = "SwiftUIWidgeMediumDemo"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            SwiftUIWidgetDemoMediumEntryView(entry: entry)
        }
        .configurationDisplayName("西瓜作者-播放量趋势")
        .description("你的播放量趋势图")
        .supportedFamilies([.systemMedium])
    }
}

struct SwiftUIWidgeMediumFansDemo: Widget {
    let kind: String = "SwiftUIWidgeMediumFansDemo"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            SwiftUIWidgetDemoMediumFansEntryView(entry: entry)
        }
        .configurationDisplayName("西瓜作者-收入趋势")
        .description("你的收入趋势图")
        .supportedFamilies([.systemMedium])
    }
}

@main
struct Widgets: WidgetBundle {
    @WidgetBundleBuilder
    var body: some Widget {
        SwiftUIWidgetDemo()
        SwiftUIWidgeMediumDemo()
    }
}

struct SwiftUIWidgetDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIWidgetDemoEntryView(entry: SimpleEntry(date: Date(), count: 0, image: nil,  configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
        
        SwiftUIWidgetDemoMediumEntryView(entry: SimpleEntry(date: Date(), count: 0, image: nil, configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
