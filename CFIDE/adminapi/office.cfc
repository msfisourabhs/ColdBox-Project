����  - � 
SourceFile >C:\work\cf10_updates\cfusion\wwwroot\CFIDE\adminapi\office.cfc /cfoffice2ecfc1695530616$funcGETREMOTECONFIGHOST  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 
	 5 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 7 8
  9 _setCurrentLineNo (I)V ; <
  = 	component ? CFIDE.adminapi.accessmanager A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; O P
  Q checkAdminRoles S java/lang/Object U :coldfusion.serversettings,coldfusion.serversettingssummary W _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Y Z
  [  
	  ] 	VARIABLES _ java/lang/String a DOCUMENTSERVICE c _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; e f
  g getOpenOfficeRemoteHost i 
  k getRemoteConfigHost m metaData Ljava/lang/Object; o p	  q any s false u &coldfusion/runtime/AttributeCollection w name y access { public } output  
returntype � hint � "Retunrs remote configuration host. � 
Parameters � ([Ljava/lang/Object;)V  �
 x � this 1Lcfoffice2ecfc1695530616$funcGETREMOTECONFIGHOST; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getName ()Ljava/lang/String; getReturnType 	getAccess ()I 	getOutput getMetadata ()Ljava/lang/Object; 1       o p   	     �   #     *� 
�    �        � �    � �  �   #     � b�    �        � �    � �  �  q     �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:-6� :
-n� >-@B� H� N-6� :-o� >--
� RT� VYXS� \W-^� :-q� >--`� bYdS� hj� V� \�-l� :�    �   p    � � �     � � �    � � p    � � �    � � �    � � �    � � p    � 1 2    �  �    �  � 	   � " � 
 �   F   m : n C n E n B n B n : n : n \ o j o [ o [ o [ o  q  q  q  p  �   �   r     T� xY� VYzSYnSY|SY~SY�SYvSY�SYtSY�SY	�SY
�SY� VS� �� r�    �       T � �    � �  �   !     n�    �        � �    � �  �   !     t�    �        � �    � �  �         �    �        � �    � �  �   !     v�    �        � �    � �  �   "     � r�    �        � �        ����  -n 
SourceFile >C:\work\cf10_updates\cfusion\wwwroot\CFIDE\adminapi\office.cfc *cfoffice2ecfc1695530616$funcSETLOCALCONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 OFFICEDIRPATH 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; = >
  ? 
	     A _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V C D
  E _setCurrentLineNo (I)V G H
  I 	component K CFIDE.adminapi.accessmanager M CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; O P coldfusion/runtime/CFPage R
 S Q set (Ljava/lang/Object;)V U V coldfusion/runtime/Variable X
 Y W 
		 [ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ] ^
  _ checkAdminRoles a java/lang/Object c coldfusion.serversettings e _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; g h
  i *coldfusion/runtime/TransientVariableHolder k &(Lcoldfusion/runtime/NeoPageContext;)V  m
 l n OS p SERVER r java/lang/String t NAME v _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; x y
  z _set '(Ljava/lang/String;Ljava/lang/Object;)V | }
  ~ equalsIgnoreCase �   � _boolean (Ljava/lang/Object;)Z � � coldfusion/runtime/Cast �
 � � &(Ljava/lang/String;)Ljava/lang/Object; ] �
  � toLowerCase � 
startsWith � mac � contains � Contents � 	substring � 0 � lastIndexOf � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � OOPATH � _autoscalarize � ^
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � /Contents/MacOS � concat &(Ljava/lang/String;)Ljava/lang/String; � �
 u � program � /program � � �
  � /soffice.bin � 
FileExists (Ljava/lang/String;)Z � �
 S � 	VARIABLES � DOCUMENTSERVICE � _resolve � y
  � setOfficeLocation � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � INVALID_LOCATION_ERROR � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; any � � �	  findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I
 � e bind	 }
 l
 LOCAL_CONFIG_ERROR_ADD unbind 
 l 
  setLocalConfig metaData Ljava/lang/Object;	  void false &coldfusion/runtime/AttributeCollection name access! public# output% 
returntype' hint) "Sets the local configuration path.+ 
Parameters- HINT/ <Specifies a fully qualified path to the office installation.1 officeDirPath3 REQUIRED5 true7 ([Ljava/lang/Object;)V 9
: this ,Lcfoffice2ecfc1695530616$funcSETLOCALCONFIG; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; throw4 !Lcoldfusion/tagext/lang/ThrowTag; t14 t15 #Lcoldfusion/runtime/AbortException; t16 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; throw5 t19 t20 t21 LineNumberTable !coldfusion/runtime/AbortException_ java/lang/Exceptiona java/lang/Throwablec <clinit> getName ()Ljava/lang/String; getReturnType 	getAccess ()I 	getOutput getMetadata ()Ljava/lang/Object; 1       � �    � �      	    ?   #     *� 
�   >       <=   @A ?   (     
� uY6S�   >       
<=   BC ?      e-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:*6� <� @:-B� F
-1� J-LN� T� Z-\� F-2� J--
� `b� dYfS� jW-\� F� lY-� *� o:-q-s� uYqSYwS� {� -7� J--� `�� dY�S� j� ����-9� J--9� J--q� ��� d� j�� dY�S� j� �� �-;� J--� `�� dY�S� j� �� I-=� J--� `�� dY�SY-=� J--� `�� dY�S� j� �g� �S� j� Z-�-� �� ��� �� � ~-B� J--� `�� dY�S� j� �� I-D� J--� `�� dY�SY-D� J--� `�� dY�S� j� �g� �S� j� Z-�-� �� ��� �� -I� J--�� �� ��� �� �� /-K� J--�� uY�S� ��� dY-�� �S� jW� M-� �� �� �:-N� Jܶ ���-� �� �ܸ � �� �� �� :� ��� ,-T� J--�� uY�S� ��� dY-� �S� jW� �� �:�:� �:���    j           �-� �� �� �:-X� Jܶ ���-� �� �ܸ � �� �� �� :� �� �� � :� �:��-� F� 	 ���`���` ���b���b ��Id��Id�7Id=FIdINId >   �   e<=    eDE   eF   eGH   eIJ   eKL   eM   e 1 2   e N   e N 	  e "N 
  e 5N   eOP   eQR   eS   eTU   eVW   eXY   eZR   e[   e\Y   e] ^  b X  / J 1 S 1 U 1 R 1 R 1 J 1 J 1 l 2 z 2 k 2 k 2 k 2 � 6 � 6 � 6 � 7 � 7 � 7 � 7 � 7 � 9 � 9 � 9 � 9 ; ;
 ;. =< =H =V =G =G =_ =G =- =- =% =
 ;n ?n ?w ?n ?n ?k ?� B� B� B� D� D� D� D� D� D� D� D� D� D� D� B� F� F� F� F� F� F � 9 I I I I I I6 K K Kf ND N I� T� T� T � 7 X� X � 4 � 3 e  ?   �     �̸ ҳ �� uY S��Y� dY SYSY"SY$SY&SYSY(SYSY*SY	,SY
.SY� dY�Y� dY0SY2SYwSY4SY6SY8S�;SS�;��   >       �<=   fg ?   "     �   >       <=   hg ?   "     �   >       <=   ij ?         �   >       <=   kg ?   "     �   >       <=   lm ?   "     ��   >       <=        ����  - � 
SourceFile >C:\work\cf10_updates\cfusion\wwwroot\CFIDE\adminapi\office.cfc *cfoffice2ecfc1695530616$funcGETLOCALCONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 
 	 5 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 7 8
  9 _setCurrentLineNo (I)V ; <
  = 	component ? CFIDE.adminapi.accessmanager A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K 
	 O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
  S checkAdminRoles U java/lang/Object W :coldfusion.serversettings,coldfusion.serversettingssummary Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] 	VARIABLES _ java/lang/String a DOCUMENTSERVICE c _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; e f
  g getOfficeLocation i 
  k getLocalConfig m metaData Ljava/lang/Object; o p	  q any s false u &coldfusion/runtime/AttributeCollection w name y access { public } output  
returntype � hint � (Retunrs local open office configuration. � 
Parameters � ([Ljava/lang/Object;)V  �
 x � this ,Lcfoffice2ecfc1695530616$funcGETLOCALCONFIG; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getName ()Ljava/lang/String; getReturnType 	getAccess ()I 	getOutput getMetadata ()Ljava/lang/Object; 1       o p   	     �   #     *� 
�    �        � �    � �  �   #     � b�    �        � �    � �  �  q     �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:-6� :
-(� >-@B� H� N-P� :-)� >--
� TV� XYZS� ^W-P� :-+� >--`� bYdS� hj� X� ^�-l� :�    �   p    � � �     � � �    � � p    � � �    � � �    � � �    � � p    � 1 2    �  �    �  � 	   � " � 
 �   F   ' : ( C ( E ( B ( B ( : ( : ( \ ) j ) [ ) [ ) [ )  +  +  +  *  �   �   r     T� xY� XYzSYnSY|SY~SY�SYvSY�SYtSY�SY	�SY
�SY� XS� �� r�    �       T � �    � �  �   !     n�    �        � �    � �  �   !     t�    �        � �    � �  �         �    �        � �    � �  �   !     v�    �        � �    � �  �   "     � r�    �        � �        ����  - � 
SourceFile >C:\work\cf10_updates\cfusion\wwwroot\CFIDE\adminapi\office.cfc /cfoffice2ecfc1695530616$funcGETREMOTECONFIGPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 
	  5 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 7 8
  9 _setCurrentLineNo (I)V ; <
  = 	component ? CFIDE.adminapi.accessmanager A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; O P
  Q checkAdminRoles S java/lang/Object U :coldfusion.serversettings,coldfusion.serversettingssummary W _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Y Z
  [ 	VARIABLES ] java/lang/String _ DOCUMENTSERVICE a _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; c d
  e getOpenOfficeRemotePort g 
  i getRemoteConfigPort k metaData Ljava/lang/Object; m n	  o any q false s &coldfusion/runtime/AttributeCollection u name w access y public { output } 
returntype  hint � "Retunrs remote configuration port. � 
Parameters � ([Ljava/lang/Object;)V  �
 v � this 1Lcfoffice2ecfc1695530616$funcGETREMOTECONFIGPORT; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getName ()Ljava/lang/String; getReturnType 	getAccess ()I 	getOutput getMetadata ()Ljava/lang/Object; 1       m n   	     �   #     *� 
�    �        � �    � �  �   #     � `�    �        � �    � �  �  q     �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:-6� :
-v� >-@B� H� N-6� :-w� >--
� RT� VYXS� \W-6� :-y� >--^� `YbS� fh� V� \�-j� :�    �   p    � � �     � � �    � � n    � � �    � � �    � � �    � � n    � 1 2    �  �    �  � 	   � " � 
 �   F   u : v C v E v B v B v : v : v \ w j w [ w [ w [ w  y  y  y  x  �   �   r     T� vY� VYxSYlSYzSY|SY~SYtSY�SYrSY�SY	�SY
�SY� VS� �� p�    �       T � �    � �  �   !     l�    �        � �    � �  �   !     r�    �        � �    � �  �         �    �        � �    � �  �   !     t�    �        � �    � �  �   "     � p�    �        � �        ����  -4 
SourceFile >C:\work\cf10_updates\cfusion\wwwroot\CFIDE\adminapi\office.cfc +cfoffice2ecfc1695530616$funcSETREMOTECONFIG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 
REMOTEHOST 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; = >
  ? 
REMOTEPORT A 
   C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
  G _setCurrentLineNo (I)V I J
  K 	component M CFIDE.adminapi.accessmanager O CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Q R coldfusion/runtime/CFPage T
 U S set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ] ^
  _ checkAdminRoles a java/lang/Object c coldfusion.serversettings e _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; g h
  i 
  		 k *coldfusion/runtime/TransientVariableHolder m &(Lcoldfusion/runtime/NeoPageContext;)V  o
 n p 	VARIABLES r java/lang/String t DOCUMENTSERVICE v _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; x y
  z setOpenOfficeRemoteConfig | _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ~ 
  � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � e � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 n � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � REMOTE_CONFIG_ERROR_ADD � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � unbind � 
 n � 		
  � setRemoteConfig � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � ,Sets the remote configuration host and port. � 
Parameters � HINT � .Specifies remote host for office installation. � NAME � 
remoteHost � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � .Specifies remote port for office installation.  
remotePort this -Lcfoffice2ecfc1695530616$funcSETREMOTECONFIG; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t13 ,Lcoldfusion/runtime/TransientVariableHolder; t14 #Lcoldfusion/runtime/AbortException; t15 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; throw6 !Lcoldfusion/tagext/lang/ThrowTag; t18 t19 t20 LineNumberTable !coldfusion/runtime/AbortException% java/lang/Exception' java/lang/Throwable) <clinit> getName ()Ljava/lang/String; getReturnType 	getAccess ()I 	getOutput getMetadata ()Ljava/lang/Object; 1       � �    � �    � �   	       #     *� 
�             	    -     � uY6SYBS�             
       �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:*6� <� @:*B� <� @:-D� H
-`� L-NP� V� \-D� H-a� L--
� `b� dYfS� jW-l� H� nY-� *� q:-e� L--s� uYwS� {}� dY-� uY6S� �SY-� uYBS� �S� jW� �� �:�:� �:� �� ��    h           �� �-� �� �� �:-h� L�� ���-�� �� ��� Ķ �� �� ϙ :� �� �� � :� �:� ҩ-Զ H�  � � �& � � �( � �w* �ew*ktw*w|w*    �   �    �   � �   �   �   �   � �   � 1 2   �    �  	  � " 
  � 5   � A   �   �   �   �   �    �! �   �"   �# � $   V   ] Z ` c ` e ` b ` b ` Z ` Z ` | a � a { a { a { a � e � e � e � eC h! h � c � b +     �     �� uY�S� ��� �� �� �Y� dY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� dY� �Y� dY�SY�SY�SY�SY�SY�S� �SY� �Y� dY�SYSY�SYSY�SY�S� �SS� �� ڱ          �   ,-    !     ְ             .-    !     ܰ             /0          �             1-    !     ް             23    "     � ڰ                  ����  -m 
SourceFile >C:\work\cf10_updates\cfusion\wwwroot\CFIDE\adminapi\office.cfc cfoffice2ecfc1695530616  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FACTORY Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   REQUEST   	   com.macromedia.SourceModTime  &0�8 pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - com.adobe.coldfusion.* / bindImportPath (Ljava/lang/String;)V 1 2
  3 
	 5 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 7 8
  9 LOCALE ; REQUEST.LOCALE = _setCurrentLineNo (I)V ? @
  A java C java.util.Locale E CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; G H coldfusion/runtime/CFPage J
 K I 
getDefault M java/lang/Object O _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Q R
  S getLanguage U checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V W X
  Y 
	
	 [ 	VARIABLES ] java/lang/String _  coldfusion.server.ServiceFactory a _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V c d
  e DOCUMENTSERVICE g _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; i j
  k getDocumentService m 
LOCALEFILE o java/lang/StringBuffer q ./CFIDE/adminapi/customtags/resources/adminapi_ s  2
 r u _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; w x
  y _String &(Ljava/lang/Object;)Ljava/lang/String; { | coldfusion/runtime/Cast ~
  } append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 r � .xml � toString ()Ljava/lang/String; � �
 P � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � /CFIDE/adminapi/customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � local_config_error_add � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � %Unable to configure local OpenOffice. � write � 2 java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � remote_config_error_add � &Unable to configure remote OpenOffice. � invalid_location_error � 7Specified directory is not a valid Office installation. � 



 
  � 
 
   � 
 
 � setLocalConfig Lcoldfusion/runtime/UDFMethod; *cfoffice2ecfc1695530616$funcSETLOCALCONFIG �
 � 	 � �	  � SETLOCALCONFIG � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V � �
  � getRemoteConfigHost /cfoffice2ecfc1695530616$funcGETREMOTECONFIGHOST �
 � 	 � �	  GETREMOTECONFIGHOST setRemoteConfig +cfoffice2ecfc1695530616$funcSETREMOTECONFIG
 	 �	 	 SETREMOTECONFIG getLocalConfig *cfoffice2ecfc1695530616$funcGETLOCALCONFIG
 	 �	  GETLOCALCONFIG getRemoteConfigPort /cfoffice2ecfc1695530616$funcGETREMOTECONFIGPORT
 	 �	  GETREMOTECONFIGPORT metaData Ljava/lang/Object;	  _implicitMethods Ljava/util/Map;!"	 # displayname% office' extends) base+ hint- Manages open office settings./ Name1 	Functions3	 �	 �			 this Lcfoffice2ecfc1695530616; LocalVariableTable Code _getImplicitMethods ()Ljava/util/Map; <clinit> LineNumberTable registerUDFs _setImplicitMethods implicitMethods 
getExtends varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; getMetadata ()Ljava/lang/Object; runPage out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module2 mode2 t14 t15 t16 t17 t18 t19 module3 mode3 t22 t23 t24 t25 t26 t27 java/lang/Throwablek 1     
            � �    � �    � �    �    �    �      
!"   	    =   #     *� 
�   <       :;   >? =   "     �$�   <       :;   @  =   � 	    ��� �� �� �Y� �� �� �Y� ��Y��
�Y���Y��� �Y
� PY&SY(SY*SY,SY.SY0SY2SY(SY4SY	� PY�5SY�6SY�7SY�8SY�9SS� �� �   <       �:;  A     � m � / � ] � ' � u B  =   P     2*�� �� �*�� �*�
� �*�� �*�� ��   <       2:;   C � =   -     +�$�   <       :;     D"  E � =   "     ,�   <       :;      =   Q     *+,� **+,� � **+,� � �   <        :;     FG    HI  JK =   "     � �   <       :;   LK =  5    �*� $� *L*� .N*0� 4*+6� :*+6� :**� <>*� B**� B**� B*DF� LN� P� TV� P� T� Z*+\� :*^� `YS*� B*Db� L� f*^� `YhS*� B***� � ln� P� T� f*^� `YpS� rYt� v*� `Y<S� z� �� ��� �� �� f*+6� :*� �-� �� �:*� B���� �� �Y� PY�SY�SY�SY�SY�SY*^� `YpS� zS� �� �� �� �Y6� 5*+� �L+ɶ �� њ��� � :� �:*+� �L�� �� :� #�� � #:		� ި � :
� 
�:� �*+6� :*� �-� �� �:* � B���� �� �Y� PY�SY�SY�SY�SY�SY*^� `YpS� zS� �� �� �� �Y6� 5*+� �L+� �� њ��� � :� �:*+� �L�� �� :� #�� � #:� ި � :� �:� �*+6� :*� �-� �� �:*!� B���� �� �Y� PY�SY�SY�SY�SY�SY*^� `YpS� zS� �� �� �� �Y6� 5*+� �L+� �� њ��� � :� �:*+� �L�� �� :� #�� � #:� ި � :� �:� �*+� :*+�� :*+�� :*+�� :*+�� :*+� :� OjmlmrmlD��l���lD��l���l���l���l-HKlKPKl"kwlqtwl"k�lqt�lw��l���l&)l).)l IUlORUl IdlORdlUadldidl <     �:;    �MN   �O   � + ,   �PQ   �RS   �TU   �V   �W   �XU 	  �YU 
  �Z   �[Q   �\S   �]U   �^   �_   �`U   �aU   �b   �cQ   �dS   �eU   �f   �g   �hU   �iU   �j A   � (   ?  A  >  7  0  0  u  w  t  t  b  �  �  �    �  �  �  �  �  �  �  b   ( (  � �  �      �  � !� !� !� !� !              