//
//  CommentViewController.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import UIKit

class CommentViewController: UIViewController {
    
    @IBOutlet weak var commentTableView: UITableView!
    @IBOutlet weak var uiCommentTextField: UITextField!
    @IBOutlet weak var contentLabel: UILabel!
    
    
    
    var CommentList : [CommentData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CommentList.append(CommentData("dd"))
        
        commentTableView.delegate = self
        commentTableView.dataSource = self
        
        let commentCell = UINib(nibName: "CommentTableViewCell", bundle: nil)
        self.commentTableView.register(commentCell, forCellReuseIdentifier: "CommentCell")
        
    }
    
    
    
    @IBAction func buttonEnter(_ sender: Any) {
        CommentList.append(CommentData(uiCommentTextField.text ?? "default"))
        self.commentTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                
                CommentList.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                
            } else if editingStyle == .insert {
                
            }
        }


}

extension CommentViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int) -> Int{
        return CommentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell", for: indexPath) as? CommentTableViewCell else{
            return UITableViewCell()
        }
        
        
        let commentData : CommentData = CommentList[indexPath.row]
        
        cell.uiComment.text = commentData.comment
        
        return cell

        
    }
}
