#include <amxmodx>
#include <cstrike>
#include <customshop>
#include <engine>
#include <fun>

additem ITEM_AWP_ONE

public plugin_init()
	register_plugin("CSHOP: AWP 1 Bullet", "1.0", "OciXCrom")

public plugin_precache()
	ITEM_AWP_ONE = cshop_register_item("awponebullet", "AWP (1 bullet)", 6000)
	
public cshop_item_selected(id, iItem)
{
	if(iItem == ITEM_AWP_ONE)
	{
		cs_set_weapon_ammo(give_item(id, "weapon_awp"), 1)
		cs_set_user_bpammo(id, CSW_AWP, 0)
	}
}