def bubble_sort(arr)
    (arr.length - 1).times do
        for j in 0..(arr.length-2)
            if (arr[j] > arr[j+1])
                temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            end
        end
    end
end

test_arr = [4,3,78,2,0,2]
p test_arr
bubble_sort(test_arr)
p test_arr


/ Second solution /

def bubble_sort_by(arr)
    (arr.length - 1).times do
        for j in 0..(arr.length-2)
            number = yield(arr[j], arr[j+1])
            if(number > 0)
                temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            end
        end
    end
end

bubble_sort_by(test_arr) do |cur, nex| 
    cur - nex
end

p test_arr