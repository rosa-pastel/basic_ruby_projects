def bubble_sort(array)
    array.size.times do
        array.each_index do |index|
            if index>0
                if array[index]<array[index-1]
                    number=array[index-1]
                    array[index-1]=array[index]
                    array[index]=number
                end
            end
        end
    end
    p array
end
bubble_sort([4,3,78,2,0,2])