local item_ammo={}

item_ammo[1]=util.table.deepcopy(data.raw["ammo"]["flame-thrower-ammo"])
item_ammo[1].name="tank-flame-ammo"
item_ammo[1].ammo_type.category="tank-flame-thrower"
item_ammo[1].ammo_type.action.action_delivery[1].projectile_starting_speed=0.4
item_ammo[1].magazine_size=200
item_ammo[1].order="e[flame-thrower]-a"

item_ammo[2]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[2].name="autocannon-shell"
item_ammo[2].ammo_type.category="autocannon-shell"
item_ammo[2].ammo_type.action.action_delivery.projectile="autocannon-projectile"
item_ammo[2].ammo_type.action.action_delivery.starting_speed=1.5
item_ammo[2].ammo_type.action.action_delivery.max_range=25
item_ammo[2].magazine_size=5
item_ammo[2].order="d[cannon-shell]-a[basic]-a"

item_ammo[3]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[3].name="explosive-autocannon-shell"
item_ammo[3].ammo_type.category="autocannon-shell"
item_ammo[3].ammo_type.action.action_delivery.projectile="explosive-autocannon-projectile"
item_ammo[3].ammo_type.action.action_delivery.starting_speed=1.5
item_ammo[3].ammo_type.action.action_delivery.max_range=25
item_ammo[3].magazine_size=5
item_ammo[3].order="d[cannon-shell]-b[explosive]-a"

item_ammo[4]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[4].name="flakcannon-shell"
item_ammo[4].ammo_type.category="flakcannon-shell"
item_ammo[4].ammo_type.action.action_delivery.projectile="flakcannon-projectile"
item_ammo[4].ammo_type.action.action_delivery.starting_speed=3.5
item_ammo[4].ammo_type.action.action_delivery.max_range=30
item_ammo[4].magazine_size=5
item_ammo[4].order="d[cannon-shell]-b[explosive]-c"

item_ammo[5]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[5].name="cannon-shell-arty"
item_ammo[5].ammo_type.category="arty-shell"
item_ammo[5].ammo_type.target_type="position"
item_ammo[5].ammo_type.action.action_delivery.projectile="cannon-arty-projectile"
item_ammo[5].ammo_type.action.action_delivery.starting_speed=0.4
item_ammo[5].ammo_type.action.action_delivery.max_range=70
item_ammo[5].order="d[cannon-shell]-a[basic]-b"

item_ammo[6]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[6].name="explosive-cannon-shell-arty"
item_ammo[6].ammo_type.category="arty-shell"
item_ammo[6].ammo_type.target_type="position"
item_ammo[6].ammo_type.action.action_delivery.projectile="explosive-cannon-arty-projectile"
item_ammo[6].ammo_type.action.action_delivery.starting_speed=0.5
item_ammo[6].ammo_type.action.action_delivery.max_range=70
item_ammo[6].order="d[cannon-shell]-b[explosive]-b"

item_ammo[7]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[7].name="mb-apds"
item_ammo[7].ammo_type.category="mb-cannon-shell"
item_ammo[7].ammo_type.action.action_delivery.projectile="mb-apds-projectile"
item_ammo[7].ammo_type.action.action_delivery.starting_speed=1.2
item_ammo[7].ammo_type.action.action_delivery.max_range=60
item_ammo[7].order="d[cannon-shell]-b[explosive]-d"

item_ammo[8]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[8].name="mb-heat"
item_ammo[8].ammo_type.category="mb-cannon-shell"
item_ammo[8].ammo_type.action.action_delivery.projectile="mb-heat-projectile"
item_ammo[8].ammo_type.action.action_delivery.starting_speed=0.8
item_ammo[8].ammo_type.action.action_delivery.max_range=70
item_ammo[8].order="d[cannon-shell]-b[explosive]-e"

item_ammo[9]=util.table.deepcopy(data.raw["ammo"]["cannon-shell"])
item_ammo[9].name="mb-he"
item_ammo[9].ammo_type.category="mb-cannon-shell"
item_ammo[9].ammo_type.action.action_delivery.projectile="mb-he-projectile"
item_ammo[9].ammo_type.action.action_delivery.starting_speed=0.6
item_ammo[9].ammo_type.action.action_delivery.max_range=60
item_ammo[9].order="d[cannon-shell]-b[explosive]-f"

item_ammo[10]=util.table.deepcopy(data.raw["ammo"]["basic-bullet-magazine"])
item_ammo[10].name="hollow-bullet-magazine"
--item_ammo[10].magazine_size=10
item_ammo[10].ammo_type.action[1].action_delivery[1].target_effects={
    {type = "create-entity",entity_name = "explosion-hit"},
	{type = "damage", damage = { amount = 2 , type = "physical"}},
	{type = "damage", damage = { amount = 2 , type = "impact"}},}
item_ammo[10].order="a[basic-clips]-a[basic-bullet-magazine]-a"

item_ammo[11]=util.table.deepcopy(data.raw["ammo"]["basic-bullet-magazine"])
item_ammo[11].name="incendiary-bullet-magazine"
item_ammo[11].ammo_type.action[1].action_delivery[1].target_effects={
    {type = "create-entity",entity_name = "explosion-hit"},
	{type = "damage", damage = { amount = 2 , type = "explosion"}},
	{type = "damage", damage = { amount = 4 , type = "fire"}},}
item_ammo[11].order="a[basic-clips]-b[piercing-bullet-magazine]-a"

item_ammo[12]=util.table.deepcopy(data.raw["ammo"]["basic-bullet-magazine"])
item_ammo[12].name="explosive-bullet-magazine"
item_ammo[12].ammo_type.action[1].action_delivery[1].target_effects={
    {type = "create-entity",entity_name = "explosion-hit"},
	{type = "damage", damage = { amount = 2 , type = "physical"}},
	{type = "damage", damage = { amount = 6 , type = "explosion"}},}
item_ammo[12].order="a[basic-clips]-b[piercing-bullet-magazine]-b"

item_ammo[0]=#item_ammo


for i=1,item_ammo[0] do -- Generates icons and minable.result using name
item_ammo[i].icon=toicon(item_ammo[i].name)
end

for e=1,item_ammo[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
item_ammo[e],
})
end