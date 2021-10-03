def bubble_sort(array)
    counter=0
    (array.size-1).times do
        array.each_index do |index|
            if index>0 && index<=array.size-counter
                if array[index]<array[index-1]
                    number=array[index-1]
                    array[index-1]=array[index]
                    array[index]=number
                end
            end
        end
        counter+=1
        p array
    end
end
bubble_sort([4,3,78,2,0,2])