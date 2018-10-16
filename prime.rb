require 'pry'
require 'benchmark'
def prime?(n)
      if n <= 1
         return false
      elsif n <= 3
         return true
      elsif n % 2 == 0 || n % 3 == 0
         return false
      end
      i = 5
      while i * i <= n
         if n % i == 0 || n % (i + 2) == 0
             return false
         i = i + 1
        end
      end
      return true
end
puts Benchmark.measure(prime?(11))
