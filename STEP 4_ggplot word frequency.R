library(ggplot2)

al_top_words <- al_word_freq |>
  top_n(20) 
grimm_top_words <- grimm_word_freq |>
  top_n(20) 
unknown_top_words <- unknown_word_freq |>
  top_n(20) 
fisher_top_words <- fisher_word_freq |>
  top_n(20) 
very_top_words <- very_word_freq |>
  top_n(20) 
hood_top_words <- hood_word_freq |>
  top_n(20) 
chatelain_top_words <- chatelain_word_freq |>
  top_n(20) 
anonymous_top_words <- anonymous_word_freq |>
  top_n(20) 
smythe_top_words <- smythe_word_freq |>
  top_n(20) 
pyle_top_words <- pyle_word_freq |>
  top_n(20) 
edric_top_words <- edric_word_freq |>
  top_n(20) 
piper_top_words <- piper_word_freq |>
  top_n(20) 


al_top_20_words <- al_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
grimm_top_20_words <- grimm_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
unknown_top_20_words <- unknown_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
fisher_top_20_words <- fisher_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
very_top_20_words <- very_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
hood_top_20_words <- hood_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
chatelain_top_20_words <- chatelain_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
anonymous_top_20_words <- anonymous_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
smythe_top_20_words <- smythe_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
pyle_top_20_words <- pyle_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
edric_top_20_words <- edric_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)
piper_top_20_words <- piper_top_words |>
  top_n(20, wt = n) |>
  arrange(desc(n)) |>
  slice(1:20)

ggplot(al_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "darkorange4") +
  labs(x = "Top 20 Words", y = "Frequency", title = "LITTLE RED RIDING HOOD by Andrew Lang") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(grimm_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "skyblue4") +
  labs(x = "Top 20 Words", y = "Frequency", title = "LITTLE RED-CAP by brothers Grimm") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(unknown_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "yellow4") +
  labs(x = "Top 20 Words", y = "Frequency", title = "RED RIDING-HOOD by Unknown") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(fisher_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "firebrick4") +
  labs(x = "Top 20 Words", y = "Frequency", title = "Little Red-riding-hood by R.T.Fisher") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(very_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "plum4") +
  labs(x = "Top 20 Words", y = "Frequency", title = "Red Riding Hood by Lydia L. A. Very") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(hood_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "salmon2") +
  labs(x = "Top 20 Words", y = "Frequency", title = "LITTLE RED RIDING HOOD. by Tom Hood") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(chatelain_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "pink2") +
  labs(x = "Top 20 Words", y = "Frequency", title = "THE STORY OF Little Red Riding Hood. by Clara de Chatelain") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(anonymous_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "slateblue2") +
  labs(x = "Top 20 Words", y = "Frequency", title = "A New Red Riding-hood. by Anonymous") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(smythe_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "gold") +
  labs(x = "Top 20 Words", y = "Frequency", title = "LITTLE RED RIDING-HOOD by E. Louise Smythe") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(pyle_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "wheat4") +
  labs(x = "Top 20 Words", y = "Frequency", title = "Little Red Riding-Hood by Katharine Pyle") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(edric_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "indianred") +
  labs(x = "Top 20 Words", y = "Frequency", title = "LITTLE RED RIDING HOOD by Edric Vredenburg") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(piper_top_20_words, aes(x = reorder(word, n), y = n)) +
  geom_bar(stat = "identity", fill = "chartreuse4") +
  labs(x = "Top 20 Words", y = "Frequency", title = "LITTLE RED RIDING HOOD by Watty Piper") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
