# frozen_string_literal: true

require 'test/unit'
require_relative  'logic'
# Class Unit test
class MyTest < Test::Unit::TestCase
  def setup
    @testing_obj1 = FilesClass.new('f1.txt', 'f2.txt', '1 2 3 4', '1 2 3 4')
    @testing_obj2 = FilesClass.new('f1.txt', 'f2.txt', '1 2 3 4', '1 2 3 4 5')
    @testing_obj3 = FilesClass.new('f1.txt', 'f2.txt', '1 2 5 4', '1 2 3 4 5')
  end

  def test_exist
    assert_equal(true, File.exist?('f1.txt'))
    assert_equal(true, File.exist?('f2.txt'))
  end

  def test_equal
    @testing_obj1.write_files
    @testing_obj1.read_file
    str = 'Файлы одинаковы'
    str2 = @testing_obj1.similar_array
    assert_equal(str, str2)
  end

  def test_bigger
    @testing_obj2.write_files
    @testing_obj2.read_file
    str = 'Файл повторяет элементы другого файла до 5 элемента'
    str2 = @testing_obj2.similar_array
    assert_equal(str, str2)
   end

  def test_unequal
    @testing_obj3.write_files
    @testing_obj3.read_file
    str = 'Номер первого отличного компанента 3'
    str2 = @testing_obj3.similar_array
    assert_equal(str, str2)
   end
end
