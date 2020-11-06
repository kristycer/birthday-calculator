class User
    attr_reader :date, :today, :name, :date_of_birth

    def initialize(date, today = DateTime.now)
        date = DateTime.strptime(date, '%Y-%m-%d')
        @today = today
        @date = Date.new(@today.year, date.month, date.day)
        @date = @date.next_year if @date < @today
        @name = 'Cleopatra'
        @date_of_birth = 2000
    end 

  def age
      "You are #{(@today.year - @date_of_birth).to_i} years old."

  end 

  def next_birthday
      "There are #{(@date - @today).to_i} days left until your birthday, #{@name}"
	end
end 




