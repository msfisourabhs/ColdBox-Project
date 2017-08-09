/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.RichText){
ColdFusion.RichText={};
}
ColdFusion.RichText.editorState={};
ColdFusion.RichText.buffer=null;
ColdFusion.RichText.initialize=function(id,_c2,_c3,_c4,_c5,_c6,_c7,_c8,_c9,_ca,_cb,_cc,_cd,_ce,_cf){
var _d0=new FCKeditor(id);
ColdFusion.RichText.editorState[id]=false;
_d0.Value=_c3;
_d0.richtextid=id;
if(_c4!=null){
_d0.BasePath=_c4;
}
if(_c5!=null){
_d0.Width=_c5;
}
if(_c6!=null){
_d0.Height=_c6;
}
if(_c7!=null){
_d0.Config.FontNames=_c7;
}
if(_c8!=null){
_d0.Config.FontSizes=_c8;
}
if(_c9!=null){
_d0.Config.FontFormats=_c9;
}
_d0.Config.LinkBrowserURL=_d0.BasePath+"editor/filemanager/browser/default/browser.html?Connector=../../connectors/cfm/connector.cfm";
_d0.Config.LinkUploadURL=_d0.BasePath+"editor/filemanager/connectors/cfm/upload.cfm";
_d0.Config.ImageBrowserURL=_d0.BasePath+"editor/filemanager/browser/default/browser.html?Type=Image&Connector=../../connectors/cfm/connector.cfm";
_d0.Config.ImageUploadURL=_d0.BasePath+"editor/filemanager/connectors/cfm/upload.cfm?Type=Image";
_d0.Config.FlashBrowserURL=_d0.BasePath+"editor/filemanager/browser/default/browser.html?Type=Flash&Connector=../../connectors/cfm/connector.cfm";
_d0.Config.FlashUploadURL=_d0.BasePath+"editor/filemanager/connectors/cfm/upload.cfm?Type=Flash";
if(window._cf_clientid){
_d0.Config.LinkBrowserURL=_d0.Config.LinkBrowserURL+"&_cf_clientid="+_cf_clientid;
_d0.Config.LinkUploadURL=_d0.Config.LinkUploadURL+"?_cf_clientid="+_cf_clientid;
_d0.Config.ImageBrowserURL=_d0.Config.ImageBrowserURL+"&_cf_clientid="+_cf_clientid;
_d0.Config.ImageUploadURL=_d0.Config.ImageUploadURL+"&_cf_clientid="+_cf_clientid;
_d0.Config.FlashBrowserURL=_d0.Config.FlashBrowserURL+"&_cf_clientid="+_cf_clientid;
_d0.Config.FlashUploadURL=_d0.Config.FlashUploadURL+"&_cf_clientid="+_cf_clientid;
}
if(_ca!=null){
var _d1=_d0.BasePath+"editor/skins/"+_ca+"/";
_d0.Config.SkinPath=_d1;
}
if(_cb==true){
_d0.Config.ToolbarStartExpanded=false;
_d0.Config.Toolbaronfocus=true;
}
if(_cc!=null){
_d0.ToolbarSet=_cc;
}
if(_cd!=null){
_d0.Config.StylesXmlPath=_cd;
}
if(_ce!=null){
_d0.Config.TemplatesXmlPath=_ce;
}
_d0.Config.AutoDetectLanguage=false;
if(_cf!=null){
_d0.Config.DefaultLanguage=_cf;
}
_d0.ReplaceTextarea();
var _d2=function(_d3){
ColdFusion.RichText.setValue(id,_d3);
};
_d0._cf_setValue=_d2;
var _d4=function(){
if(ColdFusion.RichText.editorState[id]){
var _d5=FCKeditorAPI.GetInstance(id);
return _d5.GetXHTML();
}else{
ColdFusion.Log.error("richtext.initialize.getvalue.notready","widget",[id]);
return null;
}
};
_d0._cf_getAttribute=_d4;
var _d6=function(_d7,_d8,_d9){
var _da=document.getElementById(id);
if(_da){
ColdFusion.Event.addListener(_da,_d7,_d8,_d9);
}
};
_d0._cf_register=_d6;
_d0._cf_name=_c2;
ColdFusion.objectCache[_c2]=_d0;
ColdFusion.objectCache[id]=_d0;
ColdFusion.RichText.registerAfterSet(id);
ColdFusion.Log.info("richtext.initialize.success","widget",[_c2]);
};
ColdFusion.RichText.editor_onfocus=function(_db){
_db.ToolbarSet.Expand();
};
ColdFusion.RichText.editor_onblur=function(_dc){
_dc.ToolbarSet.Collapse();
};
ColdFusion.RichText.setChangeBuffer=function(_dd){
ColdFusion.RichText.buffer=FCKeditorAPI.GetInstance(_dd.Name).GetXHTML();
};
ColdFusion.RichText.resetChangeBuffer=function(_de){
if(ColdFusion.RichText.buffer!=FCKeditorAPI.GetInstance(_de.Name).GetXHTML()){
ColdFusion.RichText.fireChangeEvent(_de.Name);
}
ColdFusion.RichText.buffer=null;
};
ColdFusion.RichText.registerAfterSet=function(_df){
if(ColdFusion.RichText.editorState[_df]){
var _e0=function(){
ColdFusion.RichText.fireChangeEvent(_df);
};
var _e1=FCKeditorAPI.GetInstance(_df);
_e1.Events.AttachEvent("OnAfterSetHTML",_e0);
}else{
setTimeout("ColdFusion.RichText.registerAfterSet('"+_df+"')",1000);
}
};
ColdFusion.RichText.getEditorObject=function(_e2){
if(!_e2){
ColdFusion.handleError(null,"richtext.geteditorobject.missingtextareaname","widget",null,null,null,true);
return;
}
var _e3=ColdFusion.objectCache[_e2];
if(_e3==null||FCKeditor.prototype.isPrototypeOf(_e3)==false){
ColdFusion.handleError(null,"richtext.geteditorobject.notfound","widget",[_e2],null,null,true);
return;
}
return FCKeditorAPI.GetInstance(_e3.richtextid);
};
ColdFusion.RichText.setValue=function(_e4,_e5){
if(ColdFusion.RichText.editorState[_e4]){
var _e6=FCKeditorAPI.GetInstance(_e4);
_e6.SetHTML(_e5);
}else{
setTimeout("ColdFusion.RichText.setValue(\""+_e4+"\",\""+_e5+"\")",1000);
}
};
ColdFusion.RichText.fireChangeEvent=function(_e7){
var _e8=ColdFusion.objectCache[_e7];
ColdFusion.Log.info("richtext.firechangeevent.firechange","widget",[_e8._cf_name]);
var _e9=document.getElementById(_e7);
if(_e9){
if(_e9.fireEvent){
_e9.fireEvent("onchange");
}
if(document.createEvent){
var evt=document.createEvent("HTMLEvents");
if(evt.initEvent){
evt.initEvent("change",true,true);
}
if(_e9.dispatchEvent){
_e9.dispatchEvent(evt);
}
}
}
ColdFusion.Event.callBindHandlers(_e7,null,"change");
};
function FCKeditor_OnComplete(_eb){
if(_eb.Config.Toolbaronfocus){
_eb.Events.AttachEvent("OnBlur",ColdFusion.RichText.editor_onblur);
_eb.Events.AttachEvent("OnFocus",ColdFusion.RichText.editor_onfocus);
}
_eb.Events.AttachEvent("OnFocus",ColdFusion.RichText.setChangeBuffer);
_eb.Events.AttachEvent("OnBlur",ColdFusion.RichText.resetChangeBuffer);
ColdFusion.RichText.editorState[_eb.Name]=true;
if(ColdFusion.RichText.OnComplete){
ColdFusion.RichText.OnComplete(_eb);
}
}
