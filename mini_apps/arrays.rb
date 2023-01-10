#I'm a client working for the Blank House.
#We want to display positive tweets about our president on our website.
#However, our president is kind of unpopular, and we pretty much only receive negative press.
#Write me a program that filters out the following words from tweets:
#"sucks", "bad", "hate", "foolish", and the most popular: "danger to society".
#Replace each negative word or phrase them with the word "CENSORED".
#Some test tweets have been provided for you.



test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
# first we need to read every sentence, and check if it contains any of the phrases. if it does,
# the phrase should be replaced in the sentence.
# new_sentence = []

accumulator = []
test_tweets.each do |sentence|
banned_phrases.each do |bad_word|
    if sentence.include?(bad_word)
     sentence = sentence.gsub(bad_word,"CENSORED")  
    end
end
accumulator.push(sentence)
end
puts accumulator

 
 



