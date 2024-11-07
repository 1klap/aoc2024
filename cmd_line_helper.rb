DEFAULT_INPUT_PATH = 'data/in.txt'.freeze

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
    fun1.call input_path
    fun2.call input_path
  else
    input_path = arg2.nil? ? DEFAULT_INPUT_PATH : arg2
    case arg1
    when '1'
      fun1.call input_path
    when '2'
      fun2.call input_path
    else
      fun1.call arg1
      fun2.call arg1
    end
  end
end