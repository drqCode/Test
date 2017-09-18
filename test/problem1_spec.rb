
require 'rspec'
require '../src/problem1'

describe Problem1 do
  describe '.sum_of_even_numbers' do
    context 'when is null array' do
      it 'returns 0' do
        expect(Problem1.sum_of_even_numbers(nil)).to eql(0)
      end
    end
    context 'when empty array' do
      it 'returns 0' do
        expect(Problem1.sum_of_even_numbers([])).to eql(0)
      end
    end
    context 'when non-empty array' do
      context 'without even numbers' do
        it 'returns 0' do
          expect(Problem1.sum_of_even_numbers([3, 5, 13, 21])).to eql(0)
        end
      end
      context 'with even numbers' do
        context 'with 2, 4, 6 as even numbers' do
          it 'returns 12' do
            expect(Problem1.sum_of_even_numbers([2, 1, 4, 6, 7])).to eql(12)
          end
        end
        context 'with 0, -2, 8, -6 as even numbers' do
          it 'returns 0' do
            expect(Problem1.sum_of_even_numbers([0, -2, 3, 8, -6, 233])).to eql(0)
          end
        end
      end
    end
  end
end
