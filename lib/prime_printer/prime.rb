module PrimePrinter
  # Handles prime number calculations
  class Prime

    # CLASS METHODS
    class << self

      # Returns array of @n first prime numbers
      def getPrimes n
        @primes ||= [2]
        if n == 0
          []
        else
          # if we have already calculated required primes, just return subset
          if @primes.size >= n
            @primes[0..n-1]
          else
            calculate_primes n
            @primes
          end
        end
      end

      private

      def calculate_primes n
        prime_candidate = @primes.last
        while @primes.size < n
          prime_candidate += 1
          @primes << prime_candidate if is_prime? prime_candidate
        end
      end

      # This method looks for primes greater then once already in prime array
      def is_prime? number
        @primes.each do | prime|
          return false if number % prime == 0
        end
        true
      end
    end
  end
end
