require File.expand_path('../../lib/hash_brown', __FILE__)

describe HashBrown do
  let(:hash) {{ :key_sym => 'sym_val',
                'key_str' => 'str_val' }}

  describe 'expected behavior' do
    it 'preserves original behavior' do
      hash[:key_sym].should == 'sym_val'
      hash['key_str'].should == 'str_val'
    end

    context 'given no block' do

      it 'raises a NoMethodError for an invalid key' do
        lambda { hash.bogus_val }.should raise_error(NoMethodError)
      end

      it 'respects the default value' do
        hash[:bogus_val].should be_nil
      end
    end

    context 'given a default non-nil value' do
      before { hash.default = 'default' }

      it 'raises a NoMethodError for an invalid key' do
        lambda { hash.bogus_val }.should raise_error(NoMethodError)
      end

      it 'respects the default value' do
        hash[:bogus_val].should == 'default'
      end
    end
  end

  describe 'new behavior' do
    describe 'methodized accessors' do
      describe 'reader' do

        it 'accesses by symbol' do
          hash.key_sym.should == 'sym_val'
        end

        it 'accesses by string' do
          hash.key_str.should == 'str_val'
        end

        context 'given comparable symbol and string keys' do

          it 'accesses by symbol' do
            hash['key_sym'] = 'unreachable'

            hash.key_sym.should == hash[:key_sym]
            hash.key_sym.should_not == hash['key_sym']
          end
        end
      end

      context 'writer' do

        xit 'assigns a symbol' do
          hash.key_sym = 'new_val'
          hash.key_sym.should == 'new_val'
        end

        xit 'assigns a string' do
          hash.key_str = 'new_val'
          hash.key_str.should == 'new_val'
        end
      end
    end
  end
end
