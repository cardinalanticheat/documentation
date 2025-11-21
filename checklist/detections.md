---
icon: codespaces
order: -2
author:
  - name: micartey
    avatar: https://github.com/micartey.png
---

> Every check has a `Type A`, `Type B`, ... suffix.
>
> You can get a completet list with all suffix with `/cac check list`
>
> Exceptions to that rule are:
>
> - _FastLadder_
> - _NoFall_
> - _NoGround_
> - _BedFucker_

## Combat

| Prefix       | Description                                                                 |
| ------------ | --------------------------------------------------------------------------- |
| _KillAura_   | Some attack patterns that are normally only possible through KillAura usage |
| _Reach_      | Hitting an enemy more than 3 blocks away                                    |
| _NoSwing_    | Hitting without arm animation                                               |
| _BlockHit_   | Hitting while blocking                                                      |
| _Hitbox_     | Hitting the entity while not looking at them                                |
| _WallAttack_ | Hitting through solid blocks                                                |

## Movement

| Prefix       | Description                                     |
| ------------ | ----------------------------------------------- |
| _Speed_      | Moving faster than allowed                      |
| _Fly_        | Flying                                          |
| _Motion_     | Y-Position updates that are not possible        |
| _InvMove_    | Moving with an opened inventory                 |
| _NoSlowdown_ | Not slowing down while using a bow or eating    |
| _Velocity_   | Getting less velocity then expected             |
| _Strafe_     | Changing directions in air                      |
| _PacketPort_ | Sending positional packets with a high distance |
| _Jesus_      | Pretending to be the chosen one                 |
| _FastLadder_ | Being fast on ladders                           |
| _Blink_      | Supressing movement packets                     |

## World

| Prefix      | Description                                                       |
| ----------- | ----------------------------------------------------------------- |
| _Nofall_    | Sending onground packets while not on ground                      |
| _NoGround_  | Don't sending onground packets while on ground                    |
| _Scaffold_  | Some block placement checks                                       |
| _BedFucker_ | Additional Checks to prevent BedFucker hacks - useful for bedwars |

## Packet

| Prefix         | Description                                                                            |
| -------------- | -------------------------------------------------------------------------------------- |
| _BadPacket_    | Detect some bad and fabricated packets - **NOT** detecting crashers etc.               |
| _NetFrequence_ | Detect additional sent packets caused by e.g. timer hacks                              |
| _Transaction_  | Do not disable this check as disabling this might make a majority of checks bypassable |
