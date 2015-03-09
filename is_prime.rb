# Identify if a number is a prime or not
# using practical methods

def prime(n)
  if n.is_a? Integer
    is_prime = true
    for i in 2...n
      if n % i == 0 
        is_prime = false
      end
    end
    if is_prime
      puts "#{n} is prime"
    else
      puts "#{n} isn't a prime"
    end
  else
    puts "#{n} isn't a int. number"
  end
end

prime 1
prime 56
prime 97
prime 5
prime 9
