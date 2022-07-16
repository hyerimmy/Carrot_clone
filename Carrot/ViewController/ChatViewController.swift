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

        ChatList.append(ChatData("chat_profile0", "chat_product1", "햄 HAM", "쉬고싶동", "1달 전", "안녕하세요~ 아직 판매 중이신가요?"))
        ChatList.append(ChatData("chat_profile0", "chat_product1", "햄 HAM", "쉬고싶동", "1달 전", "안녕하세요~ 아직 판매 중이신가요?"))
        ChatList.append(ChatData("chat_profile0", "chat_product1", "햄 HAM", "쉬고싶동", "1달 전", "안녕하세요~ 아직 판매 중이신가요?"))
        ChatList.append(ChatData("chat_profile0", "chat_product1", "햄 HAM", "쉬고싶동", "1달 전", "안녕하세요~ 아직 판매 중이신가요?"))
        ChatList.append(ChatData("chat_profile0", "chat_product1", "햄 HAM", "쉬고싶동", "1달 전", "안녕하세요~ 아직 판매 중이신가요?"))
        
        
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
