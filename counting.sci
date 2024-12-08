function sortedArray = countingSort(array)
    maxVal = max(array); 
    minVal = min(array); 
    range = maxVal - minVal + 1;
    
    count = zeros(1, range);
    output = zeros(1, length(array)); 
    
    for i = 1:length(array)
        count(array(i) - minVal + 1) = count(array(i) - minVal + 1) + 1;
    end
    
    for i = 2:range
        count(i) = count(i) + count(i - 1); 
    end
    
    for i = length(array):-1:1
        output(count(array(i) - minVal + 1)) = array(i);
        count(array(i) - minVal + 1) = count(array(i) - minVal + 1) - 1;
    end
    
    sortedArray = output;
end

array = [4, 2, 2, 8, 3, 3, 1];
disp("Original Array: "), disp(array);
sortedArray = countingSort(array);
disp("Sorted Array: "), disp(sortedArray);