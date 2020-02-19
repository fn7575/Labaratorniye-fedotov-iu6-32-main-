# frozen_string_literal: true

def computation(accuracy)
  mas_p = [1.0, 2.0]
  mas_q = [1.0, 1.0]
  k = 1
  number = 1.618033989
  number_for_comparing = number / accuracy
  begin
    k += 1
    new_p = 1 * mas_p[k - 1] + 1 * mas_p[k - 2]
    new_q = 1 * mas_q[k - 1] + 1 * mas_q[k - 2]
    mas_p.push(new_p)
    mas_q.push(new_q)
    new_number = new_p / new_q
    puts "Итерация номер № #{k}"
    puts new_number
  end while number_for_comparing.to_s.split('.')[0] != (new_number / accuracy).to_s.split('.')[0]
  new_number
end
