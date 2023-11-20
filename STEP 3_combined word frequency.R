combined_word_freq <- bind_rows(
  al_word_freq |> mutate(edition = "Edition 1"),
  grimm_word_freq |> mutate(edition = "Edition 2"),
  unknown_word_freq |> mutate(edition = "Edition 3"),
  fisher_word_freq |> mutate(edition = "Edition 4"),
  very_word_freq |> mutate(edition = "Edition 5"),
  hood_word_freq |> mutate(edition = "Edition 6"),
  chatelain_word_freq |> mutate(edition = "Edition 7"),
  anonymous_word_freq |> mutate(edition = "Edition 8"),
  smythe_word_freq |> mutate(edition = "Edition 9"),
  pyle_word_freq |> mutate(edition = "Edition 10"),
  edric_word_freq |> mutate(edition = "Edition 11"),
  piper_word_freq |> mutate(edition = "Edition 12"))


ggplot(combined_word_freq, aes(x = reorder(word, n), y = n, fill = edition)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Words", y = "Frequency", title = "Comparison of Word Frequencies Across Editions") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
