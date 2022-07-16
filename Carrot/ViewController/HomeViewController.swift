//
//  HomeViewController.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    
    var HomeList : [HomeData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeList.append(HomeData("home1","스우파 빨간 조거팬츠 팔아요", "사랑구 행복동", "3분전", 15000))
        HomeList.append(HomeData("home2","풋살화 한 번만 빌려주실 분 ㅠㅠ", "근육동", "5분전", 3000))
        HomeList.append(HomeData("home3","코스 볼륨 슬리브 미디 드레스 S 새상품", "덥동", "12분전", 100000))
        HomeList.append(HomeData("home4","2인 식탁", "배고프동", "13분전", 150000))
        HomeList.append(HomeData("home5","이케아 철제 캐비넷", "행복2동", "14분전", 35000))
        HomeList.append(HomeData("home6","우리집 빨래걸이..가 되어버린 ㅠㅠㅠ 실내사이클 팝니다.. 싸게 가져가요", "운동안할거동", "16분전", 30000))
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        let homeCell = UINib(nibName: "HomeTableViewCell", bundle: nil)
        self.homeTableView.register(homeCell, forCellReuseIdentifier: "HomeCell")
        


    }
    
}



extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int) -> Int{
        return HomeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeTableViewCell else{
            return UITableViewCell()
        }
        
        
        let homeData : HomeData = HomeList[indexPath.row]
        cell.uiImage.image = UIImage(named: homeData.imagename)
        cell.uiTitle.text = homeData.title
        cell.uiLocation.text = homeData.location
        cell.uiTime.text = homeData.time
        cell.uiPrice.text = "\(DecimalWon(value : homeData.price))"

        return cell

        
    }
}

func DecimalWon(value: Int) -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(from: NSNumber(value: value))! + "원"
        
        return result
    }
