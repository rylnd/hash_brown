require 'hash_brown/version'

class Hash
  def method_missing meth, *args, &block
    if meth[-1] == '='
      key = meth[0..-2]
      return self[key] = args[0] if key? key
      return self[key.to_sym] = args[0]
    else
      return self[meth] if key? meth
      return self[meth.to_s] if key? meth.to_s
      super
    end
  end
end
