require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'


RSpec.describe Gradebook do 
    it 'exists' do
        gradebook = Gradebook.new("Instructor")

        expect(gradebook.instructor). to eq("Instructor")
        expect(gradebook.courses).to eq([])
    end

    it 'can add courses' do
        gradebook = Gradebook.new("Instructor")
        course = Course.new("Calculus", 2)
        
        gradebook.add_course(course)
        expect(gradebook.courses).to eq([course])
    end
    it 'can add students' do
        gradebook = Gradebook.new("Instructor")
        course = Course.new("Calculus", 2)

        gradebook.add_course(course)

        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})

        course.enroll(student1)
        course.enroll(student2)
        expect(gradebook.list_all_students).to eq({course: [student1, student2]})

        require 'pry'; binding.pry
    end
end

