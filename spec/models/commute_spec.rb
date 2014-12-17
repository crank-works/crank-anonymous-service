require 'rails_helper'


RSpec.describe Commute, :type => :model do
  describe 'factory is valid' do
    subject(:trip) { FactoryGirl.create(:commute) }

    it { is_expected.to be_valid }
    it { expect(subject.start_time).to equal(1) }

    context "trip" do
      subject { trip.start_time }
      it { is_expected.to equal(1) }
    end
  end

  describe 'model' do
    before { FactoryGirl.create(:commute) }
    it { expect(Commute.count).to equal(1) }
  end
end
