library(dplyr)
library(tidyr)
library(tidytext)

afinn_lexicon <- get_sentiments("afinn")

al_sentiment <- al_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

grimm_sentiment <- grimm_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

unknown_sentiment <- unknown_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

fisher_sentiment <- fisher_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

very_sentiment <- very_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

hood_sentiment <- hood_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

chatelain_sentiment <- chatelain_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

anonymous_sentiment <- anonymous_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

smythe_sentiment <- smythe_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

pyle_sentiment <- pyle_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

edric_sentiment <- edric_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))

piper_sentiment <- piper_words %>%
  inner_join(afinn_lexicon, by = c("word" = "word")) %>%
  group_by(word) %>%
  summarise(sentiment_score = sum(value)) %>%
  arrange(desc(sentiment_score))




