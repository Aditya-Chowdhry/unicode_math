# encoding: utf-8

module UnicodeMath
  module Constants
    def self.included(base)
      base.class_eval do
        %w(π ϖ 𝛑 𝛡 𝜋 𝜛 𝝅 𝝕 𝝿 𝞏 𝞹 𝟉).each do |pi|
          define_method(pi) do
            Math::PI
          end
        end

        %w(τ 𝛕 𝜏 𝝉 𝞃 𝞽).each do |tau|
          define_method(tau) do
            2 * Math::PI
          end
        end

        %w(ℯ 𝐞 𝑒 𝒆 𝖾 𝗲 𝘦 𝙚 𝚎 ｅ).each do |e|
          define_method(e) do
            Math::E
          end
        end

        %w(𝐢 𝑖 𝒊 𝒾 𝓲 𝔦 𝕚 𝖎 𝗂 𝗶 𝘪 𝙞 𝚒).each do |i|
          define_method(i) do
            Complex::I
          end
        end

        define_method('∞') do
          1.0 / 0
        end

        #Hindi Counting https://en.wikibooks.org/wiki/Hindi/Numbers        
        define_method('०') do
          0
        end

        define_method('१') do
          1
        end

        define_method('२') do
          2
        end

        define_method('३') do
          3
        end

        define_method('४') do
          4
        end

        define_method('५') do
          5
        end

        define_method('६') do
          6
        end

        define_method('७') do
          7
        end

        define_method('८') do
          8
        end

        define_method('९') do
          9
        end
        
      end
    end
  end
end

Kernel.send(:include, UnicodeMath::Constants)
