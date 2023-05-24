require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
    it 'exists' do
        course = Course.new("Calculus", 2)

        expect(course.name).to eq("Calculus")
        expect(course.capacity).to eq(2)
        expect(course.students).to eq([])
        expect(course.full?).to eq(false)
    end

    it 'can enroll students' do
        course = Course.new("Calculus", 2)
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})

        course.enroll(student1)
        course.enroll(student2)

        expect(course.students).to eq([student1, student2])
        expect(course.full?).to eq(true)
    end
end