unit MaptitudeTypeLibrary_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 5/3/2023 2:49:41 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Maptitude 2023\mapt.tlb (1)
// LIBID: {C6CFBA13-1D90-11D1-A325-00609753E196}
// LCID: 0
// Helpfile: 
// HelpString: Maptitude Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN64
// Errors:
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of IMacroVal.Type changed to 'Type_'
//   Hint: Parameter 'property' of IMacroVal.Get changed to 'property_'
//   Hint: Member 'Set' of 'IMacroVal' changed to 'Set_'
//   Hint: Parameter 'property' of IMacroVal.Set changed to 'property_'
//   Hint: Member 'Function' of 'IMaptitude' changed to 'Function_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MaptitudeTypeLibraryMajorVersion = 1;
  MaptitudeTypeLibraryMinorVersion = 0;

  LIBID_MaptitudeTypeLibrary: TGUID = '{C6CFBA13-1D90-11D1-A325-00609753E196}';

  IID_IMacroVal: TGUID = '{C6CFBA15-1D90-11D1-A325-00609753E196}';
  IID_IMaptitude: TGUID = '{C6CFBA12-1D90-11D1-A325-00609753E196}';
  CLASS_Maptitude: TGUID = '{C6CFBA10-1D90-11D1-A325-00609753E196}';
  CLASS_Maptitude_Alt: TGUID = '{C6CFBA11-1D90-11D1-A325-00609753E196}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMacroVal = interface;
  IMacroValDisp = dispinterface;
  IMaptitude = interface;
  IMaptitudeDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Maptitude = IMaptitude;
  Maptitude_Alt = IMaptitude;


