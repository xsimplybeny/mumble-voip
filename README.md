## Jak podpiąć mumble-voip do swojego hudu?
- Wchodzimy w *mumble-voip/client.lua*.
- Następnie zmieniamy kod.

## Usuń
```lua
local color = {255, 255, 255}
if IsControlPressed(0, 249) then
    color = {255, 0, 0}
end
local size = 0.069
if mumbleConfig.voiceModes[playerMode][2] == 'Whisper' then
    size = size / 4
elseif mumbleConfig.voiceModes[playerMode][2] == 'Normal' then
    size = size / 2
end
```
## Wklej
```lua
local talking = 'Shouting'
local talk_state = false
if mumbleConfig.voiceModes[playerMode][2] == 'Whisper' then
    talking = 'Whisper'
elseif mumbleConfig.voiceModes[playerMode][2] == 'Normal' then
    talking = 'Normal'
elseif mumbleConfig.voiceModes[playerMode][2] == 'Shouting' then
    talking = 'Shouting'
end

if IsControlJustPressed(0, 249) then
    talk_state = true
    exports['nazwa_waszego_hudu']:UpdateVoice(talking, talk_state) #Tu zmien nazwa_waszego_hudu na nazwe folderu z hudem.
end
if IsControlJustReleased(0, 249) then
    talk_state = false
    exports['nazwa_waszego_hudu']:UpdateVoice(talking, talk_state) #Tu zmien nazwa_waszego_hudu na nazwe folderu z hudem.
end
if IsControlJustReleased(0, 166) then
    exports['nazwa_waszego_hudu']:UpdateVoice(talking, talk_state) #Tu zmien nazwa_waszego_hudu na nazwe folderu z hudem.
end
```
## W *__resource.lua* lub *fxmanifest.lua* dopisz:
```lua
export 'UpdateVoice'
```
