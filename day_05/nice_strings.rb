class String
  def nice?
    has_vowels? && has_repeated_letters? && !has_forbidden_groups?
  end

  def naughty?
    !nice?
  end

  private

  def has_vowels?
    self.scan(/[aeiou]/).size >= 3
  end

  def has_repeated_letters?
    self.scan(/([a-z]{1})\1/).size >= 1
  end

  def has_forbidden_groups?
    self.scan(/ab|cd|pq|xy/).size >= 1
  end
end
