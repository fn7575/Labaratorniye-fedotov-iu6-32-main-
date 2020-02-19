# frozen_string_literal: true

def function(k)
  @new_p = 1 * @mas_p[k - 1] + 1 * @mas_p[k - 2]
  @new_q = 1 * @mas_q[k - 1] + 1 * @mas_q[k - 2]
  @mas_p.push(@new_p)
  @mas_q.push(@new_q)
  @new_number = @new_p / @new_q
end

def func(accuracy)
  @mas_p = [1.0, 2.0]
  @mas_q = [1.0, 1.0]
  k = 1
  @number = 1.618033989
  @number_for_comparing = @number / accuracy
  e = Enumerator.new do |yielder|
    loop do
      new_number = yield(k += 1)
      yielder.yield new_number, k
    end
  end

  e.find { |y, _n| @number_for_comparing.to_s.split('.')[0] == (y / accuracy).to_s.split('.')[0] }
end
