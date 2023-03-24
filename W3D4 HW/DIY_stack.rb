class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end
  
    def push(el)
      # adds an element to the stack
      @stack.push(el)
    end
  
    def pop
      # removes one element from the stack
      @stack.pop  
    end
  
    def peek
      # returns, but doesn't remove, the top element in the stack
      return @stack[-1]
    end
  end

  class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end
  end