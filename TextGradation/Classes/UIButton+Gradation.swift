//Copyright (c) 2018 pikachu987 <pikachu77769@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

import UIKit

public extension UIButton {
    @discardableResult
    func gradation(_ orientation: GradationOrientation, startColor: UIColor, endColor: UIColor, progress: CGFloat) -> Bool {
        let count = 20
        var colors = [CGColor]()
        
        for element in 0 ..< count {
            if Int(round(progress * CGFloat(count))) > element {
                colors.append(startColor.cgColor)
            } else {
                colors.append(endColor.cgColor)
            }
        }
        return self.gradation(orientation, colors: colors)
    }
    
    @discardableResult
    func gradation(_ orientation: GradationOrientation, colors: [UIColor]) -> Bool {
        return self.gradation(orientation, colors: colors.map({ $0.cgColor }))
    }
    
    @discardableResult
    func gradation(_ orientation: GradationOrientation, colors: [CGColor]) -> Bool {
        let textSize = (self.currentTitle ?? "").size(withAttributes: [NSAttributedString.Key.font : self.titleLabel?.font ?? UIFont.systemFont(ofSize: 17)])
        let width = self.bounds.width < textSize.width ? self.bounds.width : textSize.width
        let labelHeight = self.height(width)
        let height = self.bounds.height < labelHeight ? self.bounds.height : labelHeight
        let size = CGSize(width: width, height: height)
        
        guard let image = colors.gradation(orientation, size: size) else { return false }
        self.setTitleColor(UIColor(patternImage: image), for: .normal)
        return true
    }
    
    @discardableResult
    func gradation(_ orientation: GradationOrientation, colors: UIColor...) -> Bool {
        return self.gradation(orientation, colors: colors.map({ $0.cgColor }))
    }
    
    private func height(_ width: CGFloat) -> CGFloat {
        let button =  UIButton(frame: CGRect(x: 0, y: 0, width: width, height: .greatestFiniteMagnitude))
        button.titleLabel?.numberOfLines = 0
        button.setTitle(self.currentTitle, for: .normal)
        button.titleLabel?.font = self.titleLabel?.font
        button.sizeToFit()
        return button.frame.height
    }
}
