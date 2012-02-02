class Integer
  def fibonacci
    f2 = 1
    f1 = 0
    fn = 0
    if self > 0
      fn = (1..self).inject do |result, index|
        result = result + f1
        f1 = f2
        f2 = result
      end
    end

    fn
  end

  def closest_fibonacc
    old_fibonacci = 0

    catch :done do
      (1..self).each do |index|
        actual_fibonacci = index.fibonacci
        throw :done if self < actual_fibonacci
        old_fibonacci = actual_fibonacci
      end
    end

    old_fibonacci
  end
end