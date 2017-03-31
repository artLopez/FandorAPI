require 'rails_helper'
require 'support/factory_girl'
require 'factories'

describe Film, type: :model do
  describe 'sort films' do
    let(:film1) { create(:film, year: 1995) }
    let(:film2) { create(:film, year: 2040) }

    it 'checks sorting method for years' do
      expect(Film.all).to eq([film1, film2])
      expect(Film.recent).to eq([film2, film1])
    end
  end

  describe 'filter film by' do
    context '.search_by_title' do
      let(:film1) { create(:film, title: 'All About Fandor') }
      let(:film2) { create(:film, title: 'Zee and Bee Go Skiiing') }

      it 'film doesn\'t exist' do
        expect(Film.search_by_title('Doesn\'t exist')).to eq([])
      end

      it 'films exist' do
        expect(Film.search_by_title('About Fandor')).to eq([film1])
        expect(Film.search_by_title('Ze')).to eq([film2])
      end
    end

    context 'year' do
      before(:each) do
        create(:film, year: 1995)
        create(:film, year: 2040)
      end

      it '.before_year' do
        expect(Film.before_year(2040).count).to eq(1)
      end

      it '.after_year' do
        expect(Film.after_year(1995).count).to eq(1)
      end

      it '.between_years' do
        expect(Film.between_years(1995, 2050).count).to eq(2)
      end
    end
  end

  describe 'average_rating' do
    before(:each) do
      @film = create(:film)
      create(:rating, rating: 3)
      create(:rating, rating: 2)
    end

    it 'rating is 2.5' do
      expect(@film.average_rating).to eq(2.5)
    end
  end
end
