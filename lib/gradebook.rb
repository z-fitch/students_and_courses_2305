class Gradebook
    attr_reader :instructor, :courses
    def initialize(instructor)
        @instructor = instructor
        @courses = []
    end

    def add_course(course)
        courses.push(course)
    end


    def list_all_students
        courses = @courses
        all_students = []
        courses.map do |course|
            hash = {course: course.students}
            all_students << hash
        end
        all_students[:course]
        # I want to be ablew to access the specfic value in the hash  to only retrun the value and not the hash
    end

    
end
