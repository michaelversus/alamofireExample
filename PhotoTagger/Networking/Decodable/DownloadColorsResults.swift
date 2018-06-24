/// Copyright (c) 2018 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation

struct DownloadColorsResults: Decodable {
  let results: [DownloadColorsResult]
  let unsuccessfull: [DownloadColorsResult]?
}

struct DownloadColorsResult: Decodable {
  let info: ColorInfo
  let image: String
}

struct ColorInfo: Decodable {
  let objectPercentage: String?
  let foregroundColors: [FBColor]
  let colorPercentTreshold: Double
  let colorVariance: String
  let imageColors: [ImageColor]
  let backgroundColors: [FBColor]
  
  private enum CodingKeys: String, CodingKey {
    case objectPercentage = "object_percentage"
    case foregroundColors = "foreground_colors"
    case colorPercentTreshold = "color_percent_threshold"
    case colorVariance = "color_variance"
    case imageColors = "image_colors"
    case backgroundColors = "background_colors"
  }
}

struct FBColor: Decodable {
  let percentage:Double
  let b: String
  let r: String
  let closestPaletteColor: String
  let closestPaletteColorParent: String
  let closestPaletteDistance: Double
  let g: String
  let htmlCode: String
  let closestPaletteColorHtmlCode: String
  
  private enum CodingKeys: String, CodingKey {
    case percentage
    case b
    case r
    case closestPaletteColor = "closest_palette_color"
    case closestPaletteColorParent = "closest_palette_color_parent"
    case closestPaletteDistance = "closest_palette_distance"
    case g
    case htmlCode = "html_code"
    case closestPaletteColorHtmlCode = "closest_palette_color_html_code"
  }
}

struct ImageColor: Decodable {
  let percent:Double
  let b: String
  let r: String
  let closestPaletteColor: String
  let closestPaletteColorParent: String
  let closestPaletteDistance: Double
  let g: String
  let htmlCode: String
  let closestPaletteColorHtmlCode: String
  
  private enum CodingKeys: String, CodingKey {
    case percent
    case b
    case r
    case closestPaletteColor = "closest_palette_color"
    case closestPaletteColorParent = "closest_palette_color_parent"
    case closestPaletteDistance = "closest_palette_distance"
    case g
    case htmlCode = "html_code"
    case closestPaletteColorHtmlCode = "closest_palette_color_html_code"
  }
}

