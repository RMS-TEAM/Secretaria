require "open-uri"
Prawn::Document.generate("remote_images.pdf") do |pdf|
    pdf.image open("http://chart.apis.google.com/chart?cht=lfi&chs=100x15&chd=s:MerryChristmas")
end
