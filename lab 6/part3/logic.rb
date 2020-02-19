# frozen_string_literal: true

class Integral
  def initialize(n)
    @n = n
  end

  def intprg(a, b, lambda_x = nil)
    b_a_n = (b - a).to_f / @n.to_f

    res = 0
    if lambda_x.nil?

      (a..b).step(b_a_n).each do |i|
        res += yield(i)
      end
      res *= b_a_n
    else
      (a..b).step(b_a_n).each do |i|
        res += lambda_x.call(i)
      end
      res *= b_a_n
    end
    res
  end

  def b_integral
    puts 'Блок'
    block_1 = intprg(0, 1) { |x| Math.exp(x) / (x + 1) }
    puts "Значение интеграла функции exp(x)/(x+1)  = #{block_1}"
    block_2 = intprg(0, 2) { |x| x * (x - 1) }
    puts "Значение интеграла функции x*(x-1)  = #{block_2}"
  end

  def l_integral
    puts 'Lambda'
    lam_1 = ->(x) { Math.exp(x) / (x + 1) }
    lam_cos = intprg(0, 1, lam_1)
    puts "Значение интеграла функции exp(x)/(x+1)  = #{lam_cos}"
    lam_2 = ->(x) { x * (x - 1) }
    lam_tg = intprg(0, 2, lam_2)
    puts "Значение интеграла функции x*(x-1)  = #{lam_tg}"
  end
end
