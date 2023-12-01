Resupply = sswd
AmmoBackPack = swssd
JumpJet = swwsw
Rumbler = sawaa
FLAM40 = sasda
TOX13 = sasdd
DumDum = saswwd
Recoiless = sadda
EAT17 = sadws
MG94 = saswd
MGX42 = saswwa
LaserGun = saswa
MediDrone = swaads
Drone = swawds

ObliteratorGL = sawas
DemolisherC4 = sadww
CommandoML = sawsd
FrontShield = swadas
FullShield = swadad
RepairGun = ssads
AntiTankFlameMech = sdwasd
MgAirburstMech = sdwass
Twin20mmMech = sdwasa

Mines = adsw
SmokeRound = dswws
TeslaTower = asswda
AutoTurret = aswda
RailTurret = aswad
GrenadeTurret = aswdds
AntiTankGun = aawwda


Vindicator = ddd
StrafeRun = ddw
HeavyStrafeRun = ddsw
CloseAirSupport = ddsa
FireWall = dwad
ShockField = dwas
Airstrike = dwsda
RailStrike = dswsa
MissileBarrage = dsssas
OrbitalLaser = dwawda
ThunderBarrage = dswwas
PreciseArtillery = dwawsd
Shredder = dadassd

^0::
DpiUpWord:=DemolisherC4
SendStrategem(DpiUpWord)
Return

^[::
WheelClick:=RailStrike
SendStrategem(WheelClick)
Return

^P::
DpiDownWord:=Vindicator
SendStrategem(DpiDownWord)
Return

^L::
DpiCycleWord:=ThunderBarrage


;m5_APC = sdsaad
;m5_HAV = sdsaws
;BastionTank = sdsawd
;Motorcycle = sdsaaw


SendStrategem(DpiCycleWord)
Return

Capslock::e
;WheelUp::WheelDown
;WheelDown::WheelUp

^G::
SendStrategem("wadsws")
Return

^M::
BackBtn=wsdaw
;Reinforce (respawn)
SendStrategem(BackBtn)
Return

SendStrategem(myStrat){
    dpiStratWord=%myStrat%

    Loop, Parse, dpiStratWord
    {
    stratBtn=%A_LoopField%
        if reversed
        {
            if (A_LoopField = "w")
            {
                stratBtn=s
            }
            else if (A_LoopField = "s")
            {
                stratBtn=w
            }
            else if (A_LoopField = "a")
            {
                stratBtn=d
            }
            else if (A_LoopField = "d")
            {
                stratBtn=a
            }
        }
        SendInput, {%stratBtn% down}
        Sleep 1
        SendInput, {%stratBtn% up}
        Sleep 1
    }
}

[::
Send [
Return

[ & Q::
reloadSpam := !reloadSpam
if reloadSpam
    SetTimer, SpamReload, 1
else
    SetTimer, SpamReload, Off
Return

SpamReload:
SendInput r
Return

global reversed := false
^Z::
reversed := !reversed
Return