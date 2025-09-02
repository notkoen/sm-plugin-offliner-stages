#pragma newdecls required
#pragma semicolon 1

#include <sourcemod>
#include <sdktools>

public Plugin myinfo =
{
    name = "Gris/Grau Extra Stages",
    author = "koen",
    description = "Adds support for extra stages of Gris and Grau",
    version = "1.0",
};

public void OnMapStart()
{
    char sCurrentMap[128];
    GetCurrentMap(sCurrentMap, sizeof(sCurrentMap));

    if (strncmp(sCurrentMap, "ze_grau", 7, false) == 0)
    {
        PrecacheSound("#koen/grau/cosmic_railroad.mp3");
        PrecacheSound("#koen/grau/neutron_reaper.mp3");
        PrecacheSound("#koen/grau/vacuum_track.mp3");
        PrecacheSound("#koen/grau/tempestissimo.mp3");

        AddFileToDownloadsTable("sound/koen/grau/cosmic_railroad.mp3");
        AddFileToDownloadsTable("sound/koen/grau/neutron_reaper.mp3");
        AddFileToDownloadsTable("sound/koen/grau/vacuum_track.mp3");
        AddFileToDownloadsTable("sound/koen/grau/tempestissimo.mp3");

        AddFileToDownloadsTable("materials/correction/tilex_stage6.raw");
        AddFileToDownloadsTable("materials/correction/ta_darkness.raw");
        AddFileToDownloadsTable("materials/correction/ta_reversed.raw");
    }
    else if (strncmp(sCurrentMap, "ze_gris", 7, false) == 0)
    {
        PrecacheSound("#koen/gris/grievouslady_fix.mp3");
        PrecacheSound("#koen/gris/ourovoros.mp3");

        AddFileToDownloadsTable("sound/koen/gris/grievouslady_fix.mp3");
        AddFileToDownloadsTable("sound/koen/gris/OuroVoros.mp3");
    }
}