//
//  ChatViewController.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var chatTableView: UITableView!
    
    var ChatList : [ChatData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ChatList.append(ChatData("chat_profile0", "chat1", "햄 HAM", "쉬고싶동", "1분 전", "감사합니다"))
        ChatList.append(ChatData("chat_profile1", "chat2", "홈런볼", "행복1동", "14분 전", "안녕하세요~ 아직 판매 중이신가요?"))
        ChatList.append(ChatData("chat_profile0", "chat3", "제이", "우동", "1일 전", "네~!"))
        ChatList.append(ChatData("chat_profile2", "chat4", "짱돌주먹", "행복2동", "1일 전", "용량이 어떻게 되나요?"))
        ChatList.append(ChatData("chat_profile3", "chat5", "하이하이", "사랑동", "5일 전", "어디 계시나요?"))
        ChatList.append(ChatData("chat_profile0", "chat6", "레인", "사랑2동", "10일 전", "도착했습니다"))
        ChatList.append(ChatData("chat_profile4", "chat7", "피정", "우2동", "13일 전", "네네 맞아요!"))
        ChatList.append(ChatData("chat_profile5", "chat8", "너굴이", "라라동", "19일 전", "네~~~~"))
        ChatList.append(ChatData("chat_profile0", "chat9", "드르릉쿨", "자고싶동", "20일 전", "좋은 하루 되세요 :)"))
        ChatList.append(ChatData("chat_profile6", "chat10", "연어뇸", "사랑3동", "1달 전", "아 네ㅠㅠ"))
        ChatList.append(ChatData("chat_profile0", "chat11", "하잉", "룰루동", "1달 전", "넵^^"))
        ChatList.append(ChatData("chat_profile0", "chat12", "덕이", "행복1동", "1달 전", "네 감사합니다..!"))
        
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        let chatCell = UINib(nibName: "ChatTableViewCell", bundle: nil)
        self.chatTableView.register(chatCell, forCellReuseIdentifier: "ChatCell")
    }
    
    
}

extension ChatViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int) -> Int{
        return ChatList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as? ChatTableViewCell else{
            return UITableViewCell()
        }
        
        
        let chatData : ChatData = ChatList[indexPath.row]
        cell.uiImageProfile.image = UIImage(named: chatData.imagenameProfile)
        cell.uiImageProduct.image = UIImage(named: chatData.imagenameProduct)
        cell.uiContent.text = chatData.content
        cell.uiLocation.text = chatData.location
        cell.uiTime.text = chatData.time
        
        return cell

        
    }
}
