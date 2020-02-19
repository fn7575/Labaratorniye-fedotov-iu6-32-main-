# frozen_string_literal: false

# SortingClass from file
class FilesClass
  def initialize(file1, file2, text1, text2)
    @file1 = file1
    @file2 = file2
    @text1 = text1
    @text2 = text2
  end

  def work_with_file
    write_files
    puts 'Файлы созданы и записаны'
    read_file
    puts similar_array
  end

  def write_files
    File.open(@file1, 'w+') do |file|
      file.write @text1.to_s
      @text1 = ''
    end
    File.open(@file2, 'w+') do |file|
      file.write @text2.to_s
      @text2 = ''
    end
  end

  def read_file
    File.readlines(@file1).each do |line|
      @text1 << line.strip
    end
    File.readlines(@file2).each do |line|
      @text2 << line.strip
    end
  end

  def similar_array
    return 'Файлы одинаковы' if @text1.split == @text2.split

    if @text1.split.length > @text2.split.length
      if @text1.split.slice(0..@text2.split.length - 1) == @text2.split
        return "Файл повторяет элементы другого файла до #{@text2.split.length + 1} элемента"
      end
  end
    if @text1.split.length < @text2.split.length
      if @text2.split.slice(0..@text1.split.length - 1) == @text1.split
        return "Файл повторяет элементы другого файла до #{@text1.split.length + 1} элемента"
      end
    end
    i = 0
    while i < @text1.split.length
      unless @text1.split[i] == @text2.split[i]
        return "Номер первого отличного компанента #{i + 1}"
      end

      i += 1
    end
    end
end
