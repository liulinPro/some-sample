package main

import "fmt"

func BubbleSort(slice []int) {
	for i := 0; i < len(slice); i++ {
		for j := 0; j < len(slice)-1; j++ {
			if slice[i] > slice[j] {
				a := slice[j]
				slice[j] = slice[i]
				slice[i] = a
			}
		}
	}
}

func main() {
	arr := []int{5, 2, 1}
	InsertSort(arr)
	fmt.Println(arr)
}
func InsertSort(slice []int) {
	for i := 1; i < len(slice); i++ {
		current := slice[i]
		before := i - 1
		for before >= 0 && current < slice[before] {
			slice[before+1] = slice[before]
			before--
		}
		slice[before+1] = current
	}
}
