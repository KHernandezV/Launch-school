def palindromes(txt)
  palindromes_in_txt = []
  (txt.length - 1).times do |pri_index|
    ((txt.length) - (pri_index + 1)).times do |sec_index|
      if txt[
        pri_index..sec_index + pri_index + 1
        ] == txt[
          pri_index..sec_index + pri_index + 1
        ].reverse
        palindromes_in_txt << txt[pri_index..sec_index + pri_index + 1]
      end
    end
  end
  palindromes_in_txt
end
