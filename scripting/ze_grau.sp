#pragma newdecls required
#pragma semicolon 1

#include <sourcemod>
#include <sdktools>

public Plugin myinfo =
{
	name = "ze_grau Extra Stages",
	author = "koen",
	description = "Allows extra ze_grau rtv stages to be played",
	version = "",
	url = "https://github.com/notkoen"
};

public void OnMapStart()
{
	char sBuffer[128];
	GetCurrentMap(sBuffer, sizeof(sBuffer));
	if (strcmp(sBuffer, "ze_grau_s3_2", false) != 0)
	{
		GetPluginFilename(INVALID_HANDLE, sBuffer, sizeof(sBuffer));
		ServerCommand("sm plugins unload %s", sBuffer);
	}
	else
	{
		PrecacheSound("#koen/grau/cosmic_railroad.mp3");
		PrecacheSound("#koen/grau/neutron_reaper.mp3");
		AddFileToDownloadsTable("sound/koen/grau/cosmic_railroad.mp3");
		AddFileToDownloadsTable("sound/koen/grau/neutron_reaper.mp3");
	}
}