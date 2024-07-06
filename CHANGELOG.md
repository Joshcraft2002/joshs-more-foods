# v5.1.3
## Fixes
- Removed a file from an older version that prevented some people from loading the data pack
> Note: no resourcepack change was made

# v5.1.2
## Fixes
- Pressing Q while hovering over the water bar in the Cooking Station would drop it as an item and not destroy it
> Note: no resourcepack change was made

# v5.1.1
## Added
- Brought v5.0.1 changes to 1.21
## Fixes
- Removed extra files from pre-1.21

# v5.1.0
## Added
- 1.21 support (this version is incompatible with 1.20.6 and below)

# v5.0.3
## Fixes
- Removed a file from an older version that prevented some people from loading the data pack
> Note: no resourcepack change was made

# v5.0.2
## Fixes
- Pressing Q while hovering over the water bar in the Cooking Station would drop it as an item and not destroy it
> Note: no resourcepack change was made

# v5.0.1
## Changed
- Updated Vietnamese (vi_vn) language support
## Fixes
- Crafting Cookbook or Book of Nutrition not giving the updated book

# v5.0.0
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

# v4.1.9
## Fixes
- Pressing Q while hovering over the water bar in the Cooking Station would drop it as an item and not destroy it
> Note: no resourcepack change was made; there is no need to update the resourcepack

# v4.1.8
## Added
- Vietnamese (vi_vn) language support
 > Note: This is mostly a resourcepack change, you don't need to update the datapack itself (only cookbook cover version is changed via datapack)

# v4.1.7
## Fixes
- Fish and chips not giving the actual nutrition values
- Leche Flan having the wrong nutrition values in the nutrition book

# v4.1.6
## Fixes
- Fixed issues from Nutrition book not having a proper json file (weld, possibly realms?)
- Updated max inclusive version of resource pack (should no longer say outdated on versions up to 1.20.4)

# v4.1.5
## Fixes
- Cookbook & Nutrition book now properly display on 1.20.3+
> credits to carloshgv for the quick fix

# v4.1.4
## Added
- Ukrainian (uk_ua) language support
## Fixes
- Cookbook Fixes
    - Datapack Credits linking to Nutrition Book Page
    - Ice Cream Page icon showing Sweet Berry Pie instead of Apple Ice Cream
> Note: cookbook fixes only apply to newly crafted books, don't bother if the issues don't bother you

# v4.1.3
## Fixes
- Fixed some loot table files in an attempt to fix realms compatibility
    - split up knife functions to now also use `set_attributes` and `set_lore`
    - merged cookbook `set_nbt` tag to a single line
> Note: no resourcepack change was made; there is no need to update the resourcepack

# v4.1.2
## Added
- Russian (ru_ru) language support
## Changed
Reworked a bit of the formatting behind the cookbook's text
- Some images were resized, text spacing altered, and "spacer" texts between crafting recipes were added to accomodate certain languages taking up more space per word
> this *does* mean the cookbook has to be recrafted if you get this update. Sorry!
## Fixes
- Pumpkin Ice Cream name not showing in cookbook

# v4.1.1
## Added
- Brazilian Portuguese (pt_br) language support
 > Note: This is only a resourcepack change, you don't need to update the datapack itself

# v4.1.0
## Added
Gilded Tea is an item obtainable only through commands that, when consumed, fixes bugs not easily patched through updates. Currently, drinking it fixes the doughnut crafting bug from v4.0.3 and below for any player that crafted them in those versions
 > to obtain, run the command "/loot give @s loot jmmf:gilded tea" (@s can be substituted for any player name)
## Fixes
- Doughnuts only being craftable once
- Spruce Tea Typo in the Chinese translation

# v4.0.3
## Fixes
- Removed Sushi recipe (it was supposed to be removed in v4 but I forgot about it)

# v4.0.2
## Fixes
- Fried & Boiled egg not giving extra saturation
- Nutrition Book not showing correct nutrition information for Fried & Boiled Egg
- README links being on the same line

# v4.0.1
## Added
- Chinese (zh_cn) language support

# v4.0.0
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
