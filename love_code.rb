require 'base64'

img = Base64.decode64 <<END
CiAgICAgIyMjIyMgICAgICMjIyMjCiAgICAjIyMjIyMjICAgIyMjIyMjIwog
ICAjIyMjIyMjIyMgIyMjIyMjIyMjCiAgICMjIyMjIyMjIyMjIyMjIyMjIyMK
ICAgIyMjIyMgICAgICAgICAjIyMjIwogICAgIyMjIyAgTSArIEogICMjIyMK
ICAgICAjIyMgICAgICAgICAjIyMKICAgICAgIyMgIDRldmVyICAjIwogICAg
ICAgIyAgICAgICAgICMKICAgICAgICAjIyMjIyMjIyMKICAgICAgICAgIyMj
IyMjIwogICAgICAgICAgIyMjIyMKICAgICAgICAgICAjIyMKICAgICAgICAg
ICAgIwoK
END

img_a = img.split('')
blank = img.gsub /[^\n]/, ' '
blank.split('').each_with_index do |v,i|
  print (rand(2) == 0 ? v : img_a[i])
end
