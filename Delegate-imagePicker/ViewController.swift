//
//  ViewController.swift
//  Delegate-imagePicker
//
//  Created by 육건 on 2023/03/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBAction func pick(_ sender: Any) {
    // 이미지 피커 컨트롤러 인스턴스 생성
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary // 이미지 소스로 사진 라이브러리 선택
        picker.allowsEditing = true // 이미지 편집 기능 On
    }
    
    // 이미지 피커 컨트롤러 실행
    self.present(picker, animated: false)
}

