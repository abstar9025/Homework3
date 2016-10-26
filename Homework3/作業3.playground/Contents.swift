//算全部格子的總和
func sum(start:Int,end:Int) -> Int{
    var sum1 = start
    var sum2 = 0
    for i in start...end where sum1 <= end {
        sum2 = sum2 + (sum1*i)*i
        sum1 = sum1 + 1
    }
    return sum2
}
sum(start: 1, end: 7)

//奇數行的數字總和
func sum2(start:Int,end:Int) -> Int {
    var sum = 0
    for a in start...end where a%2 == 1 {
        for b in start...end {
            sum = sum + a * b
        }
    }
    return sum
}
sum2(start: 1, end: 7)

//所有格子的總和 除了列數>=行數的格子
func sum3(start:Int,end:Int) -> Int{
    var sum = 0
    for a in start...end{
        for b in start...end{
            if a > b{
                sum = sum + a * b
            }
        }
    }
    return sum
}
sum3(start: 1, end: 7)

/*定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果  比方起始值3，最大值98，決定數字倍數的number為5時，(只包含5的倍數)  運算結果為 5 + 10 + 15 + ..... + 95*/
func sum4(start:Int,end:Int,multiple:Int) -> Int {
    var sum = 0
    for i in start...end{
        if i % multiple == 0 {
            sum = sum + i
        }
    }
    return sum
}
sum4(start: 3, end: 98,multiple: 5)

/*定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果  比方起始值3，最大值11，決定數字倍數的number為5時，(不包含5的倍數)  運算結果為 3 + 4 + 6 + 7 + 8 + 9 + 11*/
func sum5(start:Int,end:Int,multiple:Int) -> Int {
    var sum = 0
    for i in start...end{
        if i % multiple != 0 {
            sum = sum + i        }
    }
    return sum
}
sum5(start: 3, end: 11,multiple: 5)

//奇數行的數字總合, 定義function，接受2個參數，分別代表行數和列數

func sum6(row:Int,col:Int) -> Int{
    var sum = 0
    for a in 1...row where a % 2 == 1 {
        for b in 1...col{     
            sum = sum + a * b
        }
    }
    return sum
}
sum6(row: 7, col: 7)

//所有格子的總合，除了列數>=行數的格子, 定義function，接受2個參數，分別代表行數和列數
func sum7(row:Int,col:Int) -> Int{
    var sum = 0
    for a in 1...row{
        for b in 1...col{
            if a > b{
                sum = sum + a * b
            }
        }
    }
    return sum
}
sum7(row: 7, col: 7)

//定義一個function，接受一個參數代表華式溫度 ， 回到攝式溫度
//攝氏 = (華氏-32)*5/9

func temperature(fahrenheit:Float) -> Float{
    var celsius:Float = 0
    celsius = (fahrenheit - 32) * 5 / 9
    return celsius
}
temperature(fahrenheit: 100)
