#ChicagoRuby Hack Night - 6/12/2013 - JSON Formatter

class Formatter

  def initialize
    @json_as_string = '{"id":1,"jsonrpc":"2.0","total":7,"result":[{"id":1,"guid":"37921d7f-7cc2-46ab-81ea-c54ae9a6bdef","isActive":false,"balance":"$2,604.00","picture":"http://placehold.it/32x32","age":40,"name":"Sydney Harrison","company":"Quintegrity","phone":"822-481-33491","email":"sydney@quintegrity.com","address":"38275, Garland, Broome Streets","about":"Magna cillum ipsum ipsum esse et officia magna quis cillum proident. Laborum Lorem enim non qui esse. Tempor veniam do nisi officia consequat duis adipisicing qui occaecat non. Non consectetur dolor adipisicing Lorem exercitation sit reprehenderit consectetur ut est ad. Irure aliquip magna veniam Lorem velit.\r\n","registered":"1998-04-12T03:09:03 +05:00","latitude":30,"tags":["elit","aliquip","anim","minim","quis","incididunt","voluptate"],"friends":[{"id":1,"name":"Zoey Crossman"},{"id":2,"name":"Claire Hoggarth"},{"id":3,"name":"Savannah Charlson"}],"gender":"female","randomArrayItem":"teacher"},{"id":2,"guid":"0227f845-561c-4e92-8dec-81057b992029","isActive":true,"balance":"$3,686.00","picture":"http://placehold.it/32x32","age":29,"name":"Alexis Crossman","company":"Nanobanc","phone":"853-443-35679","email":"alexis@nanobanc.com","address":"22640, Escondido, Walker Street","about":"Enim deserunt velit ad quis. Duis reprehenderit id amet anim commodo voluptate ad. Velit labore dolor et nulla laboris velit laboris consectetur amet deserunt.\r\n","registered":"1997-09-14T00:47:19 +05:00","latitude":61,"tags":["mollit","anim","cillum","duis","enim","consequat","non"],"friends":[{"id":1,"name":"Allison Hamphrey"},{"id":2,"name":"Ava Webster"},{"id":3,"name":"Emma Vaughan"}],"gender":"male","randomArrayItem":"teacher"},{"id":3,"guid":"2a8685a8-97d1-47e4-b75c-486b0b6c3fc5","isActive":true,"balance":"$3,313.00","picture":"http://placehold.it/32x32","age":35,"name":"Lillian Watson","company":"US Omnigraphik","phone":"885-513-23558","email":"lillian@us omnigraphik.com","address":"20753, Cambridge, Lafayette Street","about":"Ea mollit mollit laboris deserunt. Ut amet ullamco sit aute quis. Tempor labore ex commodo ex enim ea adipisicing esse ad cillum. Nulla cillum ut ullamco veniam duis id pariatur reprehenderit est est laboris mollit consequat. Esse aliqua Lorem deserunt Lorem id reprehenderit incididunt sit adipisicing tempor pariatur ipsum laborum irure. Labore irure consequat irure magna nisi reprehenderit eu est ea enim proident cupidatat. Ut aliquip id ea dolore dolore fugiat aute in sunt consectetur.\r\n","registered":"1998-10-01T14:42:32 +05:00","latitude":-23,"tags":["reprehenderit","consectetur","enim","sint","ea","sint","laboris"],"friends":[{"id":1,"name":"Andrea Oliver"},{"id":2,"name":"Allison Gilbert"},{"id":3,"name":"Madeline Ward"}],"gender":"female","randomArrayItem":"student"},{"id":4,"guid":"9e6193e7-077a-4c08-b1c3-d356226e96d1","isActive":true,"balance":"$2,770.00","picture":"http://placehold.it/32x32","age":40,"name":"Payton Day","company":"Conotomics","phone":"833-596-29469","email":"payton@conotomics.com","address":"22271, Elgin, Crosby Streets","about":"Proident ullamco adipisicing consequat laborum ipsum in voluptate proident sint. Magna ea consequat sit elit labore aliquip. Laborum irure fugiat id et aliquip incididunt. Anim laborum proident proident ea sit culpa esse sunt cillum reprehenderit consectetur. Veniam amet dolore dolore elit exercitation enim elit nisi irure ad dolor. Aliqua ad dolore aute adipisicing irure laborum pariatur ipsum esse commodo sint consequat occaecat eu. Cillum elit esse occaecat cupidatat consectetur mollit dolore aute sint sint nulla incididunt.\r\n","registered":"2006-05-24T00:15:29 +05:00","latitude":0,"tags":["nisi","incididunt","veniam","aute","duis","laborum","labore"],"friends":[{"id":1,"name":"Jessica Freeman"},{"id":2,"name":"Rachel Campbell"},{"id":3,"name":"Abigail Crossman"}],"gender":"female","randomArrayItem":"teacher"},{"id":5,"guid":"e6950ea7-28f4-45fc-aba2-98b8e8a59af4","isActive":false,"balance":"$1,534.00","picture":"http://placehold.it/32x32","age":31,"name":"Gabriella Davidson","company":"Anagraph","phone":"801-468-36949","email":"gabriella@anagraph.com","address":"13209, Chattanooga,  nr 43rd Street","about":"Dolore magna proident dolore ut nisi veniam. Est officia do ea cillum ipsum dolore incididunt deserunt sint excepteur proident. Veniam mollit amet commodo Lorem amet magna ea excepteur Lorem.\r\n","registered":"1999-03-16T11:57:24 +06:00","latitude":-40,"tags":["ad","qui","deserunt","cupidatat","ea","aute","consectetur"],"friends":[{"id":1,"name":"Madelyn Miln"},{"id":2,"name":"Hailey Hancock"},{"id":3,"name":"Katherine Daniels"}],"gender":"male","randomArrayItem":"student"},{"id":6,"guid":"75d79c47-de81-4b27-ad18-59cf422153e0","isActive":true,"balance":"$3,979.00","picture":"http://placehold.it/32x32","age":31,"name":"Jocelyn Higgins","company":"Airdyne","phone":"809-505-31943","email":"jocelyn@airdyne.com","address":"13246, Boise, Water Street","about":"Exercitation proident sint sit officia dolore esse amet laboris. Dolor dolore laboris reprehenderit ea enim voluptate proident veniam esse occaecat esse laboris laborum eu. Aute deserunt aliqua cillum officia sit anim laboris deserunt.\r\n","registered":"2010-11-02T13:09:18 +05:00","latitude":66,"tags":["laboris","nostrud","cillum","et","pariatur","sint","dolor"],"friends":[{"id":1,"name":"Morgan Smith"},{"id":2,"name":"Sophia Gustman"},{"id":3,"name":"Jasmine Freeman"}],"gender":"male","randomArrayItem":"student"},{"id":7,"guid":"eab92556-4d17-41fe-b346-d8c52a29556a","isActive":true,"balance":"$2,368.00","picture":"http://placehold.it/32x32","age":30,"name":"Addison Bush","company":"Robotomic","phone":"802-507-34999","email":"addison@robotomic.com","address":"11750, BatonRouge, Duane Streets","about":"Lorem elit esse voluptate ullamco sit. Anim sunt esse duis aliquip consequat veniam Lorem ea eiusmod dolor. Ut voluptate culpa velit quis in cupidatat nisi eiusmod incididunt. Tempor tempor id minim nostrud eiusmod esse. Qui et nisi ullamco ipsum dolore reprehenderit incididunt consequat cillum sit. Velit ex ut irure anim dolore irure minim Lorem. Ullamco laborum deserunt voluptate id quis esse.\r\n","registered":"1997-03-26T17:56:01 +06:00","latitude":-67,"tags":["commodo","fugiat","tempor","esse","nostrud","esse","sunt"],"friends":[{"id":1,"name":"Audrey Chesterton"},{"id":2,"name":"Hannah Gilbert"},{"id":3,"name":"Samantha Smith"}],"gender":"female","randomArrayItem":"student"}]}'
    @space = "     "
    @indent_level = 0
  end

  def loop
    @json_as_string.each_char do |char|
      @switch = false
      check_for_openers(char)
      check_for_closers(char)
      check_for_commas(char)
      print_text(char) if @switch != true
    end
  end

  def check_for_openers(char)
    if char == "{" || char == "["
      @switch = true
      increase_indent
      print char
      skip_line
      opening_indent
    end
  end

  def check_for_closers(char)
    if char == "]" || char == "}"
      @switch = true
      decrease_indent
      close_indent(char)
    end
  end

  def check_for_commas(char)
    if char == ","
      @switch = true
      print char
      skip_line
      opening_indent
    end
  end

  def print_text(char)
    print char
  end

  def increase_indent
    @indent_level += 5
  end

  def decrease_indent
    @indent_level -= 5
  end

  def skip_line
    puts ""
  end

  def opening_indent
    print (" "*@indent_level)
  end

  def close_indent(char)
    print char.prepend("
      " + " "*(@indent_level/2))
  end
end

Formatter.new.loop #=> formatted JSON
