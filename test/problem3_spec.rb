
require 'rspec'
require '../src/problem3'

describe Problem3 do
  describe '.duplicates?' do
    context 'when is null array' do
      it 'returns false' do
        expect(Problem3.duplicates?(nil)).to be false
      end
    end
    context 'when empty array' do
      it 'returns false' do
        expect(Problem3.duplicates?([])).to be false
      end
    end
    context 'when is non-empty array' do
      context 'with one element' do
        it 'returns false' do
          expect(Problem3.duplicates?([0])).to be false
        end
      end
      context 'with > 1 elements' do
        context 'with no duplicates' do
          it 'returns false' do
            expect(Problem3.duplicates?([3, 2, 1])).to be false
          end
        end
        context 'with duplicates' do
          context 'with some values equal with their index' do
            it 'returns true' do
              expect(Problem3.duplicates?([1, 2, 2, 1])).to be true
            end
          end
          it 'returns true' do
            expect(Problem3.duplicates?([2, 2, 3, 1])).to be true
          end
        end
      end
    end
  end
end