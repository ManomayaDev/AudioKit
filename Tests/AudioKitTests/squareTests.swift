// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

import AudioKit

class SquareTests: AKTestCase2 {

    let square = AKOperationGenerator { AKOperation.square() }

    override func setUp() {
        afterStart = { self.square.start() }
        duration = 1.0
    }

    func testDefault() {
        output = square
        AKTest()
    }

}
