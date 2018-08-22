unit cosmos.tools.controller.logsint;

interface

 uses
  cosmos.classes.logs;

 type

  IControllerLogInfo = interface
    ['{91250F55-913A-45CE-9E33-D822B2C827EC}']
    function GetIndex: integer;
    procedure SetIndex(value: integer);
    function GetContext: string;
    procedure SetContext(const value: string);
    function GetData: TDateTime;
    procedure SetData(const value: TDateTime);
    function GetInfo: string;
    procedure SetInfo(const value: string);
    function GetSource: string;
    procedure SetSource(const value: string);
    function GetLogType: TLogEvent;
    procedure SetLogType(const value: TLogEvent);

    property Index: integer read GetIndex write SetIndex;
    property Context: string read GetContext write SetContext;
    property Data: TDateTime read GetData write SetData;
    property Info: string read GetInfo write SetInfo;
    property Source: string read GetSource write SetSource;
    property LogType: TLogEvent read GetLogType write SetLogType;
  end;

  IControllerCosmosLogs = interface
   ['{9C07384E-A3D3-4EFE-9D92-08CFAB3E97FE}']

   function GetCount: integer;
   function GetCurrent: IControllerLogInfo;
   function GetEOF: boolean;
   function GetFileName: string;
   function Prior: IControllerLogInfo;
   function Next: IControllerLogInfo;
   function FindData(const Index: integer): IControllerLogInfo;

   property Count: integer read GetCount;
   property Current: IControllerLogInfo read GetCurrent;
   property EOF: boolean read GetEOF;
   property FileName: string read GetFileName;

 end;

implementation

end.