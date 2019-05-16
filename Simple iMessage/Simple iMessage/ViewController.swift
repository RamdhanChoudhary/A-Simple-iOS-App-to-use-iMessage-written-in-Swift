//
//  ViewController.swift
//  Simple iMessage
//
//  Created by RAMDHAN CHOUDHARY on 16/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendNewIMessage(_ sender: Any) {
        let messageVC = MFMessageComposeViewController()
        messageVC.body = "Enter a message details here";
        messageVC.recipients = ["recipients_number_here"]
        messageVC.messageComposeDelegate = self
        self.present(messageVC, animated: true, completion: nil)
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch (result) {
        case .cancelled:
            print("Message was cancelled")
            dismiss(animated: true, completion: nil)
        case .failed:
            print("Message failed")
            dismiss(animated: true, completion: nil)
        case .sent:
            print("Message was sent")
            dismiss(animated: true, completion: nil)
        default:
            break
        }
    }
    
}

