#ifndef MAPHANDLER_H
#define MAPHANDLER_H

#include "Main.h"

#define TAG_INDEX_ADDRESS 0x40440000
#define SCENARIO_INDEX 0
#define INVALID_ENTITY -1

class MapHandler
{
public:
  MapHandler();
  ~MapHandler();

  void AddToString(const char* cFmt, ...);
  void ThrowError(char* Error, bool IsWinAPI);

  void* pHand;
  void* pMapHand;
  void* pMapView;
  MapHeader* Map;
  TagInstance* Tag;
  bool InitMap();
  MapHeader* LoadMapToMemory();
  void UnloadMapFromMemory();

  void ExtractScript();
  void ExtractNodeData(DWORD NodeIndex, DWORD ScriptIndex);
  char* GetScriptTypeString(WORD ScriptType);
  char* GetScriptReturnTypeString(WORD ReturnType);
  void AddEndParentheses();
  void InitNewGlobalString(DWORD GlobalIndex);
  void InitNewScriptString(DWORD ScriptIndex);
  void ClearString();

  string s;
  string MapFile;
  string FinalString;
  const char* MapFileName;
  DWORD ScriptCount;
  DWORD GlobalCount;
  DWORD ParenthesesCount;

  _TagIndex* TagIndex;
  _Scenario* Scenario;
  _ScriptNodeData* ScriptNodeData;
  Scenario_Scripts* Script;
  Scenario_Globals* Global;
  char* ScriptStrings;
};

#endif /* MAPHANDLER_H */