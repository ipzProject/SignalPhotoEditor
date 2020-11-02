//
//  PhotoEffectProcessFilter.swift
//  SignalPhotoEditor
//
//  Created by Головаш Анастасия on 01.11.2020.
//

import UIKit

struct PhotoEffectProcessFilter: Filter {
    
    var filterName: String? = "PhotoEffectProcess"
    var intensity: Float = 1.0
    
    func applyFilter(image: inout CIImage) {
        
        let currentFilter = CIFilter.photoEffectProcess()
        currentFilter.inputImage = image
        applyIntensity(image: &image, filter: currentFilter)
        // get a CIImage from our filter or exit if that fails
//        guard let outputImage = currentFilter.outputImage else { return }
//        
//        image = outputImage
        
    }
}