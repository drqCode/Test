
require 'rspec'
require '../src/problem3'

describe Problem3 do
  describe '.hasDuplicates' do
    context 'when is null array' do
      it 'returns false' do
        expect(Problem3.has_duplicates(nil)).to be false
      end
    end
    context 'when empty array' do
      it 'returns false' do
        expect(Problem3.has_duplicates([])).to be false
      end
    end
    context 'when is non-empty array' do
      context 'with one element' do
        it 'returns false' do
          expect(Problem3.has_duplicates([1])).to be false
        end
      end
      context 'with > 1 elements' do
        context 'with no duplicates' do
          it 'returns false' do
            expect(Problem3.has_duplicates([2, 3, 1])).to be false
          end
        end
        context 'with duplicates' do
          it 'returns true' do
            expect(Problem3.has_duplicates([2, 2, 4, 1])).to be true
          end
        end
      end
    end
  end
end