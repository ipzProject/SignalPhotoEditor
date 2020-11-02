//
//  ColorMonochromeFilter.swift
//  SignalPhotoEditor
//
//  Created by Головаш Анастасия on 01.11.2020.
//

import UIKit

struct ColorMonochromeFilter: Filter {
    
    var filterName: String? = "ColorMonochrome"
    
    var intensity: Float = 1.0

    var inputColor: CIColor
    
    func applyFilter(image: inout CIImage) {
        
        let currentFilter = CIFilter.colorMonochrome()
        currentFilter.intensity = intensity
        currentFilter.color = inputColor
        currentFilter.inputImage = image
        
        // get a CIImage from our filter or exit if that fails
        guard let outputImage = currentFilter.outputImage else { return }
        
        image = outputImage
        
    }
    
}