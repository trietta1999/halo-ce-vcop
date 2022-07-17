#ifndef MAIN_H
#define MAIN_H

#include <Windows.h>
#include <iostream>
#include <sstream>
#include <string>

using namespace std;

struct Entity;
struct DataHeader;
struct _TagIndex;
struct TagInstance;
struct TagReference;
struct TagBlock;
struct _Scenario;
struct Scenario_Scripts;
struct _ScriptNodeData;
struct ScriptNode;

// bitfield
enum ExpressionType
{
  etype_parentheses = 8,
  etype_regular_expression,
  etype_script_name,
  etype_global = 13
};

enum ScriptType
{
  stype_startup,
  stype_dormant,
  stype_continuous,
  stype_static,
  stype_stub
};

enum ReturnType
{
  rtype_unparsed,
  rtype_special_form,
  rtype_function_name,
  rtype_passthrough,
  rtype_void,
  rtype_bool,
  rtype_real,
  rtype_short,
  rtype_long,
  rtype_string,
  rtype_script,
  rtype_trigger_volume,
  rtype_cutscene_flag,
  rtype_cutscene_camera_point,
  rtype_cutscene_title,
  rtype_cutscene_recording,
  rtype_device_group,
  rtype_ai,
  rtype_ai_command_list,
  rtype_starting_profile,
  rtype_conversation,
  rtype_navpoint,
  rtype_hud_message,
  rtype_object_list,
  rtype_sound,
  rtype_effect,
  rtype_damage,
  rtype_looping_sound,
  rtype_animation_graph,
  rtype_actor_variant,
  rtype_damage_effect,
  rtype_object_definition,
  rtype_game_difficulty,
  rtype_team,
  rtype_ai_default_state,
  rtype_actor_type,
  rtype_hud_corner,
  rtype_object,
  rtype_unit,
  rtype_vehicle,
  rtype_weapon,
  rtype_device,
  rtype_scenery,
  rtype_object_name,
  rtype_unit_name,
  rtype_vehicle_name,
  rtype_weapon_name,
  rtype_device_name,
  rtype_scenery_name
};

struct Entity
{
	union
	{
    int Id;
    float real;
    
    struct
    {
		  short Index;
		  short Salt;
    };
	};
};

struct DataHeader
{
	char         Name[32];
	short        Max;		    // Maximum number of instances possible
	short        Size;		  // Size of each instance
	bool         IsValid;
	bool         IdentifierZeroInvalid;
	short        Pad;
	unsigned int Signature; // d@t@
	short        NextIndex;
	short        LastIndex;
	Entity       Next;			// the next instance to be initialized
	union
	{
		unsigned int First;
		PVOID       pFirst;	  // Pointer to the first instance
	};
};

struct MapHeader
{
	int HeadSignature;			// 'deah' translates as head
	int Version;			// 5 = Xbox, 6 = Trial, 7 = PC, 609 = CE
	int DecompLen;			// Actual len of decompressed data. Halo sticks garbage on the end so that the file is one of several fixed sizes (35, etc).
	int Unknown0;
	int TagIndexOffset;
	int TagIndexMetaLength;
	int Unknown1[2];			// both always 0x0
	char MapName[32];
	char BuildDate[32];		// Year.Month.Day.Build - I guess they use this to make sure that a certain build will only open that build's map files, because this string is in the app too
	int MapType;			// 0 = singleplayer, 1 = multiplayer, 2 = ui - this also determines the size of the cache file. UI = 35MB, multiplayer = 47MB, and singleplayer = 270MB
	int Unknown2;
	int Unknown3[485];
	int FootSignature;			// 'toof' translates to foot
};

struct _TagIndex
{
	union
	{
		DWORD		 FirstTagAddress;	// 0x00
		TagInstance* FirstTag;			// 0x00
		TagInstance* Tag;			    // 0x00

	};
	Entity			FirstTagId;			// 0x04
	long			Unknown;			// 0x08
	unsigned long	TagCount;			// 0x0C
	unsigned long	VertexCount;		// 0x10
	unsigned long	VertexOffset;		// 0x14
	unsigned long	IndicesCount;		// 0x18
	unsigned long	IndicesOffest;		// 0x1C
	unsigned long	CRC;				// 0x20
	unsigned long	Signature;			// 0x24		'tags'
}; // Size = 40 bytes(0x28)

struct TagInstance
{
	unsigned long	TagGroup;		// 0x00
  unsigned long	TagChild;		// 0x04
	unsigned long	TagParent;		// 0x08
	Entity			Tag;				// 0x0C
	char*			Name;				// 0x10
	DWORD		Address;			// 0x14
	long			Location;			// 0x18
	long			_Unused;			// 0x1C
}; // Size = 32 bytes(0x20)

struct TagReference
{
	unsigned long	TagGroup;		// 0x00
	char*			    Name;				// 0x04
	long			    NameLength;	// 0x08
	Entity			  Tag;        // 0x0C
}; // Size = 16 bytes(0x10)

struct TagBlock
{
	unsigned long	Count;				// 0x00
	void*		      Address;      // 0x04
	unsigned long	Padding;			// 0x08
}; // Size = 12 bytes(0x0C)

