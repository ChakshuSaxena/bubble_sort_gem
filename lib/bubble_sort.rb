# frozen_string_literal: true

require_relative "bubble_sort/version"

module BubbleSort
  class Error < StandardError; end
  def self.bubble_sort(array)
    n = array.length
    for k in 1..n-1
      for i in 0..n-2
        if array[i] > array[i+1]
          temp = array[i]
          array[i] = array[i+1]
          array[i+1] = temp
        end
      end
    end
    return array
  end
end
