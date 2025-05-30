#pragma newdecls required
#pragma semicolon 1

#include <sourcemod>
#include <sdktools>

public Plugin myinfo = {
	name = "Gris/Grau Extra Stages",
	author = "koen",
	description = "Adds support for extra stages of Gris and Grau",
	version = "",
	url = "https://github.com/notkoen"
};

public void OnMapStart()
{
	char sBuffer[128];
	GetCurrentMap(sBuffer, sizeof(sBuffer));
	int len = strlen(sBuffer);
	for (int i = 0; i < len; i++)
	{
		sBuffer[i] = CharToLower(sBuffer[i]);
	}

	if (strncmp(sBuffer, "ze_grau", 7) == 0)
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
	else if (strncmp(sBuffer, "ze_gris", 7) == 0)
	{
		PrecacheSound("#koen/gris/grievouslady_fix.mp3");
		PrecacheSound("#koen/gris/OuroVoros.mp3");
		AddFileToDownloadsTable("sound/koen/gris/grievouslady_fix.mp3");
		AddFileToDownloadsTable("sound/koen/gris/OuroVoros.mp3");
	}
	else
	{
		GetPluginFilename(INVALID_HANDLE, sBuffer, sizeof(sBuffer));
		ServerCommand("sm plugins unload %s", sBuffer);
	}
}