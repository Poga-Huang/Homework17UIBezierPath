//
//  ContentView.swift
//  Homework17UIBezierPath
//
//  Created by 黃柏嘉 on 2021/11/18.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        //左中
        var path = UIBezierPath()
        path.move(to: CGPoint(x: 64, y: 29))
        path.addLine(to: CGPoint(x: 150, y: 73))
        path.addLine(to: CGPoint(x: 116, y: 100))
        path.addLine(to: CGPoint(x: 68, y: 55))
        path.close()
        let kobeLogo1 = CAShapeLayer()
        kobeLogo1.path = path.cgPath
        view.layer.addSublayer(kobeLogo1)
        
        //左上角
        path = UIBezierPath()
        path.move(to: CGPoint(x: 150, y: 62))
        path.addLine(to: CGPoint(x: 150, y: 34))
        path.addLine(to: CGPoint(x: 86, y: 11))
        path.addLine(to: CGPoint(x: 66, y: 16))
        path.close()
        let kobeLogo2 = CAShapeLayer()
        kobeLogo2.path = path.cgPath
        view.layer.addSublayer(kobeLogo2)
        
        //右上角
        path = UIBezierPath()
        path.move(to: CGPoint(x: 159, y: 34))
        path.addLine(to: CGPoint(x: 159, y: 62))
        path.addLine(to: CGPoint(x: 244, y: 16))
        path.addLine(to: CGPoint(x: 224, y: 11))
        path.close()
        let kobeLogo3 = CAShapeLayer()
        kobeLogo3.path = path.cgPath
        view.layer.addSublayer(kobeLogo3)
        
        //右中
        path = UIBezierPath()
        path.move(to: CGPoint(x: 158, y: 73))
        path.addLine(to: CGPoint(x: 192, y: 100))
        path.addLine(to: CGPoint(x: 239, y: 55))
        path.addLine(to: CGPoint(x: 246, y: 29))
        path.close()
        let kobeLogo4 = CAShapeLayer()
        kobeLogo4.path = path.cgPath
        view.layer.addSublayer(kobeLogo4)
        
        //左下角
        path = UIBezierPath()
        path.move(to: CGPoint(x: 150, y: 82))
        path.addLine(to: CGPoint(x: 150, y: 227))
        path.addLine(to: CGPoint(x: 139, y: 218))
        path.addLine(to: CGPoint(x: 123, y: 108))
        path.close()
        let kobeLogo5 = CAShapeLayer()
        kobeLogo5.path = path.cgPath
        view.layer.addSublayer(kobeLogo5)

        //右下角
        path = UIBezierPath()
        path.move(to: CGPoint(x: 157, y: 82))
        path.addLine(to: CGPoint(x: 186, y: 108))
        path.addLine(to: CGPoint(x: 172, y: 218))
        path.addLine(to: CGPoint(x: 157, y: 227))
        path.close()
        let kobeLogo6 = CAShapeLayer()
        kobeLogo6.path = path.cgPath
        view.layer.addSublayer(kobeLogo6)

      
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
