# 5.4.0 (2025-)
## Added
- 1.21.5 support (this version is incompatible with 1.21.4 and below)
## Changed
- Cooking Station GUI text is no longer centered, but now shows its language translations
- Water Level GUI no longer uses leather helmets as the base item
- Italicization is no longer specified on custom items
    - May cause old items to not stack with newer ones, but they should be compatible in recipes
## Removed
- Bowl eating loot table leftover from earlier versions

# 5.3.2 (2025-02-26)
## Fixes
- Tea not giving back their teacups

# 5.3.1, 5.2.2 (2025-02-04)
## Fixes
- Cooking station using an invalid png, causing some issues with resource merging (such as via Nexo)

# 5.1.7, 5.0.7, 4.1.11 (2025-02-04)
## Fixes
- Cooking station using an invalid png, causing some issues with resource merging (such as via Nexo)
## Removed
- Unused cooking station model files

# 5.3.0 (2024-12-03)
## Added
- 1.21.4 support
    - Resource pack is incompatible with 1.21.3 and below, and must be updated
    - Data pack is compatible with (and identical to) 1.21.2+ (no need for recrafts, yay!)
## Fixes
- Missing `/loot` command for Vegetable Salad

# 5.2.1, 5.1.6, 5.0.6 (2024-12-03)
## Added
- French (fr_fr) language support
## Changed
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

# 4.1.10 (2024-08-21)
## Fixes
- Fixed issues from Nutrition book not having a proper json file (again)

# 5.1.5 (2024-07-24)
## Added
- Spanish (es_es) language support
## Fixes
- Sweet Berry Cookie recipe in cookbook showing old sprite

# 5.1.4, 5.0.5 (2024-07-13)
## Added
- German (de_de) language support 

# 5.0.4 (2024-07-10)
## Fixes
- Breaking Birch or Dark Oak leaves would drop the whole leaf block instead of the normal block drops

# 5.1.3, 5.0.3 (2024-07-06)
## Fixes
- Removed a file from an older version that prevented some people from loading the data pack

# 5.1.2, 5.0.2, 4.1.9 (2024-07-05)
## Fixes
- Pressing Q while hovering over the water bar in the Cooking Station would drop it as an item and not destroy it

# 5.1.1 (2024-07-03)
## Added
- Vietnamese (vi_vn) language support
## Fixes
- Crafting Cookbook or Book of Nutrition not giving the updated book
- Removed extra files from pre-1.21

# 5.0.1 (2024-07-03)
## Added
- Vietnamese (vi_vn) language support (shared with v5.1.1)
## Fixes
- Crafting Cookbook or Book of Nutrition not giving the updated book

# 4.1.8 (2024-07-03)
## Added
- Vietnamese (vi_vn) language support

# 4.1.7 (2024-06-30)
## Fixes
- Fish and chips not giving the actual nutrition values ([#24](https://github.com/Joshcraft2002/joshs-more-foods/issues/24))
- Leche Flan having the wrong nutrition values in the nutrition book

# 5.1.0 (2024-06-30)
## Added
- 1.21 support (this version is incompatible with 1.20.6 and below)

# 5.0.0 (2024-06-30)
## Added
- 1.20.5/1.20.6 support (this version is incompatible with 1.20.4 and below)
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

# 4.1.6 (2024-06-12)
## Fixes
- Fixed issues from Nutrition book not having a proper json file (weld, possibly realms?)
- Updated max inclusive version of resource pack (should no longer say outdated on versions up to 1.20.4)

# 4.1.5 (2024-06-05)
## Fixes
- Cookbook & Nutrition book now properly display on 1.20.3+
> credits to carloshgv for the quick fix

# 4.1.4 (2023-11-02)
## Added
- Ukrainian (uk_ua) language support
## Fixes
- Cookbook Fixes
    - Datapack Credits linking to Nutrition Book Page
    - Ice Cream Page icon showing Sweet Berry Pie instead of Apple Ice Cream
> Note: cookbook fixes only apply to newly crafted books, don't bother if the issues don't bother you

# 4.1.3 (2023-10-19)
## Fixes
- Fixed some loot table files in an attempt to fix realms compatibility
    - split up knife functions to now also use `set_attributes` and `set_lore`
    - merged cookbook `set_nbt` tag to a single line

# 4.1.2 (2023-10-15)
## Added
- Russian (ru_ru) language support
## Changed
Reworked a bit of the formatting behind the cookbook's text
- Some images were resized, text spacing altered, and "spacer" texts between crafting recipes were added to accomodate certain languages taking up more space per word
## Fixes
- Pumpkin Ice Cream name not showing in cookbook

# 4.1.1 (2023-10-26)
## Added
- Brazilian Portuguese (pt_br) language support

# 4.1.0 (2023-09-24)
## Added
Gilded Tea is an item obtainable only through commands that, when consumed, fixes bugs not easily patched through updates. Currently, drinking it fixes the doughnut crafting bug from v4.0.3 and below for any player that crafted them in those versions
 > to obtain, run the command "/loot give @s loot jmmf:gilded tea" (@s can be substituted for any player name)
## Fixes
- Doughnuts only being craftable once
- Spruce Tea Typo in the Chinese translation

# 4.0.3 (2023-09-18)
## Fixes
- Removed Sushi recipe (it was supposed to be removed in v4 but I forgot about it)

# 4.0.2 (2023-09-14)
## Fixes
- Fried & Boiled egg not giving extra saturation
- Nutrition Book not showing correct nutrition information for Fried & Boiled Egg
- README links being on the same line

# 4.0.1 (2023-09-12)
## Added
- Chinese (zh_cn) language support

# 4.0.0 (2023-09-10)
Lots of stuff were changed behind the scenes, and more content was added.
More details about each are detailed in the Cookbook (which you'll have to craft again but I promise it's the last time... a feature is coming soon to fix that)
## Added
### Cooking Station
The Rice Making Station has been replaced with the more versatile Cooking Station. It now comes with a water guage and cooks items one at a time rather than instant batches like the old station. This does mean that ingredients no longer need to be of the same amount.
Ingredient input is now shapeless, and can be placed in any order.
### Tea
A new tea food system has been added. Tea Leaves are dropped from Oak, Dark Oak, and Birch trees, and these are used to make various teas at the Cooking Station with teacups. Drinking tea also gives a regenerative effect.
### Food
A lot of new foods were added, more than doubling the existing collection.
#### Breads
- Bagel
- Sweet Roll
#### Doughnuts
- Black Forest Doughnut
- Chocolate Doughnut
- Sugar Doughnut
#### Pies
- Chicken Pot Pie
- Shepherd's Pie
#### Salad
- Fleshy Salad
- Fruit Salad
#### Tea
- Cornflower Tea
- Dandelion Tea
- Green Tea
- Rose Tea
- Sakura Tea
- Spruce Tea
- Sweet Berry Tea
#### Other
- Boiled Egg
- Champorado (Rice)
- Fried Egg
- Pie Crust (for Pies)
- Rotten Stew
### Josh's Book of Nutrition
Another guidebook that shows the hunger and saturation values of foods added by the pack. This is to account for custom nutrition values being given by commands, meaning mods like Appleskin will only show the values of the base vanilla item.
### Language Support
Right now it's only US English, but I accept submissions.
## Changed
- All food now stacks up to 64
- Bunch of CustomModelData changes (old food will look like vanilla items again)
- [Smithed](https://smithed.dev/) Support - moving off from CTC and hopes to still allow good compatibility with other packs
## Removed
- Sushi (will return)
