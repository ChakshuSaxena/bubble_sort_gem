# frozen_string_literal: true

require_relative "bubble_sort/version"

module BubbleSort
  class Error < StandardError; end
  def self.bubble_sort(array)
    n = array.length
    for i in 0..n-1
      for j in 0..n-i-2
        if array[j] > array[j+1]
          # तत्वों को स्वाप करें
          temp = array[j]
          array[j] = array[j+1]
          array[j+1] = temp
        end
      end
    end
    return array
  end
end
