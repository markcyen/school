require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  context '#initialize' do
    it 'exists' do
      course = Course.new("Calculus", 2)
      expect(course).to be_instance_of(Course)
    end

    it 'names the course and capacity' do
      course = Course.new("Calculus", 2)
      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
    end
  end

  context 'check for students and capacity level' do
    it '#students' do
      course = Course.new("Calculus", 2)
      expect(course.students).to eq([])
    end

    it '#full? course capacity as default false' do
      course = Course.new("Calculus", 2)
      expect(course.full?).to eq(false)
    end
  end

  context 'entroll students and check capacity level as true' do
    it '#enroll a couple students' do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)
      expected = [student1, student2]
      expect(course.students).to eq(expected)
    end

    it '#full? as true as Calculus class is full' do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)
      expected = [student1, student2]
      expect(course.full?).to eq(true)
    end
  end

end
