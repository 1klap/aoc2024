DEFAULT_INPUT_PATH = 'data/in.txt'

def run(fun1, fun2)
  arg1, arg2 = ARGV
  if arg1 && arg1 == '-h'
    puts 'Usage: ./solve [PART] [INPUT_PATH]'
    puts 'PART: 1 or 2, default: both'
    puts 'INPUT_PATH: path to the input file, default: data/in.txt'
    exit
  end

  if arg1.nil? && arg2.nil?
    input_path = DEFAULT_INPUT_PATH
    send fun1, input_path
    send fun2, input_path
  else
    input_path = arg2.nil? ? DEFAULT_INPUT_PATH : arg2
    case arg1
    when '1'
      send fun1, input_path
    when '2'
      send fun2, input_path
    else
      send fun1, arg1
      send fun1, arg2
    end
  end
end