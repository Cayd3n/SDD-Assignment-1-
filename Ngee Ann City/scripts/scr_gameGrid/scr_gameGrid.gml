// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function GridSwap(objectFrom,slotFrom,objectTo,slotTo){
	var _itemFrom = objectFrom.inventory[slotFrom]
	objectFrom.inventory[slotFrom] = objectTo.inventory[slotTo];
	objectTo.inventory[slotTo] = _itemFrom;
}
