import UIKit

var greeting = "Hello, playground"

var Str = "100102120"

func bubbleSort(Arr: [Int]){
    var DataArr = Arr
    for i in 0..<DataArr.count {
        for j in 0..<(DataArr.count - i - 1) {
            if DataArr[j] > DataArr[j + 1] {
                let temp = DataArr[j]
                DataArr[j] = DataArr[j + 1]
                DataArr[j + 1] = temp
            }
        }
    }
    print(DataArr)
}

func CountData(str:String) {
    let data =  str.filter{($0 != "0") }.compactMap({Int(String(describing: $0 ))})
    print(data)
}

func convertStrArr(IntStr:Int) {
    let data  = "\(IntStr)"
    print(data.filter({$0 != "0"}).map({$0}).sorted(by: <))
}
    
func getPrimeNumber(Number:[Int]) {
    var data = [Int]()
    for i in 0..<Number.count {
        if  (1...Number[i]).filter({Number[i] % $0 == 0}).count <= 2 {
            data.append(Number[i])
        }
    }
    print(data)
}

func removeDuplicate(NArr:[Int]){
    let data  = Set<Int>(NArr).sorted(by: <)
    print(data)
}

func findMissingNumber(nArr:[Int]) {
    var sortedArr = nArr.sorted(by: <)
    var newArr = [Int]()
    
    for i in stride(from: 0, to: sortedArr.count - 1, by: 1) {
        if (sortedArr[i + 1] - sortedArr[i] != 1) {
            var rangeLeft = sortedArr[i + 1] - sortedArr[i]
            var newi = 1
            for k in newi..<rangeLeft {
                newi = k
                newArr.append(sortedArr[i] + k)
            }
        }
    }
   
    print(newArr)
}

func plusTwoArr(oneArr:[Int],secondArr:[Int]){
    let count = max(oneArr.count, secondArr.count)
    var newArr:[Int] = []
    for i in 0..<count {
        let one = (oneArr.count > i) ? oneArr[i] : 0
        let two = (secondArr.count > i) ? secondArr[i] : 0
        newArr.append(abs(one+two))
    }
//    let zipped = zip(oneArr, secondArr).map(+)
//    let result = zipped.map(+)
    print(newArr)
}

func subsetIndex(arr:[Int],arr2:[Int]) {
    var newarr = [Int]()
    for i in 0..<arr2.count {
        if let data = arr.firstIndex(of: arr2[i]) {
            newarr.append(data)
        }
        //this is also works but upper code is easy
//        for j in 0..<arr2.count {
//            if arr[i] == arr2[j] {
//                newarr.append(i)
//            }
//        }
    }
    print(newarr)
}

func findOutHiehgtSum(arr:[Int]){
    var data = arr.reduce(0, +)
    let sorted = arr.sorted()
    data = data - (sorted.first ?? 0)
    print(data)
}

//bubbleSort(Arr: [1,5,3,2,4])
//
//CountData(str: "910002130051003")
//
//convertStrArr(IntStr: 000185005549066500)
//
//getPrimeNumber(Number: [5,2,4,8,7,9,10,12,15,17,11,19,23,84,89,31])

//removeDuplicate(NArr: [0,1,2,2,1,3,4,5])
findMissingNumber(nArr: [5,17,1,2,3,4,9,11])

//plusTwoArr(oneArr: [-1,0,2,5], secondArr: [-2,5,10,16,20])
//subsetIndex(arr: [1,2,3,4,5], arr2: [3,5])
//findOutHiehgtSum(arr: [9,2,5,6,3])
 
