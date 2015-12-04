require 'digest'

class AdventCoins
  def self.lowest_positive_number(input, zeros)
    (0..Float::INFINITY).each do |number|
      return number if Digest::MD5.hexdigest(input + number.to_s).start_with?('0' * zeros)
    end
  end
end
