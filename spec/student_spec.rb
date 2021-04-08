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
  
end
