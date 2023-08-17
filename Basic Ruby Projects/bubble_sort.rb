def bubble_sort(array)
    aux = 0
    for x in 0...array.length do 
        for y in x+1...array.length do 
            if(array[x] > array[y])
                aux = array[x]
                array[x] = array[y]
                array[y] = aux
            end 
        end 
    end  
    array
end 

array = [11,30,5,50,100,-5,29] 

bubble_sort(array)
# => [-5, 5, 11, 29, 30, 50, 100]
