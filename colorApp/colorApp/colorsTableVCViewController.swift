//
//  colorsTableVCViewController.swift
//  colorApp
//
//  Created by Aviral Singh Halsi on 24/01/24.
//

import UIKit

class colorsTableVCViewController: UIViewController{
    var colors:[UIColor]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        addColors()

        // Do any additional setup after loading the view.
    }
    
    func addColors(){
        for _ in 0...50{
            colors.append(createColors())
        }
    }
    
    func createColors()->UIColor{
        return UIColor(red: CGFloat.random(in:0...1), green:CGFloat.random(in:0...1), blue: CGFloat.random(in:0...1), alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVc=segue.destination as! colorsDetailVc
        destVc.color=sender as? UIColor
    }

}

extension colorsTableVCViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell=tableView.dequeueReusableCell(withIdentifier: "colorCell") else{
            return UITableViewCell()
        }
        let color=colors[indexPath.row]
        cell.backgroundColor=color
        return cell
    }
    
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    )
    {
        let color=colors[indexPath.row]
        performSegue(withIdentifier: "toColorsDetailVc", sender: color)
        
    }
    

    
}
