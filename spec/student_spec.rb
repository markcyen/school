require 'rspec'
require './lib/student'

RSpec.describe Student do
  context '#initialize' do
    it 'exists' do
      student = Student.new({name: "Morgan", age: 21})
      expect(student).to be_instance_of(Student)
    end

    it 'checks for student name and age' do
      student = Student.new({name: "Morgan", age: 21})
      expect(student.name).to eq("Morgan")
      expect(student.age).to eq(21)
    end
  end

  context 'check for scores' do
    it '#scores is empty' do
      student = Student.new({name: "Morgan", age: 21})
      expect(student.scores).to eq([])
    end

    it '#log_scores into array' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_scores(89)
      student.log_scores(78)
      expect(student.scores).to eq([89, 78])
    end

    it '#grade as average of scores' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_scores(89)
      student.log_scores(78)
      expect(student.grade).to eq(83.5)
    end
  end

end
