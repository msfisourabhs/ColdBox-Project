����  -� 
SourceFile ^C:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\monitor\launch-multiservermonitor.cfm *cflaunch2dmultiservermonitor2ecfm380954460  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   AERRORMESSAGES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FEATURE_NOT_AVAILABLE_MSG   	   ISSERVERMONITORINGAVAILABLE   	    BERRORSEXIST " " 	  $ ALTERNATECONTENT_CF & & 	  ( REQUEST * * 	  , com.macromedia.SourceModTime  4`e0 pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	  3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/JspContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	  = com.adobe.coldfusion.* ? bindImportPath (Ljava/lang/String;)V A B
  C 
 E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I $class$coldfusion$tagext$io$SilentTag Ljava/lang/Class; coldfusion.tagext.io.SilentTag M forName %(Ljava/lang/String;)Ljava/lang/Class; O P java/lang/Class R
 S Q K L	  U _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; W X
  Y coldfusion/tagext/io/SilentTag [ _setCurrentLineNo (I)V ] ^
  _ 	hasEndTag (Z)V a b coldfusion/tagext/GenericTag d
 e c 
doStartTag ()I g h
 \ i 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; k l
  m doAfterBody o h
 e p _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; r s
  t doEndTag v h #javax/servlet/jsp/tagext/TagSupport x
 y w doCatch (Ljava/lang/Throwable;)V { |
 e } 	doFinally  
 e � 


 � LOCALE � REQUEST.LOCALE � en � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � java/lang/String � 
LOCALEFILE � java/lang/StringBuffer � resources/monitor_ �  B
 � � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .xml � toString ()Ljava/lang/String; � � java/lang/Object �
 � � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � false � 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V � �
  � ArrayNew (I)Ljava/util/List; � �
  � _Array .(Ljava/lang/Object;)Lcoldfusion/runtime/Array; � �
 � � setArray (Lcoldfusion/runtime/Array;)V � � coldfusion/runtime/Variable �
 � � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � IsServerMonitoringAvailable � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _boolean (Ljava/lang/Object;)Z � �
 � � 
	 � 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag � � L	  � !coldfusion/tagext/lang/IncludeTag � 	cfinclude � template � ../header.cfm � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setTemplate � B
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � ../include/margintop.cfm � ../include/errors.cfm � 
	
	 � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � L	  � coldfusion/tagext/io/OutputTag �
 � i 
	<h2 class="pageHeader"> � write � B java/io/Writer �
  � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag L	  "coldfusion/tagext/lang/ImportedTag l10n	 
../cftags/ admin setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
 &coldfusion/runtime/AttributeCollection id pageHeader_clientvars1_multi ([Ljava/lang/Object;)V 
 setAttributecollection (Ljava/util/Map;)V  coldfusion/tagext/lang/ModuleTag
 
  i *Server Monitoring &gt; Multiserver Monitor#
  p
  }
  � </h2>
	
	<br>
	( _autoscalarize* �
 +
 � p coldfusion/tagext/QueryLoop.
/ w
/ }
 � � ../include/marginbottom.cfm3 ../footer.cfm5 %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag87 L	 : coldfusion/tagext/lang/AbortTag<V


<!-- saved from url=(0014)about:internet -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Multiserver Monitor</title>
<script src="AC_OETags.js" language="javascript"></script>
<style>
body { margin: 0px; overflow:hidden }
</style>
<script language="JavaScript" type="text/javascript">
<!--
// -----------------------------------------------------------------------------
// Globals
// Major version of Flash required
var requiredMajorVersion = 9;
// Minor version of Flash required
var requiredMinorVersion = 0;
// Minor version of Flash required
var requiredRevision = 0;
// -----------------------------------------------------------------------------

    function thisMovie(movieName) {
		return (isIE) ? window[movieName] : document[movieName];
	}

    // Logout from all server before unloading.
    window.onbeforeunload = function() {
	    var fxControl = thisMovie('MultiServerMonitor');
        fxControl.closeApplication();
        return;
    }
    // -->
  </script>
</head>

<body scroll="no" >

> alternatecontent_cf@ varB i
    This content requires the Adobe Flash Player. <a href=http://www.adobe.com/go/getflash/>Get Flash
D 

<script>
 
    F $class$coldfusion$tagext$lang$WddxTag coldfusion.tagext.lang.WddxTagIH L	 K coldfusion/tagext/lang/WddxTagM cfwddxO actionQ cfml2jsS 	setActionU B
NV inputX \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; �Z
 [ setInput (Ljava/lang/Object;)V]^
N_ toplevelvariablea alternatecontent_jsc setToplevelvariablee B
Nf=
</script>        

<script language="JavaScript" type="text/javascript">
<!--
// Version check for the Flash Player that has the ability to start Player Product Install (6.0r65)
var hasProductInstall = DetectFlashVer(6, 0, 65);

// Version check based upon the values defined in globals
var hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);


// Check to see if a player with Flash Product Install is available and the version does not meet the requirements for playback
if ( hasProductInstall && !hasRequestedVersion ) {
	// MMdoctitle is the stored document.title value used by the installation process to close the window that started the process
	// This is necessary in order to close browser windows that are still utilizing the older version of the player after installation has completed
	// DO NOT MODIFY THE FOLLOWING FOUR LINES
	// Location visited after installation is complete if installation is required
	var MMPlayerType = (isIE == true) ? "ActiveX" : "PlugIn";
	var MMredirectURL = window.location;
    document.title = document.title.slice(0, 47) + " - Flash Player Installation";
    var MMdoctitle = document.title;

	AC_FL_RunContent(
		"src", "playerProductInstall",
		"FlashVars", "MMredirectURL="+MMredirectURL+'&MMplayerType='+MMPlayerType+'&MMdoctitle='+MMdoctitle+"",
		"width", "100%",
		"height", "100%",
		"align", "middle",
		"id", "MultiServerMonitor",
		"quality", "high",
		"bgcolor", "#869ca7",
		"name", "MultiServerMonitor",
		"allowScriptAccess","sameDomain",
		"type", "application/x-shockwave-flash",
		"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
} else if (hasRequestedVersion) {
	// if we've detected an acceptable version
	// embed the Flash Content SWF when all tests are passed
	AC_FL_RunContent(
			"src", "MultiServerMonitor",
			"width", "100%",
			"height", "100%",
			"align", "middle",
			"id", "MultiServerMonitor",
			"quality", "high",
			"bgcolor", "#869ca7",
			"name", "MultiServerMonitor",
			"allowScriptAccess","sameDomain",
			"type", "application/x-shockwave-flash",
			"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
  } else {  // flash is too old or we can't detect the plugin
  // var alternateContent = 'Alternate HTML content should be placed here. '
  //	+ 'This content requires the Adobe Flash Player. '
  // 	+ '<a href=http://www.adobe.com/go/getflash/>Get Flash</a>';
    document.write(alternatecontent_js);  // insert non-flash content
  }
// -->
</script>

<noscript>
  	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			id="MultiServerMonitor" width="100%" height="100%"
			codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab">
			<param name="movie" value="MultiServerMonitor.swf" />
			<param name="quality" value="high" />
			<param name="bgcolor" value="#869ca7" />
			<param name="allowScriptAccess" value="sameDomain" />
			<embed src="MultiServerMonitor.swf" quality="high" bgcolor="#869ca7"
				width="100%" height="100%" name="MultiServerMonitor" align="middle"
				play="true"
				loop="false"
				quality="high"
				allowScriptAccess="sameDomain"
				type="application/x-shockwave-flash"
				pluginspage="http://www.adobe.com/go/getflashplayer">
			</embed>
	</object>
</noscript>
</body>
</html>
h metaData Ljava/lang/Object;jk	 l this ,Lcflaunch2dmultiservermonitor2ecfm380954460; LocalVariableTable Code <clinit> varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; getMetadata ()Ljava/lang/Object; runPage out Ljavax/servlet/jsp/JspWriter; value silent0  Lcoldfusion/tagext/io/SilentTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 include3 #Lcoldfusion/tagext/lang/IncludeTag; include4 include5 output7  Lcoldfusion/tagext/io/OutputTag; mode7 module6 $Lcoldfusion/tagext/lang/ImportedTag; mode6 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 include8 include9 abort10 !Lcoldfusion/tagext/lang/AbortTag; module11 mode11 t34 t35 t36 t37 t38 t39 wddx12  Lcoldfusion/tagext/lang/WddxTag; LineNumberTable java/lang/Throwable� 1                      "     &     *     K L    � L    � L    L   7 L   H L   jk       q   #     *� 
�   p       no   r  q   `     BN� T� V׸ T� ��� T� �� T�9� T�;J� T�L�Y� ���m�   p       Bno      q   �     O*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -�   p        Ono     Ost    Ouv  wx q   "     �m�   p       no   yx q  � 
 )  (*� 4� :L*� >N*@� D*+F� J*� V-� Z� \:*� `� f� jY6� /*+� nL� q���� � :� �:*+� uL�� z� :� #�� � #:		� ~� � :
� 
�:� ��*+�� J**� -���� �*+F� J*+� �Y�S� �Y�� �*+� �Y�S� �� �� ��� �� �� �*+�� J**� %�� �*+F� J*� *� `*� �� �� �*+�� J*� `**� !� ��*� �� θ ����*+Զ J*� �-� Z� �:*� `���� � �� f� � �*+Զ J*� �-� Z� �:*� `���� � �� f� � �*+Զ J*� �-� Z� �:*� `���� � �� f� � �*+� J*� �-� Z� �:*� `� f� �Y6� �+��*�� Z�:*� `
��Y� �YSYS��!� f�"Y6� 6*+� nL+$��%���� � :� �:*+� uL�� z� :� &� y�� � #:�&� � :� �:�'�+)�+**� �,� ���-���0� :� #�� � #:�1� � :� �:�2�*+Զ J*� �-� Z� �:* � `��4� � �� f� � �*+Զ J*� �	-� Z� �:*!� `��6� � �� f� � �*+Զ J*�;
-� Z�=:*"� `� f� � �*+F� J+?�*�-� Z�: *K� ` 
� �Y� �YSYASYCSYAS��! � f �"Y6!� 6* !+� nL+E� �%���� � :"� "�:#*!+� uL�# � z� :$� #$�� � #:% %�&� � :&� &�:' �'�'+G�*�L-� Z�N:(*Q� `(PRT� �W(PY**� )�,�\�`(Pbd� �g(� f(� � �+i��   > S V� V [ V� 3 v �� |  �� 3 v �� |  �� � � �� � � ��z�������o�������o���������������������-��-�-�*-�-2-�Mil�lql�B�������B��������������� p  � )  (no    (z{   (|k   ( ; <   (}~   (�   (��   (�k   (�k   (�� 	  (�� 
  (�k   (��   (��   (��   (��   (��   (��   (��   (��   (�k   (�k   (��   (��   (�k   (�k   (��   (��   (�k   (��   (��   (��   (��    (�� !  (�� "  (�k #  (�k $  (�� %  (�� &  (�k '  (�� (�   � :     �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �      - - - - h N � � � � _ ( � � � � `  E  � !� !� "- & K2 K� K� Q� R� R S� Q          .    /