# Set all versions
PREDATOR_BUILD_TYPE ?= UNOFFICIAL
PREDATOR_VERSION_BASE := 1.0
PREDATOR_BUILD_CODENAME := Rembang-Jateng

# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Predator System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.build.datetime=$(BUILD_DATE_TIME) \
    ro.predator.codename=$(PREDATOR_BUILD_CODENAME)) \
    ro.lineage.build.type=$(PREDATOR_BUILD_TYPE) \
    ro.lineage.build.version=$(PREDATOR_VERSION_BASE) \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.lineage.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(LINEAGE_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
