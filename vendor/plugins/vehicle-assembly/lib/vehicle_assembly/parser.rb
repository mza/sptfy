module VehicleAssembly
  class Parser
    
    def self.parse(filename)
      if File.exists? filename
        template = ERB.new File.read(filename)
        template.result(binding)
      else
        puts "Can't parse '#{filename}'. File does not exist."
      end
    end

    def self.prepare(filename, options = {})
      file = options[:for]
      unless File.exists? file
        File.open(file, 'w') do |f|
          f.write VehicleAssembly::Parser.parse(filename)
        end
      else
        puts "File '#{file}' exists and will not be overwritten."
      end
    end
    
  end
end