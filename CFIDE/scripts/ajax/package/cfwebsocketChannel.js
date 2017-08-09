/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
ColdFusion.WebSocket={NS:"coldfusion.websocket.channels",WELCOME:"welcome",AUTHENTICATE:"authenticate",SUBSCRIBE:"subscribe",UNSUBSCRIBE:"unsubscribe",PUBLISH:"publish",INVOKE_AND_PUBLISH:"invokeAndPublish",GET_CHANNELS:"getChannels",GET_SUBSCRIBER_COUNT:"getSubscriberCount",GET_SUBSCRIPTIONS:"getSubscriptions",SEND_MESSAGE:"sendMessage",INVOKE_AND_MESSAGE:"invokeAndSend",INVOKE:"invoke",STOP:"stop",init:function(id,_151,_152,_153,_154,_155,_156,_157,_158){
if(cf_ws.isWebSocketSupported()){
lWSC=new cf_ws.CFWebSocketWrapper();
ColdFusion.WebSocket[id]=lWSC;
lWSC.options={OnWelcome:this.cfonOpencallBk,OnMessage:this.cfMessageHandlerCallBk,OnClose:_156,onError:_157,appName:_151,cfauth:_152,subscribeTo:_153,referrer:_158};
var _159=self.location.hostname;
if(_159&&_159=="localhost"){
_159="127.0.0.1";
}
var lURL="ws://"+(_159)+":"+_cf_websocket_port+"/cfusion"+"/cfusion";
var lRes=lWSC.open(lURL,lWSC.options);
lWSC.isOpen=true;
lWSC.processConnected=function(_15c){
};
lWSC.processDisconnected=function(_15d){
};
lWSC.defaultMessageHandler=_154;
if(_155){
lWSC.appOnOpenHandler=_155;
}
lWSC.channelSpecificResHandlers={};
lWSC.subscribercount_callbackHanlders={};
return lWSC;
}else{
var _15e={ns:ColdFusion.WebSocket.NS,reqType:ColdFusion.WebSocket.WELCOME,code:-1,msg:"Browser neither have native WebSocket support nor a flash player for the fallback."};
var _15f=_157!=null?_157:_154;
_15f(_15e);
}
},welcome:function(_160,_161,_162){
var lRes=this.isConnected();
if(lRes==true){
this.sendToken({ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.WELCOME,authKey:_160,subscribeTo:_161,appName:_162});
}
return lRes;
},authenticate:function(_164,_165){
var lRes=this.isConnected();
if(lRes==true){
this.sendToken({ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.AUTHENTICATE,username:_164,password:_165,appName:this.options.appName});
}
return lRes;
},subscribe:function(_167,_168,_169){
var lRes=this.isConnected();
if(lRes==true){
var _16b={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.SUBSCRIBE,channel:_167,appName:this.options.appName};
if(_168!=null&&(typeof _168=="object")){
_16b.customOptions=_168;
}
this.sendToken(_16b);
if(_169){
this.channelSpecificResHandlers[_167]=_169;
this.channelName_subscriptionInProcess=_167;
}
}
return lRes;
},unsubscribe:function(_16c){
var lRes=this.isConnected();
if(lRes==true){
var _16e={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.UNSUBSCRIBE,channel:_16c,appName:this.options.appName};
this.sendToken(_16e);
delete this.channelSpecificResHandlers[_16c];
}
return lRes;
},publish:function(_16f,_170,_171){
var lRes=this.isConnected();
if(lRes==true){
var _173={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.PUBLISH,channel:_16f,data:_170,appName:this.options.appName};
if(_171!=null&&(typeof _171=="object")){
_173.customOptions=_171;
}
this.sendToken(_173);
}
return lRes;
},invokeAndPublish:function(_174,_175,_176,_177,_178){
var lRes=this.isConnected();
if(lRes==true){
var _17a={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.INVOKE_AND_PUBLISH,channel:_174,cfcName:_175,cfcMethod:_176,methodArguments:_177,appName:this.options.appName,referrer:this.options.referrer};
if(_178!=null&&(typeof _178=="object")){
_17a.customOptions=_178;
}
this.sendToken(_17a);
}
return lRes;
},getSubscriberCount:function(_17b,_17c){
var lRes=this.isConnected();
if(lRes==true){
var _17e={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.GET_SUBSCRIBER_COUNT,channel:_17b,appName:this.options.appName};
this.sendToken(_17e);
}
if(_17c){
if(!this.subscribercount_callbackHanlders){
this.subscribercount_callbackHanlders={};
}
this.subscribercount_callbackHanlders[_17b]=_17c;
}
return lRes;
},getSubscriptions:function(_17f){
var lRes=this.isConnected();
if(lRes==true){
var _181={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.GET_SUBSCRIPTIONS,appName:this.options.appName};
this.sendToken(_181);
}
if(_17f){
this.subscriptions_callbackHanlder=_17f;
}
return lRes;
},sendMessage:function(_182,_183,_184){
var lRes=this.isConnected();
if(lRes==true){
var _186={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.SEND_MESSAGE,targetId:_182,data:_183,appName:this.options.appName};
if(_184!=null&&(typeof _184=="object")){
_186.customOptions=_184;
}
this.sendToken(_186);
}
return lRes;
},invokeAndSend:function(_187,_188,_189,_18a,_18b){
var lRes=this.isConnected();
if(lRes==true){
var _18d={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.INVOKE_AND_MESSAGE,target:_187,cfcName:_188,cfcMethod:_189,methodArguments:_18a,appName:this.options.appName};
if(_18b!=null&&(typeof _18b=="object")){
_18d.customOptions=_18b;
}
this.sendToken(_18d);
}
return lRes;
},invoke:function(_18e,_18f,_190,_191){
var lRes=this.isConnected();
if(lRes==true){
var _193={ns:ColdFusion.WebSocket.NS,type:ColdFusion.WebSocket.INVOKE,cfcName:_18e,cfcMethod:_18f,methodArguments:_190,appName:this.options.appName,referrer:this.options.referrer};
if(_191!=null&&(typeof _191=="object")){
_193.customOptions=_191;
}
this.sendToken(_193);
}
return lRes;
},openConnection:function(){
var lURL=cf_ws.URL_SERVER;
this.open(lURL,this.options);
},isConnectionOpen:function(){
var _195=this.isConnected();
return _195;
},closeConnection:function(){
this.close({fireClose:true});
},cfonOpencallBk:function(_196){
if(this.cfauth!=null||this.susbcribeTo!=null){
_196.welcome(this.cfauth,this.subscribeTo,this.appName);
}
if(_196.appOnOpenHandler){
_196.appOnOpenHandler.call(_196);
}
},cfMessageHandlerCallBk:function(_197,_198){
var _199=_198.defaultMessageHandler;
if((_197.type=="event")&&(_197.name=="connect"||_197.name=="disconnect")){
return;
}
if((_197.reqType=="subscribe")&&_198.channelName_subscriptionInProcess!=null){
if(_197.code==-1){
delete _198.channelSpecificResHandlers[_198.channelName_subscriptionInProcess];
}
delete _198.channelName_subscriptionInProcess;
}
if((_197.reqType=="getSubscriberCount")&&_198.subscribercount_callbackHanlders[_197.channel]!=null){
_198.subscribercount_callbackHanlders[_197.channel].call(this,_197);
delete _198.subscribercount_callbackHanlders[_197.channelname];
return;
}
if((_197.reqType=="getSubscriptions")&&_198.subscriptions_callbackHanlder!=null){
_198.subscriptions_callbackHanlder(_197);
delete _198.subscriptions_callbackHanlder;
return;
}
if(_197.type=="data"&&_197.channelname){
var _19a=_197.channelname;
var _19b=_198.channelSpecificResHandlers[_19a];
while(_19b==null){
var lPos=_19a.lastIndexOf(".");
if(lPos>0){
_19a=_19a.substr(0,lPos);
_19b=_198.channelSpecificResHandlers[_19a];
}else{
break;
}
}
if(_19b){
_199=_19b;
}
}
_199.call(this,_197);
}};
function cfwebsocketinit(){
var _19d=ColdFusion.WebSocket;
ns=cf_ws;
for(var _19e in _19d){
ns["CFWebSocketWrapper"].prototype[_19e]=_19d[_19e];
}
}
cfwebsocketinit();
