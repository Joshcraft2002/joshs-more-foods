from beet import Context, Mcmeta

def beet_default(ctx: Context):
    ctx.data.mcmeta = Mcmeta({
        "pack": {
            "min_format": [ 88, 0 ],
            "max_format": [ 88, 0 ],
            "description": "Datapack for Josh's More Foods. v5.6.0"
        }
    })
    ctx.assets.mcmeta = Mcmeta({
        "pack": {
            "min_format": [ 69, 0 ],
            "max_format": [ 69, 0 ],
            "description":"Resource Pack for Josh's More Foods. v5.6.0"
        }
    })