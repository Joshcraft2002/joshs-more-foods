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
