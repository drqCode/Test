
require 'rspec'
require '../src/problem2'

describe Problem2 do
  describe '.largest_two_of' do
    context 'when is null array' do
      it 'returns nil' do
        expect(Problem2.largest_two_of(nil)).to eql(nil)
      end
    end
    context 'when empty array' do
      it 'returns nil' do
        expect(Problem2.largest_two_of([])).to eql(nil)
      end
    end
    context 'when is non-empty array' do
      context 'with 1 element' do
        it 'returns the element as array' do
          expect(Problem2.largest_two_of([-7])).to match_array([-7])
        end
      end
      context 'with 2 elements' do
        it 'returns the elements' do
          expect(Problem2.largest_two_of([-7, 0])).to match_array([-7, 0])
        end
      end
      context 'with > 2 elements' do
        context 'with duplicates' do
          it 'returns the numbers despite their duplicity' do
            expect(Problem2.largest_two_of([-3, 0, 0, 3, 3])).to match_array([3, 3])
          end
        end
        context 'without duplicates' do
          it 'returns the numbers' do
            expect(Problem2.largest_two_of([1, -10, 0, -1])).to match_array([0, 1])
          end
        end
      end
    end
  end
end