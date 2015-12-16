NAME=spellout
VERSION=`cat VERSION`
BIN_DIR=bin
SRC_DIR=src
TMP_DIR=tmp
BIN_FILE=$(BIN_DIR)/$(NAME)
SRC_FILE=$(SRC_DIR)/$(NAME).cr

test:
	crystal spec

$(SRC_FILE): $(SRC_DIR)/phonetic_alphabetizer.cr

$(BIN_FILE): $(SRC_FILE)
	mkdir -p $(BIN_DIR)
	crystal build $(SRC_FILE) -o $(BIN_FILE) --release

release: $(BIN_FILE) test
	git diff --exit-code && \
		git diff-index --quiet --cached HEAD && \
		git tag v$(VERSION) && \
		git push && \
		git push --tags

clean:
	rm -rf $(BIN_DIR)
	rm -rf $(TMP_DIR)

.PHONY: clean test release