// *********************************************************************//
// Interface: IMacroVal
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6CFBA15-1D90-11D1-A325-00609753E196}
// *********************************************************************//
  IMacroVal = interface(IDispatch)
    ['{C6CFBA15-1D90-11D1-A325-00609753E196}']
    function Get_Lon: Integer; safecall;
    procedure Set_Lon(longitude: Integer); safecall;
    function Get_Lat: Integer; safecall;
    procedure Set_Lat(latitude: Integer); safecall;
    function Get_Center: IDispatch; safecall;
    procedure Set_Center(const Center: IDispatch); safecall;
    function Get_Radius: Double; safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(Width: Double); safecall;
    function Get_Height: Double; safecall;
    procedure Set_Height(Height: Double); safecall;
    function Get_Angle: Double; safecall;
    procedure Set_Angle(Angle: Double); safecall;
    function Get_Projection: IDispatch; safecall;
    procedure Set_Projection(const Angle: IDispatch); safecall;
    function Get_Red: Integer; safecall;
    procedure Set_Red(Red: Integer); safecall;
    function Get_Green: Integer; safecall;
    procedure Set_Green(Green: Integer); safecall;
    function Get_Blue: Integer; safecall;
    procedure Set_Blue(Blue: Integer); safecall;
    function Get_Alpha: Integer; safecall;
    procedure Set_Alpha(Alpha: Integer); safecall;
    function Get_type_: WideString; safecall;
    function Get_Nodes: Integer; safecall;
    function Get_Links: Integer; safecall;
    function Get_Matrix: IDispatch; safecall;
    function Get_Core: WideString; safecall;
    function Get_RowIndex: WideString; safecall;
    function Get_ColIndex: WideString; safecall;
    function Get_Rows: Integer; safecall;
    function Get_Cols: Integer; safecall;
    function Copy: IDispatch; safecall;
    function IsEqual(const compare: IDispatch): SYSINT; safecall;
    function Method(const macroname: WideString; arg1: OleVariant; arg2: OleVariant; 
                    arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; arg6: OleVariant; 
                    arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; safecall;
    function Get(const property_: WideString): OleVariant; safecall;
    procedure Set_(const property_: WideString; value: OleVariant); safecall;
    property Lon: Integer read Get_Lon write Set_Lon;
    property Lat: Integer read Get_Lat write Set_Lat;
    property Center: IDispatch read Get_Center write Set_Center;
    property Radius: Double read Get_Radius;
    property Width: Double read Get_Width write Set_Width;
    property Height: Double read Get_Height write Set_Height;
    property Angle: Double read Get_Angle write Set_Angle;
    property Projection: IDispatch read Get_Projection write Set_Projection;
    property Red: Integer read Get_Red write Set_Red;
    property Green: Integer read Get_Green write Set_Green;
    property Blue: Integer read Get_Blue write Set_Blue;
    property Alpha: Integer read Get_Alpha write Set_Alpha;
    property type_: WideString read Get_type_;
    property Nodes: Integer read Get_Nodes;
    property Links: Integer read Get_Links;
    property Matrix: IDispatch read Get_Matrix;
    property Core: WideString read Get_Core;
    property RowIndex: WideString read Get_RowIndex;
    property ColIndex: WideString read Get_ColIndex;
    property Rows: Integer read Get_Rows;
    property Cols: Integer read Get_Cols;
  end;

// *********************************************************************//
// DispIntf:  IMacroValDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6CFBA15-1D90-11D1-A325-00609753E196}
// *********************************************************************//
  IMacroValDisp = dispinterface
    ['{C6CFBA15-1D90-11D1-A325-00609753E196}']
    property Lon: Integer dispid 1610743808;
    property Lat: Integer dispid 1610743810;
    property Center: IDispatch dispid 1610743812;
    property Radius: Double readonly dispid 1610743814;
    property Width: Double dispid 1610743815;
    property Height: Double dispid 1610743817;
    property Angle: Double dispid 1610743819;
    property Projection: IDispatch dispid 1610743821;
    property Red: Integer dispid 1610743823;
    property Green: Integer dispid 1610743825;
    property Blue: Integer dispid 1610743827;
    property Alpha: Integer dispid 1610743829;
    property type_: WideString readonly dispid 1610743831;
    property Nodes: Integer readonly dispid 1610743832;
    property Links: Integer readonly dispid 1610743833;
    property Matrix: IDispatch readonly dispid 1610743834;
    property Core: WideString readonly dispid 1610743835;
    property RowIndex: WideString readonly dispid 1610743836;
    property ColIndex: WideString readonly dispid 1610743837;
    property Rows: Integer readonly dispid 1610743838;
    property Cols: Integer readonly dispid 1610743839;
    function Copy: IDispatch; dispid 1610743840;
    function IsEqual(const compare: IDispatch): SYSINT; dispid 1610743841;
    function Method(const macroname: WideString; arg1: OleVariant; arg2: OleVariant; 
                    arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; arg6: OleVariant; 
                    arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; dispid 1610743842;
    function Get(const property_: WideString): OleVariant; dispid 1610743843;
    procedure Set_(const property_: WideString; value: OleVariant); dispid 1610743844;
  end;

// *********************************************************************//
// Interface: IMaptitude
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6CFBA12-1D90-11D1-A325-00609753E196}
// *********************************************************************//
  IMaptitude = interface(IDispatch)
    ['{C6CFBA12-1D90-11D1-A325-00609753E196}']
    function Coord(longitude: Integer; latitude: Integer): IDispatch; safecall;
    function Circle(const Center: IDispatch; Radius: Double): IDispatch; safecall;
    function Scope(const Center: IDispatch; Width: Double; Height: Double; Angle: Double): IDispatch; safecall;
    function RunMacro(const macroname: WideString; arg1: OleVariant; arg2: OleVariant; 
                      arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; arg6: OleVariant; 
                      arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; safecall;
    function Function_(const macroname: WideString; arg1: OleVariant; arg2: OleVariant; 
                       arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; arg6: OleVariant; 
                       arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; safecall;
    function RunUIMacro(const macroname: WideString; const dbname: WideString; arg1: OleVariant; 
                        arg2: OleVariant; arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; 
                        arg6: OleVariant; arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; safecall;
    function Macro(const macroname: WideString; const dbname: WideString; arg1: OleVariant; 
                   arg2: OleVariant; arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; 
                   arg6: OleVariant; arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; safecall;
    function Lock: Integer; safecall;
    procedure Unlock; safecall;
    function LockTime: Double; safecall;
    function CreateObject(const classname: WideString; const dbname: WideString; arg1: OleVariant; 
                          arg2: OleVariant; arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; 
                          arg6: OleVariant; arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; safecall;
    function DoFunction(const name: WideString; args: OleVariant): OleVariant; safecall;
    function DoMacro(const macroname: WideString; const dbname: WideString; args: OleVariant): OleVariant; safecall;
    function CreateClass(const classname: WideString; const dbname: WideString; args: OleVariant): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMaptitudeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6CFBA12-1D90-11D1-A325-00609753E196}
// *********************************************************************//
  IMaptitudeDisp = dispinterface
    ['{C6CFBA12-1D90-11D1-A325-00609753E196}']
    function Coord(longitude: Integer; latitude: Integer): IDispatch; dispid 1610743808;
    function Circle(const Center: IDispatch; Radius: Double): IDispatch; dispid 1610743809;
    function Scope(const Center: IDispatch; Width: Double; Height: Double; Angle: Double): IDispatch; dispid 1610743810;
    function RunMacro(const macroname: WideString; arg1: OleVariant; arg2: OleVariant; 
                      arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; arg6: OleVariant; 
                      arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; dispid 1610743811;
    function Function_(const macroname: WideString; arg1: OleVariant; arg2: OleVariant; 
                       arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; arg6: OleVariant; 
                       arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; dispid 1610743812;
    function RunUIMacro(const macroname: WideString; const dbname: WideString; arg1: OleVariant; 
                        arg2: OleVariant; arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; 
                        arg6: OleVariant; arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; dispid 1610743813;
    function Macro(const macroname: WideString; const dbname: WideString; arg1: OleVariant; 
                   arg2: OleVariant; arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; 
                   arg6: OleVariant; arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; dispid 1610743814;
    function Lock: Integer; dispid 1610743815;
    procedure Unlock; dispid 1610743816;
    function LockTime: Double; dispid 1610743817;
    function CreateObject(const classname: WideString; const dbname: WideString; arg1: OleVariant; 
                          arg2: OleVariant; arg3: OleVariant; arg4: OleVariant; arg5: OleVariant; 
                          arg6: OleVariant; arg7: OleVariant; arg8: OleVariant; arg9: OleVariant): OleVariant; dispid 1610743818;
    function DoFunction(const name: WideString; args: OleVariant): OleVariant; dispid 1610743819;
    function DoMacro(const macroname: WideString; const dbname: WideString; args: OleVariant): OleVariant; dispid 1610743820;
    function CreateClass(const classname: WideString; const dbname: WideString; args: OleVariant): OleVariant; dispid 1610743821;
  end;

// *********************************************************************//
// The Class CoMaptitude provides a Create and CreateRemote method to          
// create instances of the default interface IMaptitude exposed by              
// the CoClass Maptitude. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMaptitude = class
    class function Create: IMaptitude;
    class function CreateRemote(const MachineName: string): IMaptitude;
  end;

// *********************************************************************//
// The Class CoMaptitude_Alt provides a Create and CreateRemote method to
// create instances of the default interface IMaptitude exposed by
// the CoClass Maptitude_Alt. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMaptitude_Alt = class
    class function Create: IMaptitude;
    class function CreateRemote(const MachineName: string): IMaptitude;
  end;

implementation

uses System.Win.ComObj;

class function CoMaptitude.Create: IMaptitude;
begin
  Result := CreateComObject(CLASS_Maptitude) as IMaptitude
end;

class function CoMaptitude.CreateRemote(const MachineName: string): IMaptitude;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Maptitude) as IMaptitude;
end;

class function CoMaptitude_Alt.Create: IMaptitude;
begin
  Result := CreateComObject(CLASS_Maptitude_Alt) as IMaptitude;
end;

class function CoMaptitude_Alt.CreateRemote(const MachineName: string): IMaptitude;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Maptitude_Alt) as IMaptitude;
end;

end.
