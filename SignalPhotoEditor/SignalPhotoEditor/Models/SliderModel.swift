//
//  SliderModel.swift
//  SignalPhotoEditor
//
//  Created by Denys Danyliuk on 03.12.2020.
//

import Foundation

struct SliderModel {
    
    var name: String?
    var sliderNumber: Int
    var defaultValue: Float
    var minimumValue: Float
    var maximumValue: Float
    
    static var positiveSliderMax = SliderModel(name: nil,
                                               sliderNumber: 1,
                                               defaultValue: 100,
                                               minimumValue: 0,
                                               maximumValue: 100)
    
    
    static var positiveSliderMin = SliderModel(name: nil,
                                               sliderNumber: 1,
                                               defaultValue: 0,
                                               minimumValue: 0,
                                               maximumValue: 100)
    
    static var doubleSlider = SliderModel(name: nil,
                                          sliderNumber: 1,
                                          defaultValue: 0,
                                          minimumValue: -100,
                                          maximumValue: 100)
}
