def prime?(n)
      if n <= 1
         return false
      else if n <= 3
         return true
      else if n % 2 == 0 || n % 3 == 0
         return false
      i = 5
      while i * i <= n
         if n % i == 0 or n % (i + 2) == 0
             return false
         i = i + 6
        end
      end
      return true
end
