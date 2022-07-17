//
//  LifeViewController.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import UIKit

class LifeViewController: UIViewController {

    
    @IBOutlet weak var lifeTableView: UITableView!
    
    var LifeList : [LifeData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LifeList.append(LifeData("안녕하세요! 이사 왔어요~ 다들 운동 어디서 하시나요?", "chat_profile1", "햄", "쉬고싶동", "1분 전"))
        LifeList.append(LifeData("옷 다리려고 하는데 우1동 근처에 일요일에도 하는 세탁소 있는지 아시는분 계신가요!?", "chat_profile3", "핑궁", "뜨겁구 우1동", "3분 전"))
        LifeList.append(LifeData("코로나로 힘겨운 요즘인데 평온한 하루 보내시길 바랍니다.여러 소식들로 뒤숭숭한 요즘인데요, 부디 지치지 않고 잘 이겨내셨으면 합니다. 코로나 때문에 불안한 나날들이 몇 달째인데, 편안한 마음으로 일상을 보내실 수 있길 바랍니다.", "chat_profile6", "행복하자^^", "행복동", "19분 전"))

        lifeTableView.delegate = self
        lifeTableView.dataSource = self
        
        let lifeCell = UINib(nibName: "LifeTableViewCell", bundle: nil)
        self.lifeTableView.register(lifeCell, forCellReuseIdentifier: "LifeCell")
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "mySegue"{
                if let destination = segue.destination as?
                    CommentViewController {
                    if let selectdeIndex =
                        self.lifeTableView.indexPathForSelectedRow?.row {
                            
                        destination.contentLabel.text=LifeList[selectdeIndex].content
                    }
                }
            }
        }
    
}

extension LifeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int) -> Int{
        return LifeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LifeCell", for: indexPath) as? LifeTableViewCell else{
            
            return UITableViewCell()
        }
        
        cell.selectionStyle = .none
        
        
        let lifeData : LifeData = LifeList[indexPath.row]
        cell.uiImage.image = UIImage(named: lifeData.imagename)
        cell.uiContent.text = lifeData.content
        cell.uiNickname.text = lifeData.nickname
        cell.uiLocation.text = lifeData.location
        cell.uiTime.text = lifeData.time
        
        return cell

        
    }
}
