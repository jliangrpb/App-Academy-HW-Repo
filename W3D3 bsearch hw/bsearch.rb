class Array 
    def bsearch(target)
        return nil if self.length == 0
        idx = self.length / 2
        if self[idx] == target 
            return idx 
        end
        left = self[0...idx]
        right = self[(idx + 1)..-1]
        if target > self[idx]
            result = right.bsearch(target)
            return nil if result.nil?
            result + idx + 1
        elsif target < self[idx]
            left.bsearch(target)
        end
    end
end

p [1,2,3,4,5,6,7,8,9].bsearch(9)