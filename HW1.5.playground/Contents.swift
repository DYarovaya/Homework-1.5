import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let gamesResult: Dictionary = ["Салават Юлаев": ["3:6", "5:5", "N/A"],
                               "Авангард": ["2:1"],
                               "АкБарс": ["3:3", "1:2"]]

for game in gamesResult {
    for value in game.value {
        print("Игра с \(game.key) - \(value)")
    }
}
/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. Вызовите функцию и передайте в неё кошелек с деньгами. В кошельке могут храниться купюры различного достоинства от 50 до 5000 рублей.
 */
let wallet = [100, 2000, 2000, 1000, 50, 100, 500, 500]

func calculateTotalSum (_ wallet: Array<Int>) {
    var sum = 0
    for banknote in wallet {
        sum += banknote
    }
    print(sum)
}

calculateTotalSum(wallet)
/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
func isNumEven (num: Int) -> Bool {
    num % 2 == 0 ? true : false
}
/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/
func isDevidedByThree (num: Int) -> Bool {
    num % 3 == 0 ? true : false
}
/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложить задание, то можете возвращать несортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответсвовать количеству элементов заданного интервала.
 */
//простая версия решения
func createArray (firstNum: Int, secondNum: Int) -> [Int] {
    var array: [Int] = []
    for counter in firstNum...secondNum {
        array.append(counter)
    }
   return array
}
/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
let array = createArray(firstNum: 1, secondNum: 100)
/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива и отфильтруйте при помощи неё массив из задания **3.4**. Функция должна возвращать новый массив без четных чисел или без чисел, кратных трем. Для определения фильтруемых значений используейте ранее созданные функции из заданий **3.1** и **3.2**.
 */
func filterArray (array: [Int], closure: (Int) -> Bool) -> [Int] {
    var newArray: [Int] = []
    for number in array {
        if !closure(number) {
            newArray.append(number)
        }
    }
    return newArray
}

let oddArray = filterArray(array: array, closure: isNumEven)
let anotherArray = filterArray(array: array, closure: isDevidedByThree)

print("Массив без четных чисел: \(oddArray)")
print("Массив без чисел, кратных трем: \(anotherArray)")
