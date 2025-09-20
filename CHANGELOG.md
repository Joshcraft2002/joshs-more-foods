# 5.0.9 (2025-09-20)
- Egg drop soup no longer requires (and consumes) a bowl to craft
> The bowl of the soup base counts as the bowl for this recipe

# 5.0.8 (2025-03-24)
## Added
- Traditional Chinese (Taiwan) (zh_tw) language support

# 5.0.7 (2025-02-04)
## Fixes
- Cooking station using an invalid png, causing some issues with resource merging (such as via Nexo)
## Removed
- Unused cooking station model files

# 5.0.6 (2024-12-03)
## Added
- French (fr_fr) language support
## Changes
### Cookbook
- Version line now handled by lang file instead of being hardcoded (and requiring a recraft/update to show the change)
- Black Tea no longer has an underline

# 5.0.5 (2024-07-13)
## Added
- German (de_de) language support

# 5.0.4 (2024-07-10)
## Fixes
- Breaking Birch or Dark Oak leaves would drop the whole leaf block instead of the normal block drops

# 5.0.3 (2024-07-06)
## Fixes
- Removed a file from an older version that prevented some people from loading the data pack

# 5.0.2 (2024-07-05)
## Fixes
- Pressing Q while hovering over the water bar in the Cooking Station would drop it as an item and not destroy it

# 5.0.1 (2024-07-03)
## Changed
- Updated Vietnamese (vi_vn) language support
## Fixes
- Crafting Cookbook or Book of Nutrition not giving the updated book

# 5.0.0 (2024-06-30)
## Added
- 1.20.5/1.20.6 support (no longer works for 1.20.4 and below)
### Cookbook/Nutrition Book Updating
You can now put the cookbook or nutrition book in the cooking station as an input to update it (works for any book made since v4.0.0) instead of having to recraft every time.
### Food
More foods were added bring the total recipes to a bit over 60.
#### Pie
- Pork Pie
- Steak Pie
#### Tea
- Bamboo Tea
- Beetroot Tea
- Birch Tea
- Chamomile Tea
- Sunflower Tea
- Black Tea
    - double the effect but half the duration
#### Soups
- Bone Broth
    - to be used as a soup base for some recipes
- Egg Drop Soup
#### Other
- Red Rice
    - alternative to Rice with the exact same use
- Red Rice Bowl
    - Rice Bowl specifically needs regular Rice, using Red Rice instead makes this
- Black Tea Leaves
## Changed
### Items
- All items now use the data component system of 1.20.5
- All recipes can now be directly crafted instead of having to use the knowledge book method
    - this should mean anything that makes you learn all recipes is safe now
### Food
- Food now uses the food component instead of saturation effect (Appleskin can now also see the actual nutrition value). 
- Some food items had their base items changed:
    - fish and chips > rabbit stew
    - ice cream > suspicious stew
    - rice bowl, fried rice, champorado, salads > beetroup soup
- Anything in a bowl now has a max stack size of 16
- Sweet Berry Cookie texture now more cookie-shaped
> Food will have to be recrafted to reflect these changes (some old food will have the wrong texture and/or nutrition value)
### Cooking Station
Cooking Station now has two slots for water: an input slot (marked by a bucket silhouette), and an output slot
- Water buckets are placed in the input slot to fill water, Empty buckets to drain
- Either action above outputs a bucket in the output slot.
> Cooking Stations already placed in the world can be used as normal. Cooking Stations as items will have to be recrafted for technical reasons.
### Other
- Salad in the books is now plural "Salads"
- Updated translations for the new content:
    - Chinese (zh_cn): thanks [Rain_G](https://www.planetminecraft.com/member/rain_g/)!
    - Russian (ru_ru): thanks [Ll66dar](https://www.planetminecraft.com/member/ll66dar/)!
    - Ukrainian (uk_ua): thanks [MrBaget](https://modrinth.com/user/MrBaget)!
### Technical
- Previous smithed dict system for tags like rice changed to a tag under the joshmats namespace (effective for just my packs but gets what I need done)
    - includes `rice`, `rice_bowl`, `cookie`, `doughnut`, `ice_cream`, `soup_base`, `tea`
- Adapted smithed custom block library (before it was used as is)
## Fixes
- All textures (except for regular items) now have a power of 2, and are at least 64px to better accomodate mipmapping
> credits to notfoundname for the tip and initial fixes
## Removed
- Gilded Tea (the bug it fixed no longer exists)
- Brazilian Portuguese (pt_br) language support (may return if the translations get updated for the new content)