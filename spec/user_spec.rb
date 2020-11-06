require 'user'
require 'timecop'

describe User do
  context "gives a correct amount of time left until next birthday" do

    let(:date_of_birth) { User.new("2000-01-10") }

    before(:each) { Timecop.freeze(Time.local(2020, 1, 1)) }

    it "prints how many days days are left until next birthday" do
      expect(date_of_birth.next_birthday).to eq  "There are 9 days left until your birthday, Cleopatra"
    end

  context "gives a correct amount of time left until next birthday" do

    let(:date_of_birth) { User.new("2000-03-10") }

    before(:each) { Timecop.freeze(Time.local(2020, 1, 10)) }

    it "prints how many days days are left until next birthday" do
      expect(date_of_birth.next_birthday).to eq  "There are 60 days left until your birthday, Cleopatra"
    end
  end
end 
   context "gives a correct age" do

    let(:date_of_birth) { User.new("2000-01-10") }
  

    before(:each) { Timecop.freeze(Time.local(2020, 1, 10)) }

    it "prints the age of the user" do
      expect(date_of_birth.age).to eq  "You are 20 years old."
    end

  end
end
