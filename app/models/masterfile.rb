class Masterfile

	def parse(file_path)
    file = open_file(file_path)
    file.each_with_pagename do |name, sheet|
    	category = Category.find_or_create_by(name: name)
    	cnt = 0
    	sheet.each do |row|
    	# (4..sheet.last_row).each do |row|
    		if cnt > 2
    			Product.create(category_id: category.id, sku: row[0].to_s, name: row[1].to_s)
	    	end
    		cnt = cnt + 1
	    end
    end
  end

	
  private
	  def open_file(file)
		  case File.extname(file.original_filename)
		    when '.xls' then Roo::Excel.new(file.path)
		    when '.xlsx' then Roo::Excelx.new(file.path)

		    else raise "Unknown file type: #{file.original_filename}"
		  end
		end

	# def parse(file_path)
 #    # file = Roo::Excel.new(file_path)
 #    workbook = Roo::Spreadsheet.open(file_path)
 #    workbook.each_with_pagename do |name, sheet|

 #    end

 #    # (1..file.last_row).each do |i|
 #    #   row = file.row(i)
 #    #   node = self.nodes.new(attribute1: row[0], attribute2: row[1]) # Depends on your needs
 #    #   node.save! if node.valid? # Make sure to use validations
 #    # end
 #  end

	# def self.import(file)
	# 	spreadsheet = open_spreadsheet(file)
	# end

	# def self.open_spreadsheet(file)
	# 	case File.extname(file.original_filename)
	# 	when ".csv" then Csv.new(file.path, nil, :ignore)
	#   when ".xls" then Excel.new(file.path, nil, :ignore)
	#   when ".xlsx" then Excelx.new(file.path, nil, :ignore)
	#   else raise "Unknown file type: #{file.original_filename}"
	#   end
	# end

end
