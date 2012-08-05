require "spec_helper"

describe DataAnon::Strategy::Field::RandomSelection do

  RandomSelection = DataAnon::Strategy::Field::RandomSelection
  let(:field) { DataAnon::Core::Field.new('state', 'New Delhi', 1, nil) }

  describe 'more than one values in predefined list' do

    let(:states) { ['Maharashtra','Gujrat','Karnataka'] }
    let(:anonymized_value) { RandomSelection.new(states).anonymize(field) }

    it { states.should include(anonymized_value) }

  end

  describe 'only one value in list' do

    let(:states) { ['Maharashtra'] }
    let(:anonymized_value) { RandomSelection.new(states).anonymize(field) }

    it { anonymized_value.should == 'Maharashtra' }

  end

  describe 'string value' do

    let(:states) { 'Maharashtra' }
    let(:anonymized_value) { RandomSelection.new(states).anonymize(field) }

    it { anonymized_value.should == 'Maharashtra' }

  end


end