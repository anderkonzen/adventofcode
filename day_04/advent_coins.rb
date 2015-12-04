require 'digest'

class AdventCoins
  SAFETY_THRESHOLD = 10_000_000

  def self.lowest_positive_number(input, pattern, threshold = SAFETY_THRESHOLD)
    (1..threshold).each do |number|
      return number unless Digest::MD5.hexdigest("#{input}#{number}").match(pattern).nil?
    end
    0
  end
end
