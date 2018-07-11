img_dir = Rails.root+"datasets/sample"
img_dir = Rails.root+"datasets/full"

img_paths = Dir.glob("#{img_dir}/*.{jpeg,jpg,png}") 
img_paths.each do |img_path|
  unless p = Photo.where(code: img_path).first
	p = Photo.new(code: img_path)
	if img_path.include?("normal")
	  p.is_turtle = false
	elsif img_path.include?("sleep")
	  p.is_turtle = true
	elsif img_path.include?("turtle")
	  p.is_turtle = true
	end
	File.open(img_path) do |f|
	  p.attachment = f
	end
	unless p.save
	  puts p.errors.full_messages
	end
  end
end
