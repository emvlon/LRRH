install.packages("tidytext")
install.packages("dplyr") 
library(tidytext)
library(dplyr)

al_words <- andrew_lang |>
  unnest_tokens(word, text)

grimm_words <- grimm |>
  unnest_tokens(word, text)

unknown_words <- unknown |>
  unnest_tokens(word, text)

fisher_words <- fisher |>
  unnest_tokens(word, text)

very_words <- very |>
  unnest_tokens(word, text)

hood_words <- hood |>
  unnest_tokens(word, text)

chatelain_words <- chatelain |>
  unnest_tokens(word, text)

anonymous_words <- anonymous |>
  unnest_tokens(word, text)

smythe_words <- smythe |>
  unnest_tokens(word, text)

pyle_words <- pyle |>
  unnest_tokens(word, text)

edric_words <- edric |>
  unnest_tokens(word, text)

piper_words <- piper |>
  unnest_tokens(word, text)

al_words <- al_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
grimm_words <- grimm_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
unknown_words <- unknown_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1) 
fisher_words <- fisher_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
very_words <- very_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1) |>
  filter(word != "illustration")
hood_words <- hood_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
chatelain_words <- chatelain_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
anonymous_words <- anonymous_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
smythe_words <- smythe_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
pyle_words <- pyle_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
edric_words <- edric_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)
piper_words <- piper_words |>
  anti_join(stop_words) |>
  filter(!grepl("[[:punct:]]", word)) |>
  filter(!grepl("[[:digit:]]", word)) |>
  filter(nchar(word) > 1)

al_word_freq <- al_words |>
  count(word, sort = TRUE)
grimm_word_freq <- grimm_words |>
  count(word, sort = TRUE)
unknown_word_freq <- unknown_words |>
  count(word, sort = TRUE)
fisher_word_freq <- fisher_words |>
  count(word, sort = TRUE)
very_word_freq <- very_words |>
  count(word, sort = TRUE)
hood_word_freq <- hood_words |>
  count(word, sort = TRUE)
chatelain_word_freq <- chatelain_words |>
  count(word, sort = TRUE)
anonymous_word_freq <- anonymous_words |>
  count(word, sort = TRUE)
smythe_word_freq <- smythe_words |>
  count(word, sort = TRUE)
pyle_word_freq <- pyle_words |>
  count(word, sort = TRUE)
edric_word_freq <- edric_words |>
  count(word, sort = TRUE)
piper_word_freq <- piper_words |>
  count(word, sort = TRUE)

head(al_word_freq, 15)
head(grimm_word_freq, 15)
head(unknown_word_freq, 15)
head(fisher_word_freq, 15)
head(very_word_freq, 15)
head(hood_word_freq, 15)
head(chatelain_word_freq, 15)
head(anonymous_word_freq, 15)
head(smythe_word_freq, 15)
head(pyle_word_freq, 15)
head(edric_word_freq, 15)
head(piper_word_freq, 15)


