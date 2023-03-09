//
//  ViewController.swift
//  Delegate-imagePicker
//
//  Created by 육건 on 2023/03/04.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,
                      UINavigationControllerDelegate {
    @IBOutlet var imgView: UIImageView!
    @IBAction func pick(_ sender: Any) {
        
        // 이미지 피커 컨트롤러 인스턴스 생성
        let picker = UIImagePickerController( )
        picker.sourceType = .photoLibrary // 이미지 소스로 사진 라이브러리 선택
        picker.allowsEditing = true // 이미지 편집 기능 On
        
        // 추가된 부분) 델리게이트 설정
        picker.delegate = self
        
        // 이미지 피커 컨트롤러 실행
        self.present(picker, animated: false)
        
        // 이미지 피커에서 이미지를 선택하지 않고 취소할때 호출되는 메소드
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        }
        // 이미지 피커에서 이미지를 선택했을때 호출되는 메소드
        func imagePickerController(_ picker: UIImagePickerController, didFinish
                                   PickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        }
    }
}
