//
//  ContentView4.swift
//  Homework17UIBezierPath
//
//  Created by 黃柏嘉 on 2021/11/20.
//

import SwiftUI

struct DrawView4: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let degree = CGFloat.pi/180
        ////國旗外框(滿地紅)
        var path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 0, y: 252))
        path.addLine(to: CGPoint(x: 414, y: 252))
        path.addLine(to: CGPoint.init(x: 414, y: 0))
        path.close()
                
        let redView = CAShapeLayer()
        redView.path = path.cgPath
        redView.fillColor = CGColor(red: 231/255, green: 0, blue: 18/255, alpha: 1)
        view.layer.addSublayer(redView)
                
        //國旗內(青天)
        path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 0, y: 138))
        path.addLine(to: CGPoint(x: 208, y: 138))
        path.addLine(to: CGPoint(x: 208, y: 0))
        path.close()
                
        let blueView = CAShapeLayer()
        blueView.path = path.cgPath
        blueView.fillColor = CGColor(red: 29/255, green: 32/255, blue: 137/255, alpha: 1)
        view.layer.addSublayer(blueView)
        
        
        //光芒
        path = UIBezierPath()
        path.move(to: CGPoint(x: 105, y: 26))
        path.addLine(to: CGPoint(x: 81, y: 111))
        path.addLine(to: CGPoint(x: 143, y: 49))
        path.addLine(to: CGPoint(x: 58, y: 71))
        path.addLine(to: CGPoint(x: 144, y: 94))
        path.addLine(to: CGPoint(x: 81, y: 31))
        path.addLine(to: CGPoint(x: 104, y: 119))
        path.addLine(to: CGPoint(x: 128, y: 31))
        path.addLine(to: CGPoint(x: 66, y: 94))
        path.addLine(to: CGPoint(x: 150, y: 71))
        path.addLine(to: CGPoint(x: 65, y: 49))
        path.addLine(to: CGPoint(x: 126, y: 110))
        path.close()
        let raysView = CAShapeLayer()
        raysView.path = path.cgPath
        raysView.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(raysView)
        
        //藍色圓圈底
        path = UIBezierPath(arcCenter: CGPoint(x: 104, y: 69), radius: 26.5, startAngle: degree*0, endAngle: degree*360, clockwise: true)
                path.close()
        let blueCircle = CAShapeLayer()
        blueCircle.path = path.cgPath
        blueCircle.fillColor = CGColor(red: 29/255, green: 32/255, blue: 137/255, alpha: 1)
        view.layer.addSublayer(blueCircle)
        
        //白色圓圈
        path = UIBezierPath(arcCenter: CGPoint(x: 104, y: 69), radius: 24.5, startAngle: degree*0, endAngle: degree*360, clockwise: true)
        path.close()
        let circleView = CAShapeLayer()
        circleView.path = path.cgPath
        circleView.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(circleView)
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView4: View {
    var body: some View {
        DrawView4()
    }
}
struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4()
    }
}
