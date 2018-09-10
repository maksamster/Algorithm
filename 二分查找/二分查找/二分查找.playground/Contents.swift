

import Foundation

func binarySearch <T: Comparable>(_ list: [T], item: T) -> Int? {
    
    var low = 0
    var high = list.count - 1
    while low <= high {
        let mid = (low + high) / 2
        let result = list[mid];
        if result == item {
            return mid;
        }
        if result < item {
            low = mid + 1
        }else {
            high = mid - 1
        }
    }
    return nil;
}

let array = [1,3,4,5,7,8,9,10,12];
print(binarySearch(array, item: 2) ?? "Not Found");
print(binarySearch(array, item: 9) ?? "Not Found");

