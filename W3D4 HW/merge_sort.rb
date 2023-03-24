class Array 
    def self.merge(left, right)
        merged = []
        until left.empty? || right.empty?
            if left.first < right.first
                merged << left.shift
            else
                merged << right.shift 
            end
        end
        merged + left + right
    end

    def merge_sort
        return self if self.length <= 1
        mid = self.length / 2
        left = self[0...mid]
        right = self[mid..-1]
        l_sort = left.merge_sort
        r_sort = right.merge_sort
        Array.merge(l_sort, r_sort)
    end
end

arr = [2,1,3,6,4,5,7,8,9]
p arr.merge_sort