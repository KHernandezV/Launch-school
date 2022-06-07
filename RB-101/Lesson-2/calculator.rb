require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=>#{message}")
end

def number?(num)
  num.is_a?(Float)
end

def opera_to_msg(op)
  word = ""
  case op
  when 1
    word = 'adding'
  when 2
    word = 'subtracting'
  when 3
    word = 'multiplying'
  when 4
    word = 'dividing'
  end
  word
end

prompt(MESSAGES['welcome'])

name = ""
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'])

loop do # main loop
  num1 = ""
  loop do
    prompt(MESSAGES['ask_first'])
    num1 = Kernel.gets.chomp.to_f
    if number?(num1)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  num2 = ""
  loop do
    prompt(MESSAGES['ask_second'])
    num2 = Kernel.gets.chomp.to_f
    if number?(num2) 
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end


  prompt(MESSAGES['opera_prompt'])
  opera = ""
  loop do
    opera = Kernel.gets.chomp.to_i
    if "1 2 3 4".include?(opera.to_s)
      break
    else
      prompt(MESSAGES['valid_ope'])
    end
  end

  prompt(MESSAGES['to_do_calc'])
  case opera
  when 1
    prompt(num1 + num2.to_f)
  when 2
    prompt(num1 - num2.to_f)
  when 3
    prompt(num1 * num2.to_f)
  when 4
    prompt(num1.to_f / num2)
  end

  prompt(MESSAGES['another'])
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt(MESSAGES['thank_you'])
