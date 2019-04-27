# Raindrops check for factors and output the  msg...
class Raindrops
  def self.convert(n)
    res = ''
    res += 'Pling' if n.modulo(3).zero?
    res += 'Plang' if n.modulo(5).zero?
    res += 'Plong' if n.modulo(7).zero?
    res = n.to_s if res.empty?
    res
  end
end
