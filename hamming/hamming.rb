# Compute Hamming distance for unmatched chars..
class Hamming

  def self.compute(ip_str1,ip_str2)
    @ip_str1 = ip_str1
    @ip_str2 = ip_str2
    raise ArgumentError if @ip_str1.length != @ip_str2.length
    @ip_str1.chars.zip(@ip_str2.chars).count { |s_char| s_char[0] != s_char[1]}
  end
end
