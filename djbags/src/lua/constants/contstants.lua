local NAME, ADDON = ...

--region Types

DJBags_TYPE_CONTAINER = 'container'
DJBags_TYPE_ITEM_CONTAINER = 'itemContainer'
DJBags_TYPE_SUB_CLASS = 'djbags_sub_classes'
DJBags_TYPE_MAIN = 'djbags_main_settings'
DJBags_TYPE_MAIN_BAR = 'djbags_main_bar'
DJBags_TYPE_BANK_BAR = 'djbags_bank_bar'

DJBags_FORMATTER_MASONRY = 1
DJBags_FORMATTER_BOX = 2

--endregion

--region Settings

DJBags_SETTING_BACKGROUND_COLOR = 'djbags_background_color'
DJBags_SETTING_BORDER_COLOR = 'djbags_border_color'
DJBags_SETTING_TEXT_COLOR = 'djbags_text_color'
DJBags_SETTING_PADDING = 'djbags_padding'
DJBags_SETTING_SPACING = 'djbags_spacing'
DJBags_SETTING_SCALE = 'djbags_scale'
DJBags_SETTING_CLEAR_NEW_ITEMS = 'djbags_clear_new_items'
DJBags_SETTING_FORMATTER = 'djbags_formatter'
DJBags_SETTING_FORMATTER_VERT = 'djbags_formatter_vert'
DJBags_SETTING_FORMATTER_MAX_ITEMS = 'djbags_formatter_max_items'
DJBags_SETTING_FORMATTER_MAX_HEIGHT = 'djbags_formatter_max_height'
DJBags_SETTING_FORMATTER_BOX_COLS = 'djbags_formatter_box_cols'
DJBags_SETTING_TRUNCATE_SUB_CLASS = 'djbags_truncate_sub_class'
DJBags_SETTING_TEXT_SIZE = 'djbags_truncate_text_size'
DJBags_SETTING_STACK_ALL = 'djbags_stack_all_items'
DJBags_SETTING_SELL_JUNK = 'djbags_auto_sell_junk'
DJBags_SETTING_DEPOSIT_REAGENT = 'djbags_auto_deposit_reagents'
DJBags_SETTING_BOE = 'djbags_class_boe'
DJBags_SETTING_BOA = 'djbags_class_boa'

--endregion

--region Locale

local localeText= {}
localeText['enUS'] = function()
    DJBags_LOCALE_MAIN_SETTINGS = 'Main Settings:'
    DJBags_LOCALE_ITEM_CONTAINER_SETTINGS = 'Item Container Settings:'
    DJBags_LOCALE_CONTAINER_SETTINGS = 'Category Container Settings:'
    DJBags_LOCALE_SUB_CLASS_SETTINGS = 'Sub Class Settings:'
    DJBags_LOCALE_MAIN_BAR_SETTINGS = 'Main Bar Settings:'
    DJBags_LOCALE_BANK_BAR_SETTINGS = 'Bank Bar Settings:'
    DJBags_LOCALE_FORMAT_SETTINGS = 'Format Settings:'
    DJBags_LOCALE_SETTINGS = 'DJBags Settings:'
    DJBags_LOCALE_CLEAR_NEW_ITEMS = 'Clear new items'
    DJBags_LOCALE_BACKGROUND_COLOR = 'Background color'
    DJBags_LOCALE_BORDER_COLOR = 'Border color'
    DJBags_LOCALE_TEXT_COLOR = 'Text color'
    DJBags_LOCALE_PADDING = 'Padding'
    DJBags_LOCALE_SPACING = 'Spacing'
    DJBags_LOCALE_SCALE = 'Scale'
    DJBags_LOCALE_TEXT_SIZE = 'Text size'
    DJBags_LOCALE_STACK_ALL = 'Stack all items'
    DJBags_LOCALE_SELL_JUNK = 'Auto sell junk'
    DJBags_LOCALE_DEPOSIT_REAGENT = 'Auto deposit reagents'
    DJBags_LOCALE_MASONRY = 'Masonry'
    DJBags_LOCALE_BOX = 'Box'
    DJBags_LOCALE_CATEGORY_DIALOG_TITLE = 'Set category for: %s'
    DJBags_LOCALE_GLOBAL = 'Global'
    DJBags_LOCALE_BOE = 'BoE'
    DJBags_LOCALE_BOA = 'BoA'
    DJBags_LOCALE_VERTICAL = 'Vertical'
    DJBags_LOCALE_MAX_ITEMS = 'Max items'
    DJBags_LOCALE_MAX_HEIGHT = 'Max height'
    DJBags_LOCALE_SOLD_JUNK = 'Sold junk for: %s'
    DJBags_LOCALE_CLEAR_NEW_ITEMS = 'Clear new items on close'
end

localeText['deDE'] = function()
    DJBags_LOCALE_MAIN_SETTINGS = 'Allgemein:'
    DJBags_LOCALE_ITEM_CONTAINER_SETTINGS = 'Gegenstandsbeh??lter:'
    DJBags_LOCALE_CONTAINER_SETTINGS = 'Kategoriebeh??lter:'
    DJBags_LOCALE_SUB_CLASS_SETTINGS = 'Untergliederung:'
    DJBags_LOCALE_MAIN_BAR_SETTINGS = 'Hauptleiste:'
    DJBags_LOCALE_BANK_BAR_SETTINGS = 'Bankleiste:'
    DJBags_LOCALE_FORMAT_SETTINGS = 'Format:'
    DJBags_LOCALE_SETTINGS = 'DJBags-Einstellungen:'
    DJBags_LOCALE_CLEAR_NEW_ITEMS = 'Neue Gegenst??nde leeren'
    DJBags_LOCALE_BACKGROUND_COLOR = 'Hintergrundfarbe'
    DJBags_LOCALE_BORDER_COLOR = 'Rahmenfarbe'
    DJBags_LOCALE_TEXT_COLOR = 'Schriftfarbe'
    DJBags_LOCALE_PADDING = 'Einr??ckung'
    DJBags_LOCALE_SPACING = 'Abstand'
    DJBags_LOCALE_SCALE = 'Skalierung'
    DJBags_LOCALE_TEXT_SIZE = 'Schriftgr????e'
    DJBags_LOCALE_STACK_ALL = 'Alle Gegenst??nde stapeln'
    DJBags_LOCALE_SELL_JUNK = 'Schrott autom. verkaufen'
    DJBags_LOCALE_DEPOSIT_REAGENT = 'Material automatisch einlagern'
    DJBags_LOCALE_MASONRY = 'Mauerwerk'
    DJBags_LOCALE_BOX = 'Kiste'
    DJBags_LOCALE_CATEGORY_DIALOG_TITLE = 'Kategorie festlegen f??r: %s'
    DJBags_LOCALE_GLOBAL = 'Global'
    DJBags_LOCALE_BOE = 'Beim Anlegen gebunden'
    DJBags_LOCALE_BOA = 'Battle.net-Accountgebunden'
    DJBags_LOCALE_VERTICAL = 'Vertikal'
    DJBags_LOCALE_MAX_ITEMS = 'Max. Gegenst??nde'
    DJBags_LOCALE_MAX_HEIGHT = 'Max. H??he'
    DJBags_LOCALE_SOLD_JUNK = 'Schrott verkauft f??r: %s'
    DJBags_LOCALE_CLEAR_NEW_ITEMS = 'Clear new items on close'
end

localeText['zhTW'] = function()
    DJBags_LOCALE_MAIN_SETTINGS = '?????????:'
    DJBags_LOCALE_ITEM_CONTAINER_SETTINGS = '??????????????????:'
    DJBags_LOCALE_CONTAINER_SETTINGS = '??????????????????:'
    DJBags_LOCALE_SUB_CLASS_SETTINGS = '???????????????:'
    DJBags_LOCALE_MAIN_BAR_SETTINGS = '?????????????????????:'
    DJBags_LOCALE_BANK_BAR_SETTINGS = '?????????????????????:'
    DJBags_LOCALE_FORMAT_SETTINGS = '??????????????????:'
    DJBags_LOCALE_SETTINGS = 'DJBags ????????????:'
    DJBags_LOCALE_CLEAR_NEW_ITEMS = '???????????????'
    DJBags_LOCALE_BACKGROUND_COLOR = '????????????'
    DJBags_LOCALE_BORDER_COLOR = '????????????'
    DJBags_LOCALE_TEXT_COLOR = '????????????'
    DJBags_LOCALE_PADDING = '??????'
    DJBags_LOCALE_SPACING = '??????'
    DJBags_LOCALE_SCALE = '????????????'
    DJBags_LOCALE_TEXT_SIZE = '????????????'
    DJBags_LOCALE_STACK_ALL = '??????????????????'
    DJBags_LOCALE_SELL_JUNK = '???????????????'
    DJBags_LOCALE_DEPOSIT_REAGENT = '??????????????????'
    DJBags_LOCALE_MASONRY = '??????'
    DJBags_LOCALE_BOX = '??????'
    DJBags_LOCALE_CATEGORY_DIALOG_TITLE = '????????????: %s'
    DJBags_LOCALE_GLOBAL = '??????'
    DJBags_LOCALE_BOE = '????????????'
    DJBags_LOCALE_BOA = '????????????'
    DJBags_LOCALE_VERTICAL = '??????'
    DJBags_LOCALE_MAX_ITEMS = '??????????????????????????????'
    DJBags_LOCALE_MAX_HEIGHT = '????????????'
    DJBags_LOCALE_SOLD_JUNK = '??????????????????: %s'
    DJBags_LOCALE_CLEAR_NEW_ITEMS_SETTINGS = '??????????????????????????????'
end

if localeText[GetLocale()] then
    localeText[GetLocale()]()
else
    localeText['enUS']()
end

--endregion
