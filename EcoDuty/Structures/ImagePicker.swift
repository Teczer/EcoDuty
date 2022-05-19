//
//  ImagePicker.swift
//  EcoDuty
//
//  Created by Apprenant 85 on 14/05/2022.
//

import SwiftUI

struct ImagePicker : UIViewControllerRepresentable {
    
    @Binding var imageFromImagePicker : UIImage // Pour gérer l'image de l'avatar de l'utilisateur.rice
    @Environment(\.presentationMode) var presentationMode
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator // Permet de mettre l'image sélectionnée dans la galerie en photo de profil
        picker.allowsEditing = true
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePicker: self)
    }
    
    final class Coordinator : NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        let imagePicker : ImagePicker
        
        init (imagePicker : ImagePicker) {
            self.imagePicker = imagePicker
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.editedImage] as? UIImage { // Ligne pour gérer les valeurs optionnelles
                guard let data = image.jpegData(compressionQuality: 0.7), // À revoir en fonction de la taille des images : plus c'est proche de 0, plus il y a de la compression (si on veut de petites images) & 1 équivaut à aucune compression.
                     let compressedImage = UIImage(data : data) else {
                    // Mettre ici une alerte en cas d'erreur ?
                    dismiss()
                    return
                }
                imagePicker.imageFromImagePicker = compressedImage
            } else {
                // Mettre ici une alerte en cas d'erreur ?
                dismiss()
            }
            picker.dismiss(animated: true) // Permet de faire d'enlever l'imagePicker une fois l'image choisie
            
        }
        
        private func dismiss() {
            imagePicker.presentationMode.wrappedValue.dismiss()
        }
    }
    
}


