require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
    @student2 = students(:two)
  end

  test "should get index" do
    get students_url, as: :json
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { address: @student.address, age: @student.age, birth_date: @student.birth_date, father_name: @student.father_name, mother_name: @student.mother_name, responsible: @student.responsible, name: @student.name, nationality: @student.nationality, parent_email: @student.parent_email, parent_telephone: @student.parent_telephone, shift: @student.shift, student_class: @student.student_class, year: @student.year} }, as: :json
    end

    assert_response 201
  end

  test "shouldn't create student" do
    assert_no_difference('Student.count') do
      post students_url, params: { student: { address: @student.address, age: @student.age, birth_date: @student.birth_date, father_name: @student.father_name, mother_name: @student.mother_name, responsible: @student2.responsible, name: @student2.name, nationality: @student.nationality, parent_email: @student.parent_email, parent_telephone: @student.parent_telephone, shift: @student.shift, student_class: @student.student_class, year: @student.year} }, as: :json
    end

    assert_response :unprocessable_entity
  end

  test "should show student" do
    get student_url(@student), as: :json
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address: @student.address, age: @student.age, birth_date: @student.birth_date, father_name: @student.father_name, mother_name: @student.mother_name, responsible: @student.responsible, name: @student.name, nationality: @student.nationality, parent_email: @student.parent_email, parent_telephone: @student.parent_telephone, shift: @student.shift, student_class: @student.student_class, year: @student.year} }, as: :json
    assert_response 200
  end

  test "shouldn't update student" do
    patch student_url(@student2), params: { student: { address: @student2.address, age: @student2.age, birth_date: @student2.birth_date, father_name: @student2.father_name, mother_name: @student2.mother_name, responsible: @student2.responsible, name: @student2.name, nationality: @student2.nationality, parent_email: @student2.parent_email, parent_telephone: @student2.parent_telephone, shift: @student2.shift, student_class: @student2.student_class, year: @student2.year} }, as: :json
    assert_response :unprocessable_entity
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student), as: :json
    end

    assert_response 204
  end
end
