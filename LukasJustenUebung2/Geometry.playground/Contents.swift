//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport



// mainView
let screenWidth = 1080.0
let screenHeight = 1920.0

// circle
let radius = 200.0

// rectangle
let rectWidth = 600.0
let rectHeight = 225.0

//triangle
let triWidth = 500.0
let triHeight = 300.0



// Erstellt den MainView zur Anzeige der geometrischen Figuren
let mainView = UIView(frame: CGRect(x: 0.0, y : 0.0, width:screenWidth, height: screenHeight))
PlaygroundPage.current.liveView = mainView

// Zeichnet einen roten Kreis mit Radius "radius" Pixel in die Mitte des mainView
let circle = UIView(frame: CGRect(x:0.0, y:0.0, width: 2*radius, height:2*radius))
circle.center = mainView.center
circle.layer.cornerRadius=CGFloat(radius)
circle.backgroundColor = UIColor.red
mainView.addSubview(circle)

// Zeichnet ein grünes Rechteck mit Kantenlänge 600 x 225 Pixel auf men MainView
let rectangle = UIView(frame: CGRect(x:0.0, y:0.0, width: rectWidth, height:rectHeight))
rectangle.center = CGPoint(x:300.0,y:300.0)
rectangle.backgroundColor = UIColor.green
mainView.addSubview(rectangle)

// Zeichnet ein graues Dreieck auf den mainView
let triangle = UIView(frame: CGRect(x:0.0, y:0.0, width: triWidth, height:triHeight))
triangle.center = CGPoint(x:700.0,y:1400.0)
let trianglePath = UIBezierPath()
trianglePath.move(to: CGPoint(x:0,y:triHeight))
trianglePath.addLine(to: CGPoint(x:triWidth/2,y:0))
trianglePath.addLine(to: CGPoint(x:triWidth,y:triHeight))
trianglePath.addLine(to: CGPoint(x:0,y:triHeight))
trianglePath.close()
let layer = CAShapeLayer();
layer.path = trianglePath.cgPath
triangle.layer.addSublayer(layer)
mainView.addSubview(triangle)

