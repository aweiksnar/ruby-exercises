# ChicagoRuby Hack Night - Decoding Messages - 9/11/2013
# Problem: http://www.puzzlenode.com/puzzles/12-secret-messages

class CaesarCipher
  def initialize(code_word)
    @code_word = code_word
  end

  def array_of_shifted_alphabets
    (0..26).map do |shift_num|
      alphabet = [*"A".."Z"]
      alphabet.push(alphabet.shift(shift_num)).flatten
    end
  end

  def decode_cipher(word, alphabet, alphabet_values)
    alphabet_value_hash = Hash[alphabet.zip alphabet_values]
    word = word.split(//).map! {|letter| alphabet_value_hash[letter]}
    puts word.join
  end

  def print_code_word_options
    array_of_shifted_alphabets.each {|alphabet| decode_cipher(@code_word, [*"A".."Z"], alphabet)}
  end
end

decoded_words = CaesarCipher.new("UREXVIFLJ").print_code_word_options  # => ..."DANGEROUS"...

class VigenereCipher
  def initialize(code_word, paragraph)
    @code_word              = code_word
    @paragraph_letter_array = paragraph.split(//)
    @code_word_index_value  = 0
    @new_paragraph          = []
  end

  def alphabet_hash_unshifted_by(num)
    alphabet = [*"A".."Z"]
    alphabet_values = alphabet.unshift(alphabet.pop(num)).flatten
    Hash[[*"A".."Z"].zip alphabet_values]
  end

  def alphabet_index_value_hash
    Hash[[*"A".."Z"].zip [*0..26]]
  end

  def decode_letter(letter)
    shift_letter = @code_word[@code_word_index_value]
    alphabet_shift_value = alphabet_index_value_hash[shift_letter]
    alphabet_hash_unshifted_by(alphabet_shift_value)[letter]
  end

  def replace_letter_if_necessary(letter)
    if [*"A".."Z"].include?(letter)
      letter = decode_letter(letter)
      @new_paragraph << letter
      increase_code_word_index_value_if_not_at_last_letter
    else
      @new_paragraph << letter
    end
  end

  def increase_code_word_index_value_if_not_at_last_letter
    if @code_word_index_value == @code_word.length - 1
      @code_word_index_value = 0
    else
      @code_word_index_value += 1
    end
  end

  def decode_text
    @paragraph_letter_array.each do |letter|
      replace_letter_if_necessary(letter)
    end
  end

  def print_decoded_paragraph
    puts @new_paragraph.join("")
  end
end

paragraph = "ZE VTXVBX LR BRMME CH LKE SOVJH IX IEOXYRFS MQRRYXIWWLHD FAFDOLAQE JGVWOLW. ZE FNECZ
YFGENBSI WH KSIGK SW HBAV TB QIVD NZH UAOXVR MLDTRY SW OGWUIPG RVINJDL. VT XYS YNHNG
UJ KVCK QOG YYTQYWGIAM, AV AUCH MRDMTC U HUOCUWRZ IJ DLYOEEQY GQ TUK JFZFGZIAM FRGCK:
PAXK ARF NGJEGNII, AUCH PRGGV HIYHTUKV, XSHWUOHY JZBUFFINR WLDJGUT NTH RB
OFGEEYXRBXAQG BT SLF JSUT GNEK AYPLCB OW KC LWFOAWYVF NZH LBYX KSLJLTBXC ZB NWAAF,
TIN AYPLCB, GRU OLACOAG. XYS MWWTYKQVBN AQ DRZEZZ CK OESZ XF MIM. BOH CMCZ CFIOES
XYS JJHSVJIEH IX WHR GFFJY ERSG YITFYLOY NY WFCH SV TUK SLHVJHAX UJ NOL OLTU ZLV
IHAWEQ YXRHYK RF NSIIWWS LS PKVKOCF DNQ GHU HBW VUTMIJHCGQ TUGX YS MZRUYJ, SE VCK
RWA ORZHCSWIIK, MEJCLH JNVEE HI APMRJMRHY SGHRXIEQY SQD NZ XYS MSPE GOQV AYVLAGK
FVHQWHN WGTRB UFG OHXWVZPWV. PYKEJS WSOL GNI GFYKLDRTX'J ONLHNGOSE HI LKE SGGK
HBSW TUK VLHBDHSF KQGZIQPEAZ SW COJ VUOSEIWHWV NBC SWTYJV TUK TICMHHCG UJ
TCGHHLYORX SHYOAAJ ME O ZWZ MBTXYG NG PAXK TVOWW."

solution = VigenereCipher.new("DANGEROUS", paragraph)
solution.decode_text
solution.print_decoded_paragraph # => *see below

=begin
Output Paragraph:
WE INTEND TO BEGIN ON THE FIRST OF FEBRUARY UNRESTRICTED SUBMARINE WARFARE. WE SHALL
ENDEAVOR IN SPITE OF THIS TO KEEP THE UNITED STATES OF AMERICA NEUTRAL. IN THE EVENT
OF THIS NOT SUCCEEDING, WE MAKE MEXICO A PROPOSAL OR ALLIANCE ON THE FOLLOWING BASIS:
MAKE WAR TOGETHER, MAKE PEACE TOGETHER, GENEROUS FINANCIAL SUPPORT AND AN
UNDERSTANDING ON OUR PART THAT MEXICO IS TO RECONQUER THE LOST TERRITORY IN TEXAS,
NEW MEXICO, AND ARIZONA. THE SETTLEMENT IN DETAIL IS LEFT TO YOU. YOU WILL INFORM
THE PRESIDENT OF THE ABOVE MOST SECRETLY AS SOON AS THE OUTBREAK OF WAR WITH THE
UNITED STATES OF AMERICA IS CERTAIN AND ADD THE SUGGESTION THAT HE SHOULD, ON HIS
OWN INITIATIVE, INVITE JAPAN TO IMMEDIATE ADHERENCE AND AT THE SAME TIME MEDIATE
BETWEEN JAPAN AND OURSELVES. PLEASE CALL THE PRESIDENT'S ATTENTION TO THE FACT
THAT THE RUTHLESS EMPLOYMENT OF OUR SUBMARINES NOW OFFERS THE PROSPECT OF
COMPELLING ENGLAND IN A FEW MONTHS TO MAKE PEACE.
=end

