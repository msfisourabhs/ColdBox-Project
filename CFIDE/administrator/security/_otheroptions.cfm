����  -, 
SourceFile SC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\_otheroptions.cfm Icf_otheroptions2ecfm618606012$funcCFADMIN_GETALLENABLEDRUNTIMEPERMISSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    PERMISSIONS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % APERMISSIONS ' I ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	  - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/JspContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	  7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; _setCurrentLineNo (I)V ? @
  A ArrayNew (I)Ljava/util/List; C D coldfusion/runtime/CFPage F
 G E set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K 1 O *coldfusion/runtime/TransientVariableHolder Q &(Lcoldfusion/runtime/NeoPageContext;)V  S
 R T REQUEST V java/lang/String X SECURITY Z CONTEXTS \ _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; ^ _
  ` java/lang/Object b _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; d e
  f _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; h i
  j 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; l m
 G n C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; h p
  q _Map #(Ljava/lang/Object;)Ljava/util/Map; s t coldfusion/runtime/Cast v
 w u CLASS y _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; { |
  } java.lang.RuntimePermission  _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 w � ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 G � TARGET � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 w � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 G � _boolean (J)Z � �
 w � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 G � _double (Ljava/lang/Object;)D � �
 w � _Object (D)Ljava/lang/Object; � �
 w � ArrayLen (Ljava/lang/Object;)I � �
 G � (I)Ljava/lang/Object; � �
 w � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
  � 
textnocase � asc � 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z � �
 G � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � ex � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 R � unbind � 
 R � WEBAPP � 	DIRECTORY � 'cfadmin_getAllEnabledRuntimePermissions � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � author � "Mike Nimer (mnimer@macromedia.com) � return � Returns an array. � param � /directory - working security context/directory. � hint � Sreturn an array of all RuntimePermissions that are enabled by this security context � version � 1,  January 07, 2002 � 
Parameters � REQUIRED � false � NAME � webapp � ([Ljava/lang/Object;)V  �
 � � 	directory this KLcf_otheroptions2ecfm618606012$funcCFADMIN_GETALLENABLEDRUNTIMEPERMISSIONS; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t15 ,Lcoldfusion/runtime/TransientVariableHolder; t16 #Lcoldfusion/runtime/AbortException; t17 Ljava/lang/Exception; __cfcatchThrowable0 Ljava/lang/Throwable; t19 t20 LineNumberTable !coldfusion/runtime/AbortException! java/lang/Exception# java/lang/Throwable% <clinit> getName ()Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �          #     *� 
�                 -     � YY�SY�S�             	
   5    -� +� � :+� !,� :	+#� &:
+(� &:+*� &:-� .� 4:-� 8:� >:� >:
-N� B-� H� N-O� B-� H� NP� N� RY-� .� U:
-V� B--W� YY[SY]S� a� cY-� gSY-� gS� k� o� NP� N� �--
-� g� r� x� YYzS� ~�� ��� v-_� B-_� B-� g� �� �--
-� g� r� x� YY�S� ~� �� ��� ��� 3-a� B--� g� �--
-� g� r� x� YY�S� ~� �W-� g� �c� �� N-� g-Y� B-
� g� �� �� ��t|���1-f� B-� g� ���� �W� L� R:�:� �:� ĸ Ȫ                �� Χ �� � :� �:� ѩ-� g��  ���" ���$ ���&���&���&    �           �             �    5 6         	   " 
   '    )    �    �                   �     C  L H L R N [ N Z N Z N R N b O k O j O j O b O r P t P t P r P � V � V � V � V � V � V � Y � Y � Y � \ � \ � \ � _ � _ � _ � _ _
 _
 _ � _ � _ � _< a< aI aE a; a; a � _ � \g Yg Yp Yg Yg Ye Yx Y� Y� Yx Y � Y� f� f� f� f� f� f y T
 n
 n
 n '     �     �� YY�S� Ļ �Y� cY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY�SY�SY� cY� �Y� cY�SY�SY�SY�S� SY� �Y� cY�SY�SY�SYS� SS� � ۱          �   ()    !     װ             *+    "     � ۰                  ����  - � 
SourceFile SC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\_otheroptions.cfm Bcf_otheroptions2ecfm618606012$funcCFADMIN_GETALLRUNTIMEPERMISSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    pageContext #Lcoldfusion/runtime/NeoPageContext; " #	  $ getOut ()Ljavax/servlet/jsp/JspWriter; & ' javax/servlet/jsp/JspContext )
 * ( parent Ljavax/servlet/jsp/tagext/Tag; , -	  . _setCurrentLineNo (I)V 0 1
  2 REQUEST 4 java/lang/String 6 SECURITYAPI 8 _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; : ;
  < getAllRuntimePermissions > java/lang/Object @ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; B C
  D  cfadmin_getallRuntimePermissions F metaData Ljava/lang/Object; H I	  J &coldfusion/runtime/AttributeCollection L name N author P "Mike Nimer (mnimer@macromedia.com) R return T Returns an array. V param X - none Z hint \ 1return an array of all default RuntimePermissions ^ version ` 1,  January 07, 2002 b 
Parameters d ([Ljava/lang/Object;)V  f
 M g this DLcf_otheroptions2ecfm618606012$funcCFADMIN_GETALLRUNTIMEPERMISSIONS; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getName ()Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       H I        l   #     *� 
�    k        i j    m n  l   #     � 7�    k        i j    o p  l   �  
   L-� +� � :+� !,� :	-� %� +:-� /:-� 3--5� 7Y9S� =?� A� E��    k   f 
   L i j     L q r    L s I    L t u    L v w    L x y    L z I    L , -    L  {    L  { 	 |       *  0  0  0   }   l   ~     `� MY� AYOSYGSYQSYSSYUSYWSYYSY[SY]SY	_SY
aSYcSYeSY� AS� h� K�    k       ` i j    ~   l   !     G�    k        i j    � �  l   "     � K�    k        i j        ����  - � 
SourceFile SC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\_otheroptions.cfm Hcf_otheroptions2ecfm618606012$funcCFADMIN_GETREMAININGRUNTIMEPERMISSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    REMAININGRUNTIMEPERMISSIONS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/JspContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 _setCurrentLineNo (I)V 5 6
  7 ArrayNew (I)Ljava/util/List; 9 : coldfusion/runtime/CFPage <
 = ; set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; E F
  G _List $(Ljava/lang/Object;)Ljava/util/List; I J coldfusion/runtime/Cast L
 M K createClassLoader O ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z Q R
 = S exitVM U loadLibrary.* W setSecurityManager Y 
setFactory [ setIO ] modifyThreadGroup _ 
textnocase a asc c 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z e f
 = g java/lang/String i &cfadmin_getremainingRuntimePermissions k metaData Ljava/lang/Object; m n	  o &coldfusion/runtime/AttributeCollection q java/lang/Object s name u author w "Mike Nimer (mnimer@macromedia.com) y return { Returns an array. } param  - none � hint � 2return an array of all Remainig RuntimePermissions � version � 1,  January 07, 2002 � 
Parameters � ([Ljava/lang/Object;)V  �
 r � this JLcf_otheroptions2ecfm618606012$funcCFADMIN_GETREMAININGRUNTIMEPERMISSIONS; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getName ()Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       m n        �   #     *� 
�    �        � �    � �  �   #     � j�    �        � �    � �  �  R     �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:
-,� 8-� >� D-.� 8--
� H� NP� TW-/� 8--
� H� NV� TW-0� 8--
� H� NX� TW-1� 8--
� H� NZ� TW-2� 8--
� H� N\� TW-3� 8--
� H� N^� TW-4� 8--
� H� N`� TW-8� 8-
� H� Nbd� hW-
� H��    �   p    � � �     � � �    � � n    � � �    � � �    � � �    � � n    � 1 2    �  �    �  � 	   � " � 
 �   � 3  * 2 * 2 , ; , : , : , 2 , I . I . R . H . H . _ / _ / h / ^ / ^ / u 0 u 0 ~ 0 t 0 t 0 � 1 � 1 � 1 � 1 � 1 � 2 � 2 � 2 � 2 � 2 � 3 � 3 � 3 � 3 � 3 � 4 � 4 � 4 � 4 � 4 � 8 � 8 � 8 � 8 � 8 � 8 � : � : � :  �   �   ~     `� rY� tYvSYlSYxSYzSY|SY~SY�SY�SY�SY	�SY
�SY�SY�SY� tS� �� p�    �       ` � �    � �  �   !     l�    �        � �    � �  �   "     � p�    �        � �        ����  -i 
SourceFile SC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\_otheroptions.cfm Tcf_otheroptions2ecfm618606012$funcCFADMIN_REMOVERUNTIMEPERMISSIONFROMSECURITYCONTEXT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    REMRUNTIMEPERMISSIONSLIST " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % REMRUNTIMEPERMISSIONS ' PERMSARR ) PERMISSIONS + UPDATEDPERMSARR - VALUE / M 1 ALLRUNTIMEPERMISSIONS 3 	LOOPINDEX 5 I 7 J 9 K ; pageContext #Lcoldfusion/runtime/NeoPageContext; = >	  ? getOut ()Ljavax/servlet/jsp/JspWriter; A B javax/servlet/jsp/JspContext D
 E C parent Ljavax/servlet/jsp/tagext/Tag; G H	  I getVariable  (I)Lcoldfusion/runtime/Variable; K L %coldfusion/runtime/ArgumentCollection N
 O M _setCurrentLineNo (I)V Q R
  S ArrayNew (I)Ljava/util/List; U V coldfusion/runtime/CFPage X
 Y W set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ]  CFADMIN_GETALLRUNTIMEPERMISSIONS a _get &(Ljava/lang/String;)Ljava/lang/Object; c d
  e  cfadmin_getallRuntimePermissions g java/lang/Object i 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; k l
  m 	VARIABLES o java/lang/String q !GLOBALREMAININGRUNTIMEPERMISSIONS s _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; u v
  w _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
  { _List $(Ljava/lang/Object;)Ljava/util/List; } ~ coldfusion/runtime/Cast �
 �  ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 Y � 1 � 0 � REQUEST � SECURITY � CONTEXTS � _resolve � v
  � _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 Y � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � ListLen (Ljava/lang/String;)I � �
 Y � _boolean (J)Z � �
 � � SET � java � java.util.HashSet � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 Y � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � addAll � ListToArray $(Ljava/lang/String;)Ljava/util/List; � �
 Y � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; u �
  � java.lang.RuntimePermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _Object (Z)Ljava/lang/Object; � �
 � � (Ljava/lang/Object;)Z � �
 � � TARGET � * � _int (Ljava/lang/Object;)I � �
 � � ArrayDeleteAt (Ljava/util/List;I)Z � �
 Y � FLAG � contains � y d
  � (Ljava/lang/Object;D)D � �
  � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 Y � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 � � ArrayLen � �
 Y � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
   	removeAll toArray 
PERMISSION 	StructNew !()Lcoldfusion/util/FastHashtable;	
 Y
 _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
  ACTION   _LhsResolve v
  _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V
  RUNTIMEPERMISSIONSLIST WEBAPP 	DIRECTORY 2cfadmin_removeruntimePermissionFromSecurityContext! metaData Ljava/lang/Object;#$	 % &coldfusion/runtime/AttributeCollection' name) author+ "Mike Nimer (mnimer@macromedia.com)- return/ Returns the permissions array.1 param3 /directory - working security context/directory.5 hint7 8remove RuntimePermissionslist from this security context9 version; 1,  January 07, 2002= 
Parameters? REQUIREDA falseC NAMEE runtimePermissionslistG ([Ljava/lang/Object;)V I
(J webappL 	directoryN this VLcf_otheroptions2ecfm618606012$funcCFADMIN_REMOVERUNTIMEPERMISSIONFROMSECURITYCONTEXT; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getName ()Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1      #$       S   #     *� 
�   R       PQ   TU S   5     � rYSYSY S�   R       PQ   VW S  	�    >-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:+6� &:+8� &:+:� &:+<� &:-� @� F:-� J:� P:� P:� P:- �� T-� Z� `- �� T-b� fh-� j� n� `-p� rYtS� x� `
- �� T-� |� �� �� `�� `�� `�� `�� `�� `�� `- �� T-� Z� `- �� T--�� rY�SY�S� �� jY-� |SY-� |S� �� �� `- �� T-� |� �� ��� ��x-�- �� T-��� �� �- �� T--�� f�� jY- �� T-� |� �� �S� �W�� `�>---� |� ¸ �� rY�S� �͸ ��~�� �Y� ؙ .W---� |� ¸ �� rY�S� �ܸ ��~�� ո ؙ +- Ŷ T--� |� �-� |� � �W�� `� �-�---� |� ¸ �� rY�S� �͸ ��~�� �Y� ؙ :W- ̶ T--�� f�� jY---� |� ¸ �� rY�S� �S� �� �-� �� ��� $- ж T--� |� �--� |� ¶ �W-� |� �c� �� `-� |- �� T-� |� �� ���t|����-� |� ����-�- ܶ T-��� �� �- ݶ T--�� f�� jY-� |S� �W- ޶ T--�� f� jY- ޶ T-� |� �� �S� �W- � T--�� f� j� �� `�� `� 7- � T--� |� �--� |� ¶ �W-� |� �c� �� `-� |- � T-� |� �� ���t|������ `� �-- � T�� �-� rY�SͶ-� rY�S--� |� ¶-� rYS�- � T--� |� �-� � �W-� |� �c� �� `-� |- � T-� |� �� ���t|���Z� -� |� ��� -� |� `-�� rY�SY�S�� jY-� |SY-� |S-� |�-� |��   R   �   >PQ    >XY   >Z$   >[\   >]^   >_`   >a$   > G H   > b   > b 	  > "b 
  > 'b   > )b   > +b   > -b   > /b   > 1b   > 3b   > 5b   > 7b   > 9b   > ;b   >b   >b   >b c  n �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 � � �	 � � � � � � � � � �  �  � �% �/ �. �. �% �@ �Z �c �? �? �6 �z �z �z �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �( � � �� �D �D �M �M �C �C �\ �\ �Z �a �� �k �g �� �g �g �� �� �� �� �� �g �g �d �� �� �� �� �� �� �� �� � � � � � � � �" �" � �� �< �B �V �X �U �U �K �h �v �g �g �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �� �� �� � � � � �� �4 �4 �2 �G �G �< �Z �Z �M �o �l �l �_ �� �� �{ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �2 �� �� �� �� �� �� �� �< �z � � �% �, �, � �555 d  S   �     ߻(Y� jY*SY"SY,SY.SY0SY2SY4SY6SY8SY	:SY
<SY>SY@SY� jY�(Y� jYBSYDSYFSYHS�KSY�(Y� jYBSYDSYFSYMS�KSY�(Y� jYBSYDSYFSYOS�KSS�K�&�   R       �PQ   ef S   "     "�   R       PQ   gh S   "     �&�   R       PQ        ����  - 
SourceFile SC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\_otheroptions.cfm Ocf_otheroptions2ecfm618606012$funcCFADMIN_ADDRUNTIMEPERMISSIONTOSECURITYCONTEXT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    	INDEXLOOP " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % PERMISSIONS ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/JspContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 _setCurrentLineNo (I)V = >
  ? ArrayNew (I)Ljava/util/List; A B coldfusion/runtime/CFPage D
 E C set (Ljava/lang/Object;)V G H coldfusion/runtime/Variable J
 K I 1 M REQUEST O java/lang/String Q SECURITY S CONTEXTS U _resolve 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; W X
  Y java/lang/Object [ _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ] ^
  _ _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; a b
  c 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; e f
 E g 
PERMISSION i 	StructNew !()Lcoldfusion/util/FastHashtable; k l
 E m _set '(Ljava/lang/String;Ljava/lang/Object;)V o p
  q CLASS s java.lang.RuntimePermission u _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V w x
  y TARGET { _String &(Ljava/lang/Object;)Ljava/lang/String; } ~ coldfusion/runtime/Cast �
 �  _int (Ljava/lang/Object;)I � �
 � � 	ListGetAt '(Ljava/lang/String;I)Ljava/lang/String; � �
 E � ACTION �   � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � &(Ljava/lang/String;)Ljava/lang/Object; ] �
  � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 E � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � ListLen (Ljava/lang/String;)I � �
 E � (I)Ljava/lang/Object; � �
 � � _compare '(Ljava/lang/Object;Ljava/lang/Object;)D � �
  � _LhsResolve � X
  � _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � RUNTIMEPERMISSIONSLIST � WEBAPP � 	DIRECTORY � -cfadmin_addruntimePermissionToSecurityContext � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � author � "Mike Nimer (mnimer@macromedia.com) � return � Returns the permissions array. � param � /directory - working security context/directory. � hint � 5adds  RuntimePermissionslist to this security context � version � 1,  January 07, 2002 � 
Parameters � REQUIRED � false � NAME � runtimePermissionslist � ([Ljava/lang/Object;)V  �
 � � webapp � 	directory � this QLcf_otheroptions2ecfm618606012$funcCFADMIN_ADDRUNTIMEPERMISSIONTOSECURITYCONTEXT; LocalVariableTable Code getParamList ()[Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getName ()Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �        �   #     *� 
�    �        � �    � �  �   2     � RY�SY�SY�S�    �        � �    � �  �  L    �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:� <:� <:� <:- �� @-� F� L
N� L- �� @--P� RYTSYVS� Z� \Y-� `SY-� `S� d� h� L
N� L� �-j- �� @� n� r-j� RYtSv� z-j� RY|S- �� @-� `� �-
� `� �� �� z-j� RY�S�� z- �� @--� `� �-j� �� �W
-
� `� �c� �� L-
� `- �� @-� `� �� �� �� ��t|���N-P� RYTSYVS� �� \Y-� `SY-� `S-� `� �-� `��    �   �   � � �    � � �   � � �   � � �   � � �   � � �   � � �   � 3 4   �  �   �  � 	  � " � 
  � ' �   � � �   � � �   � � �  �   � >  } @ } R � \ � [ � [ � R � c � e � e � c � t � � � � � s � s � j � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 �	 � � � � � � � �+ �+ �4 �+ �+ �) �< �I �I �I �< � � �f �� �� �� �� �f �� �� �� �  �   �   �     ƻ �Y� \Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY�SY�SY� \Y� �Y� \Y�SY�SY�SY�S� �SY� �Y� \Y�SY�SY�SY�S� �SY� �Y� \Y�SY�SY�SY�S� �SS� � ��    �       � � �    � �  �   !     ��    �        � �      �   "     � ��    �        � �        ����  -c 
SourceFile SC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\_otheroptions.cfm cf_otheroptions2ecfm618606012  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   DRPNAMES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   &CFADMIN_GETREMAININGRUNTIMEPERMISSIONS   	   WEBAPP   	    ARPNAMESLIST " " 	  $ ERPNAMES & & 	  ( -CFADMIN_ADDRUNTIMEPERMISSIONTOSECURITYCONTEXT * * 	  , L . . 	  0 ARPNAMES 2 2 	  4 'CFADMIN_GETALLENABLEDRUNTIMEPERMISSIONS 6 6 	  8 TEMP : : 	  < I > > 	  @ MAP_ERROR_UPDATE_DS B B 	  D L10N_FINISH F F 	  H CHECKCSRFTOKEN J J 	  L 	DIRECTORY N N 	  P AERRORMESSAGES R R 	  T BERRORSEXIST V V 	  X FORM Z Z 	  \ CFCATCH ^ ^ 	  ` 2CFADMIN_REMOVERUNTIMEPERMISSIONFROMSECURITYCONTEXT b b 	  d RRP f f 	  h MAP_ERROR_REMOVE_DS j j 	  l TOKEN n n 	  p com.macromedia.SourceModTime  1��VX pageContext #Lcoldfusion/runtime/NeoPageContext; u v	  w getOut ()Ljavax/servlet/jsp/JspWriter; y z javax/servlet/jsp/JspContext |
 } { parent Ljavax/servlet/jsp/tagext/Tag;  �	  � com.adobe.coldfusion.* � bindImportPath (Ljava/lang/String;)V � �
  � 



 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � 


 � $class$coldfusion$tagext$io$SilentTag Ljava/lang/Class; coldfusion.tagext.io.SilentTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/io/SilentTag � _setCurrentLineNo (I)V � �
  � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 	VARIABLES � java/lang/String � !GLOBALREMAININGRUNTIMEPERMISSIONS � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � &cfadmin_getremainingRuntimePermissions � java/lang/Object � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object; � �
  � _factor1 � �
  � ADDRUNTIMEPERMISSIONS_SUBMIT � !FORM.ADDRUNTIMEPERMISSIONS_SUBMIT �  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z � �
  � _Object (Z)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � DISABLEDRUNTIMEPERMISSIONS � FORM.DISABLEDRUNTIMEPERMISSIONS �  DISABLERUNTIMEPERMISSIONS_SUBMIT � %FORM.DISABLERUNTIMEPERMISSIONS_SUBMIT � ENABLEDRUNTIMEPERMISSIONS � FORM.ENABLEDRUNTIMEPERMISSIONS �   � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � 	CSRFTOKEN � FORM.CSRFTOKEN � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � checkCSRFToken  _autoscalarize �
  REQUEST SECTABKEYNAME *coldfusion/runtime/TransientVariableHolder	 &(Lcoldfusion/runtime/NeoPageContext;)V 

 -cfadmin_addruntimePermissionToSecurityContext unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; coldfusion/runtime/NeoException
 t23 [Ljava/lang/String; Any	  findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I
 bind '(Ljava/lang/String;Ljava/lang/Object;)V !

" true$ $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag'& �	 ) coldfusion/tagext/io/OutputTag+
, � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag/. �	 1 "coldfusion/tagext/lang/ImportedTag3 l10n5 
../cftags/7 admin9 setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V;<
4= &coldfusion/runtime/AttributeCollection? idA map_error_update_dsC varE ([Ljava/lang/Object;)V G
@H setAttributecollection (Ljava/util/Map;)VJK  coldfusion/tagext/lang/ModuleTagM
NL
N � 7
					Unable to add selected data source:<br />
					Q writeS � java/io/WriterU
VT MESSAGEX D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; �Z
 [ _String &(Ljava/lang/Object;)Ljava/lang/String;]^
 �_ EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;ab
 c <br />
					e DETAILg 
				i doAfterBodyk �
Nl _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;no
 p doEndTagr � #javax/servlet/jsp/tagext/TagSupportt
us doCatch (Ljava/lang/Throwable;)Vwx
Ny 	doFinally{ 
N|
,l coldfusion/tagext/QueryLoop
�s
�y
,| ArrayLen (Ljava/lang/Object;)I��
 � (D)Ljava/lang/Object; ��
 �� _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V��
 � unbind� 

� 2cfadmin_removeruntimePermissionFromSecurityContext� t24�	 � dump� /WEB-INF/cftags� cfdump� _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;��
 � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z��
 � map_error_remove_ds� ;
					Unable to remove selected data sources:<br />
					� _factor2� �
 � ArrayNew (I)Ljava/util/List;��
 � _Array .(Ljava/lang/Object;)Lcoldfusion/runtime/Array;��
 �� setArray (Lcoldfusion/runtime/Array;)V��
 �� 'cfadmin_getAllEnabledRuntimePermissions� _List $(Ljava/lang/Object;)Ljava/util/List;��
 �� ArrayToList $(Ljava/util/List;)Ljava/lang/String;��
 � (I)Ljava/lang/Object; ��
 �� _compare (Ljava/lang/Object;D)D��
 � 1� _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;��
 � *� '(Ljava/lang/Object;Ljava/lang/String;)D��
 � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z��
 � _double (Ljava/lang/Object;)D��
 �� '(Ljava/lang/Object;Ljava/lang/Object;)D��
 � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I��
 � (J)Z ��
 �� allRuntimePermissions� +
	&lt;&lt;ALL RuntimePermissions&gt;&gt;
� _factor3� �
 �
 �l
 �y
 �| 
� 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag�� �	 � !coldfusion/tagext/lang/IncludeTag� 	cfinclude� template� ../include/errors.cfm� \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
   setTemplate �
� q
<table border="0" cellpadding="0" cellspacing="0">
<tr>
	<td>&nbsp;</td>
	<td nowrap height="25"  bgcolor="# 	BLUELIGHT 5">&nbsp;&nbsp; <a href="javascript:changeTab('dsn')">	 l10n_secdsource Data Sources M</a> &nbsp;&nbsp;</td>
	<td>&nbsp;</td>
	<td nowrap height="25"  bgcolor="# 8">&nbsp;&nbsp; <a href="javascript:changeTab('cftags')"> l10n_cftags CF Tags =">&nbsp;&nbsp; <a href="javascript:changeTab('cffunctions')"> l10n_cffunctions CF Functions L</a> &nbsp;&nbsp;</td>
	<td>&nbsp;</td>
	<td nowrap height="25" bgcolor="# 7">&nbsp;&nbsp; <a href="javascript:changeTab('files')"> l10n_cfilesdir! 
Files/Dirs# 8">&nbsp;&nbsp; <a href="javascript:changeTab('ipport')">% ipports' Server/Ports) 	GRAYLIGHT+ 8">&nbsp;&nbsp; <a href="javascript:changeTab('Others')">- Others/ |</a> &nbsp;&nbsp;</td>
</tr>
</table>


<table border="0" cellpadding="0" cellspacing="1" width="100%">
<tr bgcolor="#1 C" class="cellBlueTopAndBottom">
	<td height="20">&nbsp;&nbsp; <b >3 otherspermissions5 Other Permissions:7 _factor49 �
 : 
		< 
			> /*@ (B rootsecuritycntxD Root Security ContextF )H 
ESAPIUTILSJ _resolveL �
 M encodeForHTMLFilePathO _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;QR
 S
	</b></td>
</tr>
<tr>
	<td align="center">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr><td height="5"></td></tr>
		<tr>
			<td nowrap><font class="label">&nbsp;&nbsp;</font></td>
			<td width="210" nowrap><font class="label">&nbsp;<label for="enabledrps">U l10n_endata_runtimeW Enabled Runtime PermissionsY �</label></font></td>
			<td width="40" nowrap></td>
			<td width="210" nowrap><font class="label">&nbsp;<label for="disabledrps">[ l10n_disdata_runtime] Disabled Runtime Permissions_'</label></font></td>
			<td nowrap><font class="label">&nbsp;&nbsp;</font></td>
		</tr>
		<tr><td height="5"></td></tr>
		<tr>
			<td></td>
			<td>

				<select name="enabledruntimePermissions" id="enabledrps" size="12" multiple class="label" style="width:20em;">

                    a 
textnocasec asce 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Zgh
 i 
					k (Ljava/lang/String;)D�m
 �n P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; p
 q 
						<option value="s " >u </option>
					w CFLOOPy checkRequestTimeout{ �
 | _checkCondition (DDD)Z~
 �

				</select>
			</td>
			<td align="center">
				<input type="Submit" title="Add" name="disableruntimePermissions_submit" value=">>"><br />
				<input type="Submit" title="Remove" name="addruntimePermissions_submit" value="<<"><br />
				<br />
			</td>
			<td>
				� �
				<select name="disabledruntimePermissions" id="disabledrps" size="12" multiple style="width:20em" class="label">


					� 

						<option value="� </option>

					� c

				</select>
			</td>
		</tr>
		<tr><td height="10"></td></tr>
		</table>
	</td>
</tr>
� finish� l10n_finish� Finish� -
<tr class="cellBlueTopAndBottom" bgcolor="#� �">
	<td height="30" colspan="3">
		<table border="0" cellpadding="0" cellspacing="0"><tr>
		<td nowrap><font class="label">&nbsp;&nbsp;</font></td>
		<td><input type="Submit" title="� " class="buttn-fix" value="� �" name="finish"></td>
		</tr></table></td>
</tr>
</table>

<br />
<table border="0" cellpadding="0" cellspacing="0" width="80%">
<tr><td>
<font class="sentance">
� step_ds_runtime��
To disable the Runtime Permissions for a ColdFusion page in this directory, select the Runtime Permission from the Enable Runtime Permissions box and move it to the Disabled Runtime Permissions box.
To disable more than one Runtime Permissions for a ColdFusion page, hold down the Control key and click the name of the Runtime Permissions. ColdFusion pages in the directory cannot use Runtime Permissions that are listed in the Disabled Runtime Permissions box.
 <br />
<br />
<b>Please note:</b> By default, all Runtime Permissions are enabled. However, you can choose to enable or disable the permissions listed in the Enabled Runtime Permissions box. � _factor5� �
 � 7
<br />
<br />
<br />
</font>
</td></tr></table>
� IsDebugMode ()Z��
 � 
	<a var="� SECURITY� CONTEXTS� 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;��
 � ">
� _factor6� �
 � Lcoldfusion/runtime/UDFMethod; Ocf_otheroptions2ecfm618606012$funcCFADMIN_ADDRUNTIMEPERMISSIONTOSECURITYCONTEXT�
� 	�	 � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V��
 � Hcf_otheroptions2ecfm618606012$funcCFADMIN_GETREMAININGRUNTIMEPERMISSIONS�
� 	 ��	 � Icf_otheroptions2ecfm618606012$funcCFADMIN_GETALLENABLEDRUNTIMEPERMISSIONS�
� 	��	 �  cfadmin_getallRuntimePermissions Bcf_otheroptions2ecfm618606012$funcCFADMIN_GETALLRUNTIMEPERMISSIONS�
� 	��	 �  CFADMIN_GETALLRUNTIMEPERMISSIONS� Tcf_otheroptions2ecfm618606012$funcCFADMIN_REMOVERUNTIMEPERMISSIONFROMSECURITYCONTEXT�
� 	��	 � metaData Ljava/lang/Object;��	 � 	Functions�	��	��	��	��	�� this Lcf_otheroptions2ecfm618606012; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value LineNumberTable __factorParent silent6  Lcoldfusion/tagext/io/SilentTag; mode6 t6 t7 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 output20  Lcoldfusion/tagext/io/OutputTag; mode20 t16 t17 t18 t19 t20 t21 java/lang/Throwable <clinit> registerUDFs include7 #Lcoldfusion/tagext/lang/IncludeTag; module8 $Lcoldfusion/tagext/lang/ImportedTag; mode8 module9 mode9 t15 module10 mode10 t25 t26 t27 t28 module11 mode11 t31 t32 t33 t34 t35 t36 module12 mode12 t39 t40 t41 t42 t43 t44 module13 mode13 t47 t48 t49 t50 t51 t52 module14 mode14 t55 t56 t57 t58 t59 t60 module15 mode15 module16 mode16 t14 module17 mode17 t22 D t30 t37 module18 mode18 t45 t46 module19 mode19 t53 t54 t4 ,Lcoldfusion/runtime/TransientVariableHolder; t5 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable1 output1 mode1 module0 mode0 __cfcatchThrowable2 module2 t29 output4 mode4 module3 mode3 t38 !coldfusion/runtime/AbortException\ java/lang/Exception^ module5 mode5 getMetadata 1     #                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     � �      & �   . �   �   � �   �    ��   ��   ��   ��   ��       �   #     *� 
�   �       ��      �  M    *+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q�   �       ��    ��   ��  �� �   i     !*� x� ~L*� �N*�� �*-+��� ��   �   *    !��     !��    !��    !  � �        � � �  �    �*,�� �*,�� �*� �+� �� �:*� �� �� �Y6� ]*,� �M*,��� :� 6� n�*,��� :� � W����ͨ � :� �:	*,�qM�	�v� :
� #
�� � #:�� � :� �:��*,�� �*�*+� ��,:*�� �� ��-Y6� �*,�;� :� ��*,��� :� ��,��W*�� �*��� M,��W,**� �Y�SY�S�N� �Y**� !�SY**� Q�S���`�W,��W*,� ��~��l��� :� #�� � #:��� � :� �:���*�  4 O z U f z l w z z  z ) O � U f � l � � � � � ) O � U f � l � � � � � � � � � � � �������� �������������� �   �   ���    �� �   ���   ���   ���   �� >   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   �� >   ���   � �   ��   ��   ��   �� �   .     *�:�W�b�9�9�8�*� ��   �   � 	    ��� �� �� �YS�(� ��*0� ��2� �YS���� �����Y������Y���û�Y�ƳȻ�Y�̳λ�Y�ӳջ@Y� �Y�SY� �Y��SY��SY��SY��SY��SS�I�ٱ   �       ���  �     � } � * � L � � �    �   M     /*+����*�ö�*7�ȶ�*вζ�*c�ն��   �       /��    � � �   >     *�   �   *    ��     � �    ��    ��   � � �   >     *�   �   *    ��     � �    ��    ��  9 � �  I  =  w*,� �*��+� ���:*�� ������� ���� �,�W,*� �YS� ��`�W,
�W*�2+� ��4:*�� �68:�>�@Y� �YBSYS�I�O� ��PY6� 6*,� �M,�W�m���� � :� �:*,�qM��v� :	� #	�� � #:

�z� � :� �:�}�,�W,*� �YS� ��`�W,�W*�2	+� ��4:*�� �68:�>�@Y� �YBSYS�I�O� ��PY6� 6*,� �M,�W�m���� � :� �:*,�qM��v� :� #�� � #:�z� � :� �:�}�,�W,*� �YS� ��`�W,�W*�2
+� ��4:*�� �68:�>�@Y� �YBSYS�I�O� ��PY6� 6*,� �M,�W�m���� � :� �:*,�qM��v� :� #�� � #:�z� � :� �:�}�,�W,*� �YS� ��`�W, �W*�2+� ��4:*�� �68:�>�@Y� �YBSY"S�I�O� ��PY6� 6*,� �M,$�W�m���� � :� �: *,�qM� �v� :!� #!�� � #:""�z� � :#� #�:$�}�$,�W,*� �YS� ��`�W,&�W*�2+� ��4:%*�� �%68:�>%�@Y� �YBSY(S�I�O%� �%�PY6&� 6*%&,� �M,*�W%�m���� � :'� '�:(*&,�qM�(%�v� :)� #)�� � #:*%*�z� � :+� +�:,%�}�,,�W,*� �Y,S� ��`�W,.�W*�2+� ��4:-*�� �-68:�>-�@Y� �YBSY0S�I�O-� �-�PY6.� 6*-.,� �M,0�W-�m���� � :/� /�:0*.,�qM�0-�v� :1� #1�� � #:2-2�z� � :3� 3�:4-�}�4,2�W,*� �Y,S� ��`�W,4�W*�2+� ��4:5*�� �568:�>5�@Y� �YBSY6S�I�O5� �5�PY66� 6*56,� �M,8�W5�m���� � :7� 7�:8*6,�qM�85�v� :9� #9�� � #::5:�z� � :;� ;�:<5�}�<*� 8 � � � � � � � � �  � � � ������������������������~�����s�����s�����������a}����V�����V�����������D`cchc9�����9�����������'CFFKFfrlorf�lo�r~����
&)).)�IUORU�IdORdUaddid �  d =  w��    w� �   w��   w��   w	
   w   w >   w��   w��   w�� 	  w�� 
  w��   w��   w   w >   w�   w��   w �   w�   w�   w�   w   w >   w�   w��   w�   w�   w�   w�   w   w >   w�   w�    w� !  w� "  w� #  w� $  w %  w  > &  w!� '  w"� (  w#� )  w$� *  w%� +  w&� ,  w' -  w( > .  w)� /  w*� 0  w+� 1  w,� 2  w-� 3  w.� 4  w/ 5  w0 > 6  w1� 7  w2� 8  w3� 9  w4� :  w5� ;  w6� <�   � % &� � H� H� G� �� f�+�+�*���I����c�,�������F��������)���������������������� � � �   	 :  m*,=� �**� Q����� *,=� ��)*,?� �**� Q�A���� �,C�W*�2+� ��4:*�� �68:�>�@Y� �YBSYES�I�O� ��PY6� 6*,� �M,G�W�m���� � :� �:*,�qM��v� :� #�� � #:		�z� � :
� 
�:�}�,I�W� 8,*�� �**� �YKS�NP� �Y**� Q�S�T�`�W*,=� �,V�W*�2+� ��4:*�� �68:�>�@Y� �YBSYXS�I�O� ��PY6� 6*,� �M,Z�W�m���� � :� �:*,�qM��v� :� #�� � #:�z� � :� �:�}�,\�W*�2+� ��4:*�� �68:�>�@Y� �YBSY^S�I�O� ��PY6� 6*,� �M,`�W�m���� � :� �:*,�qM��v� :� #�� � #:�z� � :� �:�}�,b�W*� =*Ƕ �**� )���df�j� ߶ �*,l� �9*ȶ �**� )����9ʸo9  ��N*?�r:""-� �� h,t�W,**� )**� A��θ`�W,v�W,*ɶ �**� )**� A��θ`�d�W,x�W c\9 ��N"-� �z�} �����,��W*� =*Զ �**� ���df�j� ߶ �,��W9#*ض �**� ����9%ʸo9''��N*?�r:))-� �� h,��W,**� **� A��θ`�W,v�W,*ڶ �**� **� A��θ`�d�W,��W'#c\9'��N)-� �z�}#'%�����,��W*�2+� ��4:**� �*68:�>*�@Y� �YBSY�SYFSY�S�I�O*� �*�PY6+� 6**+,� �M,��W*�m���� � :,� ,�:-*+,�qM�-*�v� :.� #.�� � #:/*/�z� � :0� 0�:1*�}�1,��W,*� �YS� ��`�W,��W,**� I��`�W,��W,**� I��`�W,��W*�2+� ��4:2*� �268:�>2�@Y� �YBSY�S�I�O2� �2�PY63� 6*23,� �M,��W2�m���� � :4� 4�:5*3,�qM�52�v� :6� #6�� � #:727�z� � :8� 8�:92�}�9*� ( � � � � � � � � � � � � � � � � � � � � � � � ������������������������h�����]�����]�������������0<69<�0K69K<HKKPK $�?KEHK�?ZEHZKWZZ_Z �  
 4  m��    m� �   m��   m��   m7   m8 >   m��   m��   m��   m�� 	  m�� 
  m��   m9   m: >   m;�   m�   m��   m �   m�   m�   m<   m= >   m>�   m�   m��   m�   m�   m�   m?   m@?   m?    m  "  m? #  mA? %  m!? '  m#  )  mB *  mC > +  m&� ,  mD� -  mE� .  m)� /  m*� 0  m+� 1  mF 2  mG > 3  m.� 4  mH� 5  mI� 6  m1� 7  m2� 8  m3� 9�  B P � � -� 5� ~� G�1����� -� %� ���R�M����������������������L�G�G�F�q�l�l�l�l�d����������������������������(�#�#�"�M�H�H�H�H�@�����������d�d�c����������������� � � �  �  /  �*�� �Y�S*� �**� � ��*� ¸ ƶ �*+,� �� �*+,� �� �**� ]�ն ٸ �Y� � W**� ]�� ٸ �Y� � W**� ]�� ٸ �Y� � W**� ]�� ٸ ߸ � k*� q� �**� ]��� ٙ *� q*[� �Y�S� �� �*� �**� M� �*� �Y**� q�SY*� �YS� �S� �W**� ]�ն ٸ �Y� � W**� ]�� ٸ ߸ �r�
Y*� x�:*� =*� �**� -� �*� �Y*[� �Y�S� �SY**� !�SY**� Q�S� ƶ ���:�:�:���  �           _�#*� Y%� �*�*+� ��,:*$� �� ��-Y6	�/*�2� ��4:
*%� �
68:�>
�@Y� �YBSYDSYFSYDS�I�O
� �
�PY6� �*
,� �M,R�W,*'� �**� a� �YYS�\�`�d�W,f�W,*(� �**� a� �YhS�\�`�d�W*,j� �
�m���� � :� �:*,�qM�
�v� :� )� i� ��� � #:
�z� � :� �:
�}��~������ :� &� o�� � #:��� � :� �:���**� U� �Y*,� �**� U����c��S**� E���� �� � :� �:���**� ]�� ٸ �Y� � W**� ]�� ٸ ߸ �޻
Y*� x�:*� =*@� �**� e� ��*� �Y*[� �Y�S� �SY**� !�SY**� Q�S� ƶ ��|��:�:�:����   O           _�#*�2+� ��4:*C� ����>**� a�:�F��W�@Y� �YFSYS�I�O� ���� :���*� Y%� �*�*+� ��,:*E� �� ��-Y6 �/*�2� ��4:!*F� �!68:�>!�@Y� �YBSY�SYFSY�S�I�O!� �!�PY6"� �*!",� �M,��W,*H� �**� a� �YYS�\�`�d�W,f�W,*I� �**� a� �YhS�\�`�d�W*,j� �!�m���� � :#� #�:$*",�qM�$!�v� :%� )� i� �%�� � #:&!&�z� � :'� '�:(!�}�(�~������ :)� &� o)�� � #:**��� � :+� +�:,���,**� U� �Y*M� �**� U����c��S**� m���� �� � :-� -�:.���.*� /G�����<�����<������������0�$0*-0��?�$?*-?0<??D?:��]:��_:������$�*�����N�����C�����C���� ��7�+7147��F�+F14F7CFFKF�!$]�!)_�!�$������+�1����� �  � /  ���    �� �   ���   ���   �JK   �LM   ��N   �O�   �P�   �Q > 	  �R 
  �S >   ���   ���   �;�   ��   ���   � �   ��   ��   ��   ��   �>�   ��   ��K   �M   �N   �T�   �U   �V�   �@�   �W�   �X >    �Y !  �Z > "  �� #  �� $  �A� %  �[� &  �!� '  �"� (  �#� )  �$� *  �%� +  �&� ,  �D� -  �E� .�  ~ �             '  @ @ D F ? ? W W [ ] V V ? ? n n r t m m ? ? � � � � � � ? � � � � � � � � � � � � � � � � � ? ?EWitEE::�#�#�#�# %,%`'`'`'`'X'�(�(�(�(�(�%�$b,b,b,n,b,t,t,t,P,P,-�8�8�8�8�8�8�8�8�8�8�8�8�8�@�@@@�@�@�@�@wCwCUC�D�D�D�D'F3FgHgHgHgH_H�I�I�I�I�I�F�EiMiMiMuMiM{M{M{MWMWM�>�8 � � �  ! 	   �*� *`� �*������*� 5*c� �**� 9� ��*� �Y**� !�SY**� Q�S� ƶ �*� )*e� �*������*� %*g� �**� 5������ �*� i*�� �Y�S� �� �*m� �**� 5��������~�� �Y� � W**� 5ʶ�и��~�� ߸ � |*� 1ʶ �� A*s� �***� )���**� i**� 1��ζ�W*� 1**� 1���c��� �**� 1�*p� �**� i����ĸ��t|����� �*� 1ʶ �� �*~� �**� %��`**� i**� 1��θ`�ⅸ� 4*�� �***� )���**� i**� 1��ζ�W� **�� �***� ���**� i**� 1��ζ�W*� 1**� 1���c��� �**� 1�*{� �**� i����ĸ��t|���H*�2+� ��4:*�� �68:�>�@Y� �YBSY�SYFSY�S�I�O� ��PY6� 6*,� �M,�W�m���� � :� �:*,�qM��v� :� #�� � #:		�z� � :
� 
�:�}�*� ������y�����y����������� �   z   ���    �� �   ���   ���   �`   �a >   ���   ���   ���   ��� 	  ��� 
  ��� �  ^ W ` ` `  ` !c 3c >c !c !c c Ye Xe Xe Me ng ng ng ng cg �i �i i �m �m �m �m �m �m �m �m �m �m �p �p �p �s �ss �s �spp"pppp*p9p9p*p �p\{\{X{l~l~|~w~w~l~��������������������l~�{�{�{�{�{�{�{{{�{X{ �m  \]�i�'� b� �   "     �ٰ   �       ��         r    s