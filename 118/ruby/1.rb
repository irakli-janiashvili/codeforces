print gets.chomp.gsub(/[AOYEUI]/i, '').gsub(/([^AOYEUI])/i, '.\1').downcase