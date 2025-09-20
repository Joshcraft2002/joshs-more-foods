# 5.2.4 (2025-09-20)
Egg drop soup no longer requires (and consumes) a bowl to craft
- The bowl of the soup base counts as the bowl for this recipe

# 5.2.3 (2025-03-24)
## Added
- Traditional Chinese (Taiwan) (zh_tw) language support

# 5.2.2 (2025-02-04)
## Fixes
- Cooking station using an invalid png, causing some issues with resource merging (such as via Nexo)

# 5.2.1 (2024-12-03)
## Added
- French (fr_fr) language support
## Changes
### Cookbook
- Version line now handled by lang file instead of being hardcoded (and requiring a recraft/update to show the change)
- Black Tea no longer has an underline

# 5.2.0 (2024-10-23)
## Added
- 1.21.2 support (this version is incompatible with 1.21.1 and below)
## Changed
- Items use `item_model` instead of `custom_model_data` component, some items now using `consumable`
    - **almost everything will have to be recrafted (again)**
- Tea made to feel more like being drunk rather than eaten
- Tea and Rotten Stew now give teacups and bowls respectively through the `use_remainder` component instead of advancements
- Reworked changelog format (github only)
    - organize by date
    - support branch changelogs (when updated after this point) will only contain changes in that version series (e.g 5.1.x only, etc.)
## Removed
- Old uninstall function from before v4