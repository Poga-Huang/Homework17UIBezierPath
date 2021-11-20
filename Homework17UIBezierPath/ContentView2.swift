//
//  ContentView2.swift
//  Homework17UIBezierPath
//
//  Created by 黃柏嘉 on 2021/11/19.
//

import SwiftUI

struct DrawView2: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        
        let backView = UIView(frame: CGRect(x: 0, y: 0, width: 414, height: 500))
        view.addSubview(backView)
        
        //手
        let handPath = UIBezierPath()
        handPath.move(to: CGPoint(x: 112, y: 270))
        handPath.addQuadCurve(to: CGPoint(x: 137, y: 325), controlPoint: CGPoint(x: 80, y: 310))
        handPath.addLine(to: CGPoint(x: 325, y: 330))
        handPath.addQuadCurve(to: CGPoint(x: 345, y: 270), controlPoint: CGPoint(x: 390, y: 300))
        
        let handView1 = CAShapeLayer()
        handView1.fillColor = CGColor(red: 246/255, green: 211/255, blue: 85/255, alpha: 1)
        handView1.strokeColor =  UIColor.black.cgColor
        handView1.lineWidth = 5
        handView1.path = handPath.cgPath
        backView.layer.addSublayer(handView1)
        
        //腳
        let legPath = UIBezierPath()
        legPath.move(to: CGPoint(x: 153, y: 340))
        legPath.addQuadCurve(to: CGPoint(x: 160, y: 405), controlPoint: CGPoint(x: 142, y: 369))
        legPath.addQuadCurve(to: CGPoint(x: 210, y: 390), controlPoint: CGPoint(x: 230, y: 415))
        legPath.addLine(to: CGPoint(x: 210, y: 370))
        legPath.addQuadCurve(to: CGPoint(x: 248, y: 370), controlPoint: CGPoint(x: 229, y: 380))
        legPath.addLine(to: CGPoint(x: 248, y: 390))
        legPath.addQuadCurve(to: CGPoint(x: 302, y: 405), controlPoint: CGPoint(x: 220, y: 415))
        legPath.addQuadCurve(to: CGPoint(x: 309, y: 340), controlPoint: CGPoint(x: 317, y: 370))
    

        
        
        let legView = CAShapeLayer()
        legView.path = legPath.cgPath
        legView.fillColor = CGColor(red: 246/255, green: 211/255, blue: 85/255, alpha: 1)
        legView.strokeColor = UIColor.black.cgColor
        legView.lineWidth = 5
        backView.layer.addSublayer(legView)
        
        
        //衣服
        let tShirtPath = UIBezierPath()
        tShirtPath.move(to: CGPoint(x: 144, y: 238))
        tShirtPath.addQuadCurve(to: CGPoint(x: 110, y: 268), controlPoint: CGPoint(x: 129, y: 246))
        tShirtPath.addQuadCurve(to: CGPoint(x: 147, y: 300), controlPoint: CGPoint(x: 116, y: 285))
        tShirtPath.addLine(to: CGPoint(x: 150, y: 290))
        tShirtPath.addLine(to: CGPoint(x: 135, y: 340))
        tShirtPath.addQuadCurve(to: CGPoint(x: 325, y: 340), controlPoint: CGPoint(x: 240, y: 370))
        tShirtPath.addLine(to: CGPoint(x: 312, y: 290))
        tShirtPath.addLine(to: CGPoint(x: 315, y: 300))
        tShirtPath.addQuadCurve(to: CGPoint(x: 350, y: 268), controlPoint: CGPoint(x: 340, y: 285))
        tShirtPath.addQuadCurve(to: CGPoint(x: 320, y: 235), controlPoint: CGPoint(x: 338, y: 250))
        
        let tShirtView = CAShapeLayer()
        tShirtView.path = tShirtPath.cgPath
        tShirtView.fillColor = CGColor(red: 218/255, green: 37/255, blue: 28/255, alpha: 1)
        tShirtView.strokeColor = UIColor.black.cgColor
        tShirtView.lineWidth = 5
        backView.layer.addSublayer(tShirtView)
        
        //頭
        let headPath = UIBezierPath()
        headPath.move(to: CGPoint(x: 290, y: 32))
        headPath.addQuadCurve(to: CGPoint(x: 179, y: 32), controlPoint: CGPoint(x: 232, y: 6))
        headPath.addQuadCurve(to: CGPoint(x: 130, y: 20), controlPoint: CGPoint(x: 165, y: -1))
        headPath.addQuadCurve(to: CGPoint(x: 144, y: 61), controlPoint: CGPoint(x:104, y: 42))
        headPath.addQuadCurve(to: CGPoint(x: 130, y: 142), controlPoint: CGPoint(x: 125, y: 85))
        headPath.addQuadCurve(to: CGPoint(x:155, y: 243), controlPoint: CGPoint(x: 85, y: 195))
        headPath.addQuadCurve(to: CGPoint(x: 305, y: 243), controlPoint: CGPoint(x: 228, y: 290))
        headPath.addQuadCurve(to: CGPoint(x: 334, y: 142), controlPoint: CGPoint(x: 380, y: 195))
        headPath.addQuadCurve(to: CGPoint(x: 325, y: 61), controlPoint: CGPoint(x: 344, y: 92))
        headPath.addQuadCurve(to: CGPoint(x: 335, y: 20), controlPoint: CGPoint(x: 362, y: 44))
        headPath.addQuadCurve(to: CGPoint(x: 290, y: 32), controlPoint: CGPoint(x: 300, y: -1))
        headPath.close()
        
        let headView = CAShapeLayer()
        headView.path = headPath.cgPath
        headView.fillColor = CGColor(red: 246/255, green: 211/255, blue: 85/255, alpha: 1)
        headView.strokeColor = UIColor.black.cgColor
        headView.lineWidth = 5
        backView.layer.addSublayer(headView)
        
        //眉毛
        var eyebrowPath = UIBezierPath()
        eyebrowPath.move(to: CGPoint(x: 156, y: 103))
        eyebrowPath.addQuadCurve(to: CGPoint(x: 179, y: 93), controlPoint: CGPoint(x: 162, y: 90))
        let eyebrowView1 = CAShapeLayer()
        eyebrowView1.path = eyebrowPath.cgPath
        eyebrowView1.strokeColor = UIColor.black.cgColor
        eyebrowView1.fillColor = UIColor.clear.cgColor
        eyebrowView1.lineWidth = 5
        backView.layer.addSublayer(eyebrowView1)
        
        
        eyebrowPath = UIBezierPath()
        eyebrowPath.move(to: CGPoint(x: 299, y: 103))
        eyebrowPath.addQuadCurve(to: CGPoint(x: 281, y: 93), controlPoint: CGPoint(x: 294, y: 90))
        
        let eyebrowView2 = CAShapeLayer()
        eyebrowView2.path = eyebrowPath.cgPath
        eyebrowView2.strokeColor = UIColor.black.cgColor
        eyebrowView2.fillColor = UIColor.clear.cgColor
        eyebrowView2.lineWidth = 5
        backView.layer.addSublayer(eyebrowView2)
        
        //微笑
        let smilePath = UIBezierPath()
        smilePath.move(to: CGPoint(x: 205, y: 216))
        smilePath.addQuadCurve(to: CGPoint(x: 257, y: 216), controlPoint: CGPoint(x: 230, y: 240))
        
        let smileView = CAShapeLayer()
        smileView.path = smilePath.cgPath
        smileView.fillColor = UIColor.clear.cgColor
        smileView.strokeColor = UIColor.black.cgColor
        smileView.lineWidth = 5
        backView.layer.addSublayer(smileView)
        
        //眼睛
        var eyesPath = UIBezierPath(ovalIn: CGRect(x: 165, y: 140, width: 12, height: 20))
        
        let eyesView1 = CAShapeLayer()
        eyesView1.path = eyesPath.cgPath
        eyesView1.fillColor = UIColor.black.cgColor
        eyesView1.strokeColor = UIColor.black.cgColor
        backView.layer.addSublayer(eyesView1)
        
        eyesPath = UIBezierPath(ovalIn: CGRect(x: 280, y: 140, width: 12, height: 20))
        eyesPath.close()
        
        let eyesView2 = CAShapeLayer()
        eyesView2.path = eyesPath.cgPath
        eyesView2.fillColor = UIColor.black.cgColor
        eyesView2.strokeColor = UIColor.black.cgColor
        backView.layer.addSublayer(eyesView2)
        
        //鼻子
        let nosePath = UIBezierPath()
        nosePath.move(to: CGPoint(x: 211, y: 170))
        nosePath.addQuadCurve(to: CGPoint(x: 254, y: 170), controlPoint: CGPoint(x: 233, y: 210))
        nosePath.addQuadCurve(to: CGPoint(x: 211, y: 170), controlPoint: CGPoint(x: 233, y: 155))
        
        let noseView = CAShapeLayer()
        noseView.path = nosePath.cgPath
        backView.layer.addSublayer(noseView)
        
       
        
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView2: View {
    var body: some View {
        DrawView2()
    }
}
struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
