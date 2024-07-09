BUILD_DIR := build/java

SOURCES := $(wildcard ./java/com/jlox/lox/*.java)

JAVA_OPTIONS := -Werror

default: jlox

jlox:
	@ mkdir -p $(BUILD_DIR)
	@ javac -d $(BUILD_DIR) $(JAVA_OPTIONS) $(SOURCES)

clean:
	@ rm -rf $(BUILD_DIR)

.PHONY: default jlox clean
