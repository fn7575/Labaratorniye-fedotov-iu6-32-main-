# frozen_string_literal: true

class IntArray
  def initialize(arr)
    @array = arr
  end

  attr_reader :array

  def change_arr
    @array = @array.map.with_index { |item, index| item = [item.to_i, index] }.sort { |a, b| a[0] <=> b[0] }
  end

  def print
    @array.values_at(* @array.each_index.select(&:odd?)).each { |elem| p "Индекс #{elem[1]} Элемент #{elem[0]}" }
    @array.values_at(* @array.each_index.select(&:even?)).each { |elem| p "Индекс #{elem[1]} Элемент #{elem[0]}" }
  end
  end
