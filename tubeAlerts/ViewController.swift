//
//  ViewController.swift
//  tubeAlerts
//
//  Created by Danil on 04.11.2019.
//  Copyright © 2019 Danil Chernyshev. All rights reserved.
//

import UIKit

var lines = [
    Line(publicName: "Circle", internalName: "circle", color: "#FFCE00"),
    Line(publicName: "Hammersmith & City", internalName: "hammersmith", color: "#D799AF"),
    Line(publicName: "Metropolitan", internalName: "metropolitan", color: "#751056"),
    Line(publicName: "Bakerloo", internalName: "bakerloo", color: "#894E24"),
    Line(publicName: "Central", internalName: "central", color: "#DC241F"),
    Line(publicName: "District", internalName: "district", color: "#007229"),
    Line(publicName: "Jubilee", internalName: "jubilee", color: "#6A7278"),
    Line(publicName: "Northern", internalName: "northern", color: "#000000"),
    Line(publicName: "Piccadilly", internalName: "piccadilly", color: "#0019A8"),
    Line(publicName: "Victoria", internalName: "victoria", color: "#00A0E2"),
    Line(publicName: "Waterloo & City", internalName: "waterloo", color: "#76D0BD"),
    Line(publicName: "London Overground", internalName: "overground", color: "#E86A10"),
    Line(publicName: "TfL Rail", internalName: "tflrail", color: "#0019A8"),
    Line(publicName: "DLR", internalName: "dlr", color: "#00AFAD"),
    Line(publicName: "Tram", internalName: "tram", color: "#66CC00")
]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var linesTableView: UITableView!
    @IBOutlet weak var topLogo: UIImageView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let lineCell = tableView.dequeueReusableCell(withIdentifier: "LineTableViewCell") as! LineTableViewCell
        lineCell.lineLabel.text = lines[indexPath.row].publicName
        lineCell.selectionStyle = .none
        let color = lines[indexPath.row].color
        lineCell.lineLogo.backgroundColor = UIColor(hexString: color)
        lineCell.lineLogo.layer.cornerRadius = lineCell.lineLogo.layer.bounds.size.width / 2;
        lineCell.lineLogo.layer.masksToBounds = true;
        return lineCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func viewDidLoad() {
        linesTableView.register(UINib(nibName: "LineTableViewCell", bundle: nil), forCellReuseIdentifier: "LineTableViewCell")
        topLogo.layer.cornerRadius = topLogo.layer.bounds.size.width / 2;
        topLogo.layer.masksToBounds = true;
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

