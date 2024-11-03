# factorio-mod-makefile by narc0tiq - https://github.com/narc0tiq/factorio-mod-makefile
# MIT-licensed, just like the Warehousing mod.
# Some modifications (c) 2024, dgw

BUILD_DIR := pkg
SOURCE_DIR := src

PKG_NAME := $(shell cat PKG_NAME)
PACKAGE_NAME := $(if $(PKG_NAME),$(PKG_NAME),$(error No package name, please create PKG_NAME))
ifneq ($(wildcard SHORT_VERSION),)
	VERSION := $(shell cat SHORT_VERSION || true)
	BUILD_NUMBER := $(shell git describe --tags --match 'v[0-9]*.[0-9]*' --long|cut -d- -f2 || echo 1)
	VERSION_STRING := $(if $(VERSION),$(VERSION).$(BUILD_NUMBER),$(error No version supplied, please add it as 'VERSION=x.y'))
else
	VERSION := $(shell cat VERSION || true)
	VERSION_STRING := $(if $(VERSION),$(VERSION),$(error No version supplied, please add it as 'VERSION=x.y.z'))
endif

OUTPUT_NAME := $(PACKAGE_NAME)_$(VERSION_STRING)
OUTPUT_DIR := $(BUILD_DIR)/$(OUTPUT_NAME)

EXTRA_FILES := $(shell cat PKG_COPY)
SOURCE_FILES := $(shell find $(SOURCE_DIR) -type f)

SED_EXPRS := -e 's/{{MOD_NAME}}/$(PACKAGE_NAME)/g'
SED_EXPRS += -e 's/{{VERSION}}/$(VERSION_STRING)/g'

all: package

package-copy: $(PKG_DIRS) $(PKG_FILES)
	mkdir -p $(OUTPUT_DIR)
ifneq ($(EXTRA_FILES),)
	cp -r $(EXTRA_FILES) $(BUILD_DIR)/$(OUTPUT_NAME)
endif

$(OUTPUT_DIR)/%: $(SOURCE_DIR)/%
	mkdir -p $(@D)
	cp $< $@

$(OUTPUT_DIR)/%.lua: $(SOURCE_DIR)/%.lua
	mkdir -p $(@D)
	sed -e 's/{{__FILE__}}/'"$(strip $(subst /,\/, $(subst ./,,$*)))"'.lua/g' $(SED_EXPRS) $< > $@
	luac -p $@

$(OUTPUT_DIR)/%.json: $(SOURCE_DIR)/%.json
	mkdir -p $(@D)
	sed $(SED_EXPRS) $< > $@

package: package-copy $(SOURCE_FILES:$(SOURCE_DIR)/%=$(OUTPUT_DIR)/%)
	cd $(BUILD_DIR) && rm -f $(OUTPUT_NAME).zip && zip -r $(OUTPUT_NAME).zip $(OUTPUT_NAME)

clean:
	rm -rf $(BUILD_DIR)/*
