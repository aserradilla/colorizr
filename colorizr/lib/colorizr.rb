class String
        attr_reader :colors_hash

        # Hash that contains all the colors and its value
        @@colors_hash = {
                red: 31,
                green: 32,
                yellow: 33,
                blue: 34,
                pink: 35,
                light_blue: 94,
                white: 39,
                light_grey: 90,
                black: 30
        }

        def self.create_colors
                @@colors_hash.each do |key, value|
                        self.class.send :define_method, "#{key}" do
                                "\e[#{value}m#{self.to_s}\e[0m"
                        end
                end
        end

        def self.colors
                @@colors_hash.keys
        end

        def self.sample_colors
                @@colors_hash.each do |color, _|
                        puts "This is " + "#{color}".send(color) + "."
                end
        end
end

String.create_colors
