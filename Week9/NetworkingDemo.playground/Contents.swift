import UIKit

var greeting = "Hello, playground"


// Without concurrency

func fetchImages() -> ([Data]?, Error?){
    // .. perform data request
}

func onPageLoad() {
    // Main Thread
    // #1

    // #2
    // Long running task
    let images = fetchImages()

    // #3
    // Use image after
}



















func fetchImages(completion: ([Data]?, Error?) -> Void) {
    // .. perform data request
    // Move it to background thread
}


// Calling method
func onPageLoad () {

    //
    // Main Thread
    // #1

    // Fire function
    fetchImages(completion: { images, error in
        // Execute code in response to completion
        // #3
    })

    // Move on the next function
    // #2

}
