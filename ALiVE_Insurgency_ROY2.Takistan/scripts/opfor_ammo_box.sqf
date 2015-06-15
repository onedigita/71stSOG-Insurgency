/******************
*
*   By Nighteyes
*
*******************/
 
 
private ["_crate"];
 
_crate = _this select 0;
_crate addAction ["<t color='#E3F059'>Equip Suicide Vest</t>", "scripts\suicide_vest.sqf"];
 
if (isServer) then
{
        while {alive _crate} do
        {
                clearWeaponCargoGlobal _crate;
        clearMagazineCargoGlobal _crate;
        clearItemCargoGlobal _crate;
 
        //backpacks ----------------------------------------------------------
                _crate addBackpackCargoGlobal ["B_Carryall_cbr",4];
                _crate addBackpackCargoGlobal ["B_Carryall_oli",4];
                _crate addBackpackCargoGlobal ["B_Carryall_khk",4];
               
 
                //RPG-7 --------------------------------------------------------------
                _crate addWeaponCargoGlobal ["launch_B_Titan_F",2];
                _crate addWeaponCargoGlobal ["launch_RPG32_F",5];
                _crate addMagazineCargoGlobal ["Titan_AA",5];
                _crate addMagazineCargoGlobal ["RPG32_F",10];
                _crate addMagazineCargoGlobal ["RPG32_HE_F",10];

 
 
        //Pistol's ---------------------------------------------------------------
                _crate addWeaponCargoGlobal ["hgun_ACPC2_F",10];
                _crate addMagazineCargoGlobal ["9Rnd_45ACP_Mag",30];
               
        //radios's ---------------------------------------------------------------
                _crate addItemCargoGlobal ["tf_fadak",50];
               
 	//Civ uniforms ---------------------------------------------------------------

        //AK's ---------------------------------------------------------------
                _crate addWeaponCargoGlobal ["arifle_Mk20_F",10];
                _crate addWeaponCargoGlobal ["arifle_Mk20_GL_F",3];
                _crate addWeaponCargoGlobal ["LMG_Mk200_F",2];
                _crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag",40];
                _crate addMagazineCargoGlobal ["200Rnd_65x39_cased_Box",10];
                _crate addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];

               
                //BINOCS ITEMS ------------------------------------------------------------
                _crate addItemCargoGlobal ["Binocular",10];
 
                //Grenadier ------------------------------------------------------

 
                //IEDS grenades --------------------------------------------------------------
 
                _crate addMagazineCargoGlobal ["IEDUrbanBig_Remote_Mag",15];
                _crate addMagazineCargoGlobal ["HandGrenade",15];
                _crate addMagazineCargoGlobal ["SmokeShellRed",30];
              
        sleep 600;
        };
};