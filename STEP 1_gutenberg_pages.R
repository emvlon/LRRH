library(gutenbergr)
install.packages("dplyr")
library(dplyr)

andrew_lang <- gutenberg_download(503)
andrew_lang <- andrew_lang |>
  mutate(line = row_number()) |>
  filter(line > 2001 & line < 2106)

grimm <- gutenberg_download(2591)
grimm <- grimm |>
  mutate(line = row_number()) |>
  filter(line > 3090 & line < 3248)

unknown <- gutenberg_download(24778)
unknown <- unknown |>
  mutate(line = row_number()) |>
  filter(line > 84 & line < 256)

fisher <- gutenberg_download(52103)
fisher <- fisher |>
  mutate(line = row_number()) |>
  filter(line > 1245 & line < 1344)

very <- gutenberg_download(31868)
very <- very |>
  mutate(line = row_number()) |>
  filter(line > 14 & line < 249)

hood <- gutenberg_download(44447)
hood <- hood |>
  mutate(line = row_number()) |>
  filter(line > 1549 & line < 2192)

chatelain <- gutenberg_download(25461)
chatelain <- chatelain |>
  mutate(line = row_number()) |>
  filter(line > 775 & line < 966)

anonymous <- gutenberg_download(43999)
anonymous <- anonymous |>
  mutate(line = row_number()) |>
  filter(line > 474 & line < 649)

smythe <- gutenberg_download(7841)
smythe <- smythe |>
  mutate(line = row_number()) |>
  filter(line > 514 & line < 634)

pyle <- gutenberg_download(49001)
pyle <- pyle |>
  mutate(line = row_number()) |>
  filter(line > 6098 & line < 6243)

edric <- gutenberg_download(15145)
edric <- edric |>
  mutate(line = row_number()) |>
  filter(line > 1159 & line < 1310)

piper <- gutenberg_download(11592)
piper <- piper |>
  mutate(line = row_number()) |>
  filter(line > 11 & line < 99)
