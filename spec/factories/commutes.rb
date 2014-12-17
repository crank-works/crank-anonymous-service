require 'factory_girl_rails'

FactoryGirl.define do
  factory :commute, :class => 'Commute' do
    start_time 1
    end_time 1
    objective "MyString"
    latitude_high 1.5
    latitude_low 1.5
    longitude_high 1.5
    longitude_low 1.5
    distance 1.5
  end

end
