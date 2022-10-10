require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')

        expect(task.laundry?).to be(true)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'Brush my teeth', description: 'hygine')

        expect(task.laundry?).to be(false)
      end

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'fold my laundry', description: 'organize')

        expect(task.laundry?).to be(true)
      end 

      it 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title: 'Fold My Laundry', description: 'Organize')

        expect(task.laundry?).to be(true)
      end 

      it 'returns true when the description contains the word laundry' do 
        task = Task.create!(title: 'Clean my clothes', description: 'laundry mat')

        expect(task.laundry?).to be(true)
      end

      it 'is case insensitive when checking if the description contains the word laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'Laundry Mat')

        expect(task.laundry?).to be(true)
      end
    end
  end
end