struct Scenario_Scripts
{
  const char     Name[0x20];          // 0x00
  unsigned short ScriptType;          // 0x20
  unsigned short ReturnType;          // 0x22
  Entity         RootExpressionIndex; // 0x24
  unsigned char  Pad[0x34];           // 0x28
};

struct ExpressionField
{
  unsigned char type_parentheses        : 1;
  unsigned char type_global             : 1;
  unsigned char type_script_name        : 1;
  unsigned char type_regular_expression : 1;
  unsigned char type_unused             : 4;
  unsigned char unused;
};

struct ScriptNode
{
  short Salt;
  short Unknown;
  short ReturnType;
  short ExpressionType;
  Entity SiblingNode;
  DWORD StringOffset;
  union
  {
    float Real;
    Entity ChildNode;
  };
};

struct _ScriptNodeData
{
  DataHeader ScriptNodeHeader;
  ScriptNode Node[19001];
};

struct Scenario_Globals
{
  const char Name[0x20];
  unsigned int Type;
  unsigned int Unknown;
  Entity InitExpressionIndex;
  unsigned char Pad[0x30];
};

struct _Scenario
{
	TagReference DontUse;				// 0x0000 'sbsp'
	TagReference WontUse;				// 0x0010 'sbsp'
	TagReference CantUse;				// 0x0020 'sky '
  TagBlock Skies;					// 0x0030
  unsigned short Type;						// 0x003C
  unsigned short Flags;						// 0x003E
	TagBlock ChildScenarios;			// 0x0040
	float LocalNorth;					// 0x004C // Radians
	unsigned char Unknown00[156];				// 0x0050
	TagBlock PredictedResources;		// 0x00EC
	TagBlock Functions;				// 0x00F8
	unsigned int EditorScenarioData;			// 0x0104
	unsigned int Unknown01;					// 0x0108
	unsigned int Unknown02;					// 0x010C
	LPVOID pEditorSenarioData;			// 0x0110
	unsigned int Unknown03;					// 0x0114
	TagBlock Comments;					// 0x0118
	unsigned char Unknown04[224];				// 0x0124
	TagBlock ObjectNames;				// 0x0204
	TagBlock Scenery;					// 0x0210
	TagBlock SceneryPalette;			// 0x021C
	TagBlock Bipeds;					// 0x0228
	TagBlock BipedPalette;			// 0x0234
	TagBlock Vehicles;				// 0x0240
	TagBlock VehiclePalette;			// 0x024C
	TagBlock Equipment;				// 0x0258
	TagBlock EquipmentPalette;		// 0x0264
	TagBlock Weapons;					// 0x0270
	TagBlock WeaponPalette;			// 0x027C
	TagBlock DeviceGroups;			// 0x0288
	TagBlock Machines;				// 0x0294
	TagBlock MachinePalette;			// 0x02A0
	TagBlock Controls;				// 0x02AC
	TagBlock ControlPalette;			// 0x02B8
	TagBlock LightFixtures;			// 0x02C4
	TagBlock LightFixturesPalette;	// 0x02D0
	TagBlock SoundScenery;			// 0x02DC
	TagBlock SoundSceneryPalette;		// 0x02E8
	unsigned char Unknown05[84];				// 0x02F4
	TagBlock PlayerStartingProfile;	// 0x0348
	TagBlock PlayerStartingLocations;	// 0x0354
	TagBlock TriggerVolumes;			// 0x0360
	TagBlock RecordedAnimations;		// 0x036C
	TagBlock NetGameFlags;			// 0x0378
	TagBlock NetGameEquipment;		// 0x0384
	TagBlock StartingEquipment;		// 0x0390
	TagBlock BspSwitchTriggerVolumes;	// 0x039C
	TagBlock Decals;					// 0x03A8
	TagBlock DecalPalette;			// 0x03B4
	TagBlock DetailObjectCollectionPalette;	// 0x03C0
	unsigned char Unknown06[84];				// 0x03CC
	TagBlock ActorPalette;			// 0x0420
	TagBlock Encounters;				// 0x042C
	TagBlock CommandLists;			// 0x0438
	TagBlock AIAnimationReferences;	// 0x0444
	TagBlock AIScriptReferences;		// 0x0450
	TagBlock AIRecordingReferences;	// 0x045C
	TagBlock AIConversations;			// 0x0468
	unsigned int ScriptNodeDataSize;		// 0x0474
	unsigned int Unknown07;					// 0x0478
	TagBlock ScriptNodeData;				// 0x047C
	unsigned int ScriptStringsSize;			// 0x0488
	unsigned int Unknown08;					// 0x048C
	TagBlock ScriptStrings;			// 0x0490
	TagBlock Scripts;					// 0x049C
	TagBlock Globals;					// 0x04A8
	TagBlock References;				// 0x04B4
	TagBlock SourceFiles;				// 0x04C0
	unsigned char Unknown09[24];				// 0x04CC
	TagBlock CutsceneFlags;			// 0x04E4
	TagBlock CutsceneCameraPoints;	// 0x04F0
	TagBlock CutsceneTitles;			// 0x04FC
	unsigned char Unknown10[108];				// 0x0508
	TagReference CustomObjectNames;		// 0x0574
	TagReference InGameHelpText;		// 0x0584
	TagReference HudMessages;			// 0x0594
	TagBlock StructureBSPs;			// 0x05A4
};	// Size = 0x05B0 ( 1456 bytes ) 


#endif /* MAIN_H */