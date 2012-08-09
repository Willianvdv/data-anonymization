require "spec_helper"

describe DataAnon::Strategy::Field::RandomLastName do

  RandomLastName = DataAnon::Strategy::Field::RandomLastName
  let(:field) {DataAnon::Core::Field.new('lastname','fakeLastName',1,nil)}

  describe 'anonymized name must not be the same as provided name' do
    let(:anonymized_value) {RandomLastName.new().anonymize(field.value)}

    it {anonymized_value.should_not equal field.value}
  end

end