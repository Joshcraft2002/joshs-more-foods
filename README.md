If you want to easily merge datapacks and resourcepacks together, you can use [weld](https://weld.smithed.dev/) 
(some packs may not be compatible with others, but Josh's More Foods follows smithed's conventions for better compatibility with other packs)

# Josh's More Foods
There are currently a bit over 50 recipes added by this pack, with a lot more coming in the future.

## Disclaimer
This datapack is incompatible with other packs or mods that unlock all recipes, as the crafting system relies on learning new recipes.

Many foods rely on the saturation effect to have custom nutrition values. As such, mods like Appleskin won't be accurate to the true value of these items. To account for this, there is a craftable nutrition book that shows all the values.

## Recipes and Information
To view this datapack's recipes and other information in-game, you can craft Josh's Cookbook using bread and a book and quill.

You can also refer to the [wiki](https://github.com/Joshcraft2002/joshs-more-foods/wiki). (currently a WIP for v4+)

You may need to craft a new book depending on updates (refer to the changelog for more information)

## Installing
Open the latest version in the releases tab on the right. Download the resource pack and place it in your `resourcepacks` folder, then download the datapack and place it in the `datapacks` folder of your world or server.

## Updating to v4.0.0 and above
It should be fine to update directly from v3 to v4, with just the following to note:
- Old food will turn into vanilla items (that can safely be consumed)
- Rice Making Station items will turn into item frames and won't work, these are best discarded
- Rice Making Stations placed will be broken, but drop the new Cooking Station item
- The Cookbook will have to be recrafted for the update, but for likely the final time (a feature is being worked on to just craft it into an updated version)

## Issues
Doughnuts crafted before v4.1.0 could only be done once, and never again. This has been fixed as of v4.1.0, but players who did craft doughnuts in earlier version have to drink Gilded Tea to craft them again.

Gilded Tea can be obtained through the following command (@s can also be substituted for any player name):
`loot give @s loot jmmf:gilded_tea`

## Links
[Modrinth](https://modrinth.com/datapack/joshs-more-foods)

[Planet Minecraft](https://www.planetminecraft.com/data-pack/josh-s-more-foods-20-new-recipes/)

[Smithed](https://smithed.dev/packs/Ll8QwDr1ZYTuvnV8DEjJ)

## Credits
Sprites are made by me, [Bonii](https://twitter.com/ChalkDev), RenTheMan, Sirenity, VidiTerraNovum

Language Contributions:
- Chinese (zh_cn) by [Rain_G](https://www.planetminecraft.com/member/rain_g/) & their team
- Brazilian Portuguese (pt_br) by [MeiaQuatru](https://www.planetminecraft.com/member/meiaquatru/)
- Russian (ru_ru) by [Ll66dar](https://www.planetminecraft.com/member/ll66dar/)
- Ukrainian (uk_ua) by [MrBaget](https://modrinth.com/user/MrBaget)

This datapack uses the Smithed Custom Block library and an adaptation of the Custom Crafter library, both under the MIT License. [License](LICENSE-smithed)

## Contributing
If you want to submit translations, hit me up on discord: joshmats
- If you don't want to open up the datapack file, you can find a sample of the language file [here](sample_language_file.json)
- For the cookbook, tweak your phrasing and use of newlines (\n) to better fit the text, though I can handle the newline part. Either way, it would be good to coordinate via discord in case of any issues.