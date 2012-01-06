require 'hash_brown/version'

class Hash
  def method_missing meth, *args, &block
    return self[meth] if key? meth
    return self[meth.to_s] if key? meth.to_s
    super
  end
end
