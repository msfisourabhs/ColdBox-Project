����  -% 
SourceFile LC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\settings\office.cfm cfoffice2ecfm223234626  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
OFFICEPATH Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   ASTATUSMESSAGES   	   ADD_LOCAL_CONFIG   	    
REMOTEHOST " " 	  $ DIRPATH & & 	  ( HOSTNAME * * 	  , CHECKCSRFTOKEN . . 	  0 ADD_REMOTE_CONFIG 2 2 	  4 AERRORMESSAGES 6 6 	  8 PORT : : 	  < INVALID_LOCATION_ERROR > > 	  @ BROWSE_SERVER B B 	  D RESULT F F 	  H BERRORSEXIST J J 	  L OOPATH N N 	  P CFCATCH R R 	  T FACTORY V V 	  X FONTPATH Z Z 	  \ REMOVE_REMOTE_CONFIG ^ ^ 	  ` GETCSRFTOKEN b b 	  d TOKEN f f 	  h BSTATUSEXIST j j 	  l ADDREMOTECONFIG n n 	  p LOCAL_CONFIG_ERROR_ADD r r 	  t OS v v 	  x ADDLOCALCONFIG z z 	  | REQUEST ~ ~ 	  � 
REMOTEPORT � � 	  � REMOVEREMOTECONFIG � � 	  � REMOTE_CONFIG_ERROR_ADD � � 	  � FORM � � 	  � SUCCESSMESSAGE � � 	  � DOCUMENTSERVICE � � 	  � com.macromedia.SourceModTime  4�G�X pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � com.adobe.coldfusion.* � bindImportPath (Ljava/lang/String;)V � �
  � 


 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � L

<script language="Javascript" src="../scripts/util.js"></script>



 � write � � java/io/Writer �
 � � %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/net/CookieTag � _setCurrentLineNo (I)V � �
  � cfcookie � expires � 30 � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; � �
  � 
setExpires (Ljava/lang/Object;)V � �
 � � value � CGI � java/lang/String � SCRIPT_NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setValue � �
 � � httponly � true � _boolean (Ljava/lang/String;)Z � �
 �  :(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z �
  setHttpOnly (Z)V
 � name	 cfadmin_lastpage_ GetAuthUser ()Ljava/lang/String;
  concat &(Ljava/lang/String;)Ljava/lang/String;
 � setName �
 � 	hasEndTag coldfusion/tagext/GenericTag
 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  

! $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag$# �	 & coldfusion/tagext/io/SilentTag( 
doStartTag ()I*+
), 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;./
 0 LOCALE2 REQUEST.LOCALE4 en6 checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V89
 : 
LOCALEFILE< java/lang/StringBuffer> resources/settings_@  �
?B append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;DE
?F .xmlH toStringJ java/lang/ObjectL
MK _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)VOP
 Q falseS 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V8U
 V ArrayNew (I)Ljava/util/List;XY
 Z _Array .(Ljava/lang/Object;)Lcoldfusion/runtime/Array;\]
 �^ setArray (Lcoldfusion/runtime/Array;)V`a coldfusion/runtime/Variablec
db  f doAfterBodyh+
i _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;kl
 m doEndTago+ #javax/servlet/jsp/tagext/TagSupportq
rp doCatch (Ljava/lang/Throwable;)Vtu
v 	doFinallyx 
y &class$coldfusion$tagext$lang$ObjectTag  coldfusion.tagext.lang.ObjectTag|{ �	 ~  coldfusion/tagext/lang/ObjectTag� cfobject� action� CREATE� 	setAction� �
�� type� JAVA� setType� �
�� class�  coldfusion.server.ServiceFactory� setClass� �
�� factory�
� 
� _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � getDocumentService� _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;��
 � set� �
d� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � _Object (Z)Ljava/lang/Object;��
 �� (Ljava/lang/Object;)Z ��
 �� 	CSRFTOKEN� FORM.CSRFTOKEN�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � checkCSRFToken� _autoscalarize��
 � SETTINGSTABKEYNAME� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � 
	� SERVER� NAME� toLowerCase� 
startsWith� mac� 
		� /Contents/MacOS� /program� 

        � /soffice.bin� 
FileExists� �
 � 
	     � *coldfusion/runtime/TransientVariableHolder� &(Lcoldfusion/runtime/NeoPageContext;)V �
�� setOfficeLocation� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� �	 � coldfusion/tagext/io/OutputTag�
�, 
			� (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag�� �	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin  :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
� &coldfusion/runtime/AttributeCollection id localofficeupdated	 var SuccessMessage ([Ljava/lang/Object;)V 
 setAttributecollection (Ljava/util/Map;)V  coldfusion/tagext/lang/ModuleTag

, 2
				Local OpenOffice configuration updated.
			
i
v
y
�i coldfusion/tagext/QueryLoop
 p
 v
�y unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;$% coldfusion/runtime/NeoException'
(& t33 [Ljava/lang/String; Any,*+	 . findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I01
(2 bind '(Ljava/lang/String;Ljava/lang/Object;)V45
�6 
				8 local_config_error_add: /
					Unable to configure local Office.
					< MESSAGE> D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; �@
 A EncodeForHTMLC
 D <br />
					F DETAILH 


   			J 
   			L 

			
			N _List $(Ljava/lang/Object;)Ljava/util/List;PQ
 �R ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)ZTU
 V unbindX 
�Y _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;[\
 ] 
	    _ invalid_location_errora 
					Specified directory c 
ESAPIUTILSe _resolveg �
 h encodeForHTMLFilePathj ) is not a valid Office installation
				l 

        n 
	 p #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTagsr �	 u coldfusion/tagext/lang/LogTagw cflogy file{ audit} setFile �
x� application� yes� setApplication�
x� text� User � " added new office location path : � setText� �
x� _factor1�\
 � 
		
	� setOpenOfficeRemoteConfig� remotesofficeupdated� 3
				Remote OpenOffice configuration updated.
			� t34�+	 � remote_config_error_add� 4
					Unable to configure remote OpenOffice.
					� _factor2�\
 � 6 added new remote office location path with hostname: �  and port : � remotesofficedelete� 3
				Remote OpenOffice configuration removed.
			� t35�+	 � _factor3�\
 � 4 removed remote office location path with hostname: � 



� document_pagename� pagename� OpenOffice Configuration� 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag�� �	 � !coldfusion/tagext/lang/IncludeTag� 	cfinclude� template� ../header.cfm� setTemplate� �
�� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag�� �	 � #coldfusion/tagext/html/form/FormTag� cfform� 
globalForm�
�
�� method� post� 	setMethod� �
��
�, 1

<input type="hidden" name="csrftoken" value="� getCSRFToken� ">

� ../include/margintop.cfm� ../include/errors.cfm� ../include/status.cfm� 

<h2 class="pageHeader">� pageHeader_documentmanagement� 
Server Settings &gt; Document� 
</h2>
<br>


� 
	<span style="color:green">� </span>
	<br><br>
� getOpenOfficeRemoteHost� getOpenOfficeRemotePort�  
  getOfficeLocation _factor4\
   


 equalsIgnoreCase	 contains Contents 	substring 0 lastIndexOf _double (Ljava/lang/Object;)D
 � (D)Ljava/lang/Object;�
 � program ^



<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="# 	GRAYLIGHT  &" class="cellBlueTopAndBottom">
		<b>" openoffice_register_local$ *Configure local OpenOffice with ColdFusion& �</b>
	</td>
</tr>
<tr>
	<td>
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
			<tr>
			<td>
			   <table width="100%" border=0 cellspacing="2">
				<tr>
				        ( 
officePath* OpenOffice Directory, 
					<label for="officePath">. _factor50\
 1 )</label>
					<input type="text" title="3 A" maxlength="550" name="dirpath" id="localPath" size="30" value="5 encodeForHTMLAttributeFilePath7 ">
					&nbsp;&nbsp;
					9 browser_server; browse_server= Browse Server? F
					<input type="button" class="buttn"  name="BrowseSubmit" title="A 	" value="C �" onclick='wopen("localPath");'>
				</tr>
			   </table>
			</tr>
			</td>
			<tr>
			<td class="cellBlueTopAndBottom" bgcolor="#E 	BLUELIGHTG 	">
					I button_add_officeK add_local_configM AddO #
					<input type="submit" title="Q 6" class="buttn"  name="addLocalConfig" 
						value="S �" class="buttn-fix">
			</td>
			</tr>
		</table>
		
	</td>

</tr>
</table>


<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#U openoffice_register_remoteW +Configure remote OpenOffice with ColdFusionY �</b>
	</td>
</tr>
<tr>
	<td>
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
			<tr>
			<td>
			   <table width="100%" border=0 cellspacing="2">
				<tr>
				   <td>
				        [ 
remoteHost] Remote Host_ _factor6a\
 b 
					<label for="remoteHost">d D</label>
				   </td>
				   <td>
					<input type="text" title="f C" maxlength="550" name="hostname" id="remoteHost" size="30" value="h EncodeForHTMLAttributej
 k A">
				   </td>
				</tr>
				<tr>
				   <td>
				         m 
remotePorto Remote Portq "
				  	 <label for="remotePort">s ?" maxlength="550" name="port" id="remotePort" size="30" value="u x">
				   </td>
				</tr>
			   </table>
			</tr>
			</td>
			<tr>
			<td class="cellBlueTopAndBottom" bgcolor="#w add_remote_configy /" class="buttn"  name="addRemoteConfig" value="{ " class="buttn-fix">
					} button_delete_office remove_remote_config� Delete� 2" class="buttn"  name="removeRemoteConfig" value="� W" class="buttn-fix">
			</td>
			</tr>
		</table>
		
	</td>
</tr>
</table>


� ../include/marginbottom.cfm� _factor7�\
 � ../footer.cfm�
�i
�p
�v
�y _factor8�\
 � _factor9�\
 � metaData Ljava/lang/Object;��	 � this Lcfoffice2ecfm223234626; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; LineNumberTable __factorParent form42 %Lcoldfusion/tagext/html/form/FormTag; mode42 I t6 t7 t8 t9 	include41 #Lcoldfusion/tagext/lang/IncludeTag; t11 t12 Ljava/lang/Throwable; t13 t14 t15 t16 t17 java/lang/Throwable� cookie0 !Lcoldfusion/tagext/net/CookieTag; silent6  Lcoldfusion/tagext/io/SilentTag; mode6 t10 object7 "Lcoldfusion/tagext/lang/ObjectTag; log19 Lcoldfusion/tagext/lang/LogTag; log24 module25 $Lcoldfusion/tagext/lang/ImportedTag; mode25 t18 t19 t20 t21 t22 t23 	include26 output43  Lcoldfusion/tagext/io/OutputTag; mode43 t27 t28 t29 t30 t31 module33 mode33 module34 mode34 module35 mode35 t24 t25 t26 module36 mode36 t32 module37 mode37 module38 mode38 module39 mode39 	include40 <clinit> t4 ,Lcoldfusion/runtime/TransientVariableHolder; output9 mode9 module8 mode8 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 output11 mode11 module10 mode10 t36 t37 !coldfusion/runtime/AbortException  java/lang/Exception output13 mode13 module12 mode12 log14 	include27 	include28 	include29 module30 mode30 module31 mode31 module32 mode32 output16 mode16 module15 mode15 __cfcatchThrowable1 output18 mode18 module17 mode17 getMetadata output21 mode21 module20 mode20 __cfcatchThrowable2 output23 mode23 module22 mode22 1     -                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     � �   # �   { �   � �   � �   *+   r �   �+   �+   � �   � �   ��       �   #     *� 
�   �       ��      �  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � ��   �       ���    ���   ���  �� �   i     !*� �� �L*� �N*�� �*-+��� ��   �   *    !��     !��    ! ��    ! � � �        �\ �  - 	   �*,"� �*��*+� ���:* �� ��
�� �����*�� �Y�S� �� �� ������� ������Y6� �*,�1M*,�� :� �� ��*,�2� :� �� ��*,�c� :� �� ��*,��� :	� r� �	�*,�� �*��)� ���:
*>� �
���� ���
�
� � :� '� _�*,"� �����L� � :� �:*,�nM���� :� #�� � #:��� � :� �:���*�  t �;� � �;� � �;� � �;� �;�%8;�;@;� i �g� � �g� � �g� � �g� �g�%[g�adg� i �v� � �v� � �v� � �v� �v�%[v�adv�gsv�v{v� �   �   ���    �� �   ���   � ��   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ��� �     & � 8 � 8 � Y �> �>  � �\ �  *     �*,�� �,�� �*� �+� �� �:*
� ����� ݶ ���*�� �Y�S� �� �� �� ��������
*
� �*��� ���� � �*,"� �*�'+� ��):*� ���-Y6� �*,�1M**� �357�;*� �Y=S�?YA�C*� �Y3S� �� �GI�G�N�R**� MT�W**� mT�W*� 9*!� �*�[�_�e*� *"� �*�[�_�e**� -g�W**� =g�W�j��[� � :� �:*,�nM��s� :	� #	�� � #:

�w� � :� �:�z�*,"� �*�+� ���:*'� ����� ������� ������� ����
�� ����� � �*,�� �*� �*+� �***� Y����M����*,"� �**� }����Y��� W**� q����Y��� W**� �������� m*� ig��**� ������ *� i*�� �Y�S� ���*6� �**� 1���*�MY**� i��SY*� �Y�S� �S��W*,"� �**� }��� *+,��� �*,"� �*,"� �**� q��� �*+,��� �*,ʶ �**� M�¸��� �*,q� �*�v+� ��x:* �� �z|~� ���z������z��?Y��C* �� �*��G��G**� -�¸ �G��G**� =�¸ �G�N� ����� � �*,o� �*,�� �*,"� �**� ���� �*+,��� �*,ʶ �**� M�¸��� �*,q� �*�v+� ��x:* �� �z|~� ���z������z��?Y��C* �� �*��G��G**� -�¸ �G��G**� =�¸ �G�N� ����� � �*,o� �*,�� �*,�� �*��+� ���:* �� �����Y�MYSY�SYSY�S����Y6� 6*,�1M,�� ������ � :� �:*,�nM��s� :� #�� � #:�� � :� �:��*,"� �*��+� ���:* �� ����� ����� � �*,"� �*��++� ���:* �� ����Y6� '*,��� :� E�*,"� ������!� :� #�� � #:�"� � :� �:�#�*,"� �*�  �ru�uzu� �������� ����������������n�������c�������c���������������=V��\x��~���=V��\x��~����������� �  B    ���    �� �   ���   � ��   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ��� �  b �   ' 
 6 
 6 
 U 
 h 
 q 
 q 
 h 
  
 �  �  �  �  �  �  �  �  �  �   �  �  �  �        !    2 !1 !1 !' !' !G "F "F "< "< "R R V #Q Q ] ] a $\ \  � � '� (
 ) *� 'I +H +H +> +> +g /g /f /f /z /z /y /y /f /f /� /� /� /� /f /� 1� 1� 1� 2� 2� 2� 2� 2� 4� 4� 4� 2� 6� 6� 6� 6� 6f /f - : : : :7 p7 p6 pU �U �U �� �� �� �� �� �� �� �� �� �� �� �� �m �U �6 p$ �$ �# �B �B �B �x �� �� �� �� �� �� �� �� �� �� �� �Z �B �# �G �S � �� �� �! � a\ �  / 	 $  ,4� �,**� �¸ � �,6� �,* �� �**� �YfS�i8�MY**� )��S��� � �,:� �*��!+� ���:* �� �����Y�MYSY<SYSY>S����Y6� 6*,�1M,@� ������ � :� �:*,�nM��s� :� #�� � #:		�� � :
� 
�:��,B� �,**� E�¸ � �,D� �,**� E�¸ � �,F� �,*� �YHS� �� � �,J� �*��"+� ���:* �� �����Y�MYSYLSYSYNS����Y6� 6*,�1M,P� ������ � :� �:*,�nM��s� :� #�� � #:�� � :� �:��,R� �,**� !�¸ � �,T� �,**� !�¸ � �,V� �,*� �Y!S� �� � �,#� �*��#+� ���:*� �����Y�MYSYXS����Y6� 6*,�1M,Z� ������ � :� �:*,�nM��s� :� #�� � #:�� � :� �:��,\� �*��$+� ���:*� �����Y�MYSY^SYSY^S����Y6� 6*,�1M,`� ������ � :� �:*,�nM��s� : � # �� � #:!!�� � :"� "�:#��#*�   � � �� � � �� � �� � �� � �� � ����������������*�*�'*�*/*���������)�#&)��8�#&8�)58�8=8�������������������������� �  j $  ��    � �   ��    ��   ��   ��   ��   ��   ��   �� 	  �� 
  ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��    *� !  �� "  �� #�   � $  �  �  � ? � % � % �  � � � � � X �) �) �( �? �? �> �U �U �T �� �� �r �C C B YYXoon����P �\ �  }    �,e� �,**� %�¸ � �,g� �,**� %�¸ � �,i� �,*� �**� -�¸ �l� �,n� �*��%+� ���:*$� �����Y�MYSYpSYSYpS����Y6� 6*,�1M,r� ������ � :� �:*,�nM��s� :� #�� � #:		�� � :
� 
�:��,t� �,**� ��¸ � �,g� �,**� ��¸ � �,v� �,*(� �**� =�¸ �l� �,x� �,*� �YHS� �� � �,J� �*��&+� ���:*0� �����Y�MYSYLSYSYzS����Y6� 6*,�1M,P� ������ � :� �:*,�nM��s� :� #�� � #:�� � :� �:��,R� �,**� 5�¸ � �,|� �,**� 5�¸ � �,~� �*��'+� ���:*2� �����Y�MYSY�SYSY�S����Y6� 6*,�1M,�� ������ � :� �:*,�nM��s� :� #�� � #:�� � :� �:��,R� �,**� a�¸ � �,�� �,**� a�¸ � �,�� �*��(+� ���:*=� ����� ����� � �*�  � � �� � � �� � � �� � � �� � �� � �� ����
�

��*6�036��*E�03E�6BE�EJE�����&2�,/2��&A�,/A�2>A�AFA� �  $   ���    �� �   ���   � ��   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ��� �   � 0       ; ; ; ; 3 �$ �$ S$$%$%#%:(:(9(W(W(W(W(O(p/p/o/�0�0�0^1^1]1t1t1s1�2�2�2Z3Z3Y3p3p3o3�=�= �  �   �     }�� ǳ �%� ǳ'}� ǳ�� ǳ��� ǳ�� �Y-S�/t� ǳv� �Y-S��� �Y-S���� ǳ�Ѹ ǳӻY�M����   �       }��   [\ �  �  &  �*,� ���Y*� ���:*,ֶ �*E� �***� �����MY**� Q��S��W*,ֶ �*��	+� ���:*G� ����Y6� �*,�� �*��� ���:*H� �����Y�MYSY
SYSYS����Y6� 6*,�1M,� ������ � :	� 	�:
*,�nM�
�s� :� )� q���� � #:�� � :� �:��*,ֶ �����!� :� &���� � #:�"� � :� �:�#�*,ֶ ��Z�`:�:�):�/�3�   -           S�7*,�� �*� M���*,�� �*��+� ���:*N� ����Y6�=*,9� �*��
� ���:*O� �����Y�MYSY;SYSY;S����Y6� �*,�1M,=� �,*Q� �**� U� �Y?S�B� �E� �,G� �,*R� �**� U� �YIS�B� �E� �*,9� ������ � :� �:*,�nM��s� :� )� q� ��� � #:�� � :� �:��*,�� ������!� : � &� � �� � #:!!�"� � :"� "�:#�#�#*,K� �*� )g��*,M� �*� Qg��*,O� �*� I*Y� �***� 9�¸S**� u�¶W����*,ֶ �� �� � :$� $�:%�Z�%*� - � � �� � � �� �'�!$'� �6�!$6�'36�6;6� er�!fr�lor� e��!f��lo��r~������v�������k��k)�)�&)�).)�e�Ye�_be�t�Yt�_bt�eqt�tyt� �!f�l�� �!f�l�� ��!f��l������Y��_������� �  ~ &  ���    �� �   ���   � ��   ���   ���   ���   ���   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���    �*� !  ��� "  ��� #  ��� $  ��� %�   � + $ E 5 E # E # E # D � H � H x H J G� M� M� M� MO O[ O� Q� Q� Q� Q� Q� R� R� R� R� R O� N� V� V� V� V� W� W� W� W� Y� Y� Y� Y� Y� Y� Y  C �\ �   	   �*,ʶ �*� y*�� �YwSY�S� ���*,ʶ �*<� �**<� �***� y����M����MY�S����� .*,ֶ �*� Q**� )�¸ �ض��*,ʶ �� +*,ֶ �*� Q**� )�¸ �ڶ��*,ʶ �*,ܶ �*B� �***� Q�¸ �޶�� *+,�^� �*,`� ���*,�� �*� M���*,�� �*��+� ���:*^� ����Y6�!*,9� �*��� ���:*_� �����Y�MYSYbSYSYbS����Y6� p*,�1M,d� �,*`� �**� �YfS�ik�MY**� )��S��� � �,m� ������ � :� �:	*,�nM�	�s� :
� &� k
�� � #:�� � :� �:��*,�� ������!� :� #�� � #:�"� � :� �:�#�*,K� �*� )g��*,M� �*� Qg��*,O� �*� I*g� �***� 9�¸S**� A�¶W����*,o� �*,ʶ �**� M�¸��� �*,q� �*�v+� ��x:*j� �z|~� ���z������z��?Y��C*k� �*��G��G**� Q�¸ �G�N� ����� � �*,o� �*� ��������� � ��/�/� ,/�/4/�'h�\h�beh�'w�\w�bew�htw�w|w� �   �   ���    �� �   ���   � ��   ��   ��   ��   ��   ���   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   �� �  & I  ;  ;  ;  ; ; < : < V < 3 < o = o = z = o = o = k = k = � ? � ? � ? � ? � ? � ? � ? � > 3 < � B � B � B � B � B � B � ] � ] � ] � ]q _} _� `� `� `� `: _ ^� d� d� d� d� e� e� e� e� g� g� g� g� g� g� g � \ � B� i� i� i  j2 jK kW kW k^ kd kd kG k j� i \ �  �    j,� �,* �� �**� e���*�MY*� �Y�S� �S�ȸ � �,� �*��+� ���:* ¶ ����� ����� � �*,�� �*��+� ���:* ö ����� ����� � �*,�� �*��+� ���:* Ķ ����� ����� � �,� �*��+� ���:* ƶ �����Y�MYSY�S����Y6� 6*,�1M,�� ������ � :	� 	�:
*,�nM�
�s� :� #�� � #:�� � :� �:��,�� �**� ����  ,�� �,**� ��¸ � �,�� �*,"� �*� -* Ѷ �***� �����M����*,�� �*� =* Ҷ �***� �����M����*,� �*� )* Ӷ �***� ����M����*� Sor�rwr�H�������H��������������� �   �   j��    j� �   j��   j ��   j	�   j
�   j�   j�   j�   j�� 	  j�� 
  j��   j��   j��   j�� �   � #  � ! �  �  �  � ` � B � � � � � � � � �8 � �� �� �� �� �� �� �� � �  �  �� �� �* �) �) � � �S �R �R �G �G � 0\ �  �    �*,� �*� y*�� �YwSY�S� ���*,�� �* ׶ �***� )��
�MYgS������~*,�� �* ض �** ض �***� y����M����MY�S����� �*,ʶ �* ٶ �***� )���MYS����� e*,ֶ �*� )* ڶ �***� )���MYSY* ڶ �***� )���MYS���g�S����*,ʶ �*,�� �� �*,ʶ �* ݶ �***� )���MYS����� e*,ֶ �*� )* ޶ �***� )���MYSY* ޶ �***� )���MYS���g�S����*,ʶ �*,�� �*,�� �,� �,*� �Y!S� �� � �,#� �*��+� ���:* � �����Y�MYSY%S����Y6� 6*,�1M,'� ������ � :� �:*,�nM��s� :� #�� � #:		�� � :
� 
�:��,)� �*�� +� ���:* � �����Y�MYSY+SYSY+S����Y6� 6*,�1M,-� ������ � :� �:*,�nM��s� :� #�� � #:�� � :� �:��,/� �,**� �¸ � �*� Gcf�fkf�<�������<���������������36�6;6�Vb�\_b�Vq�\_q�bnq�qvq� �   �   ���    �� �   ���   � ��   ��   ��   ���   ���   ���   ��� 	  ��� 
  ���   ��   ��   ���   ���   ���   ���   ���   ��� �   � ;  �  �  �  � 5 � F � 4 � 4 � 4 � m � l � � � d � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �@ �Q �? �r �� �� �� �� �� �� �� �q �q �f �f �? �0 � d � 4 �� �� �� �, �� �� �� �� �� �� �� � �\ �  �  &  �*,�� ���Y*� ���:*,ֶ �*t� �***� �����MY**� -��SY**� =��S��W*,ֶ �*��+� ���:*v� ����Y6� �*,�� �*��� ���:*w� �����Y�MYSY�SYSYS����Y6� 6*,�1M,�� ������ � :	� 	�:
*,�nM�
�s� :� )� q���� � #:�� � :� �:��*,ֶ �����!� :� &���� � #:�"� � :� �:�#�*,ֶ ��L�R:�:�):���3�               S�7*,�� �*� M���*,�� �*��+� ���:*}� ����Y6�?*,9� �*��� ���:*~� �����Y�MYSY�SYSY�S����Y6� �*,�1M,�� �,* �� �**� U� �Y?S�B� �E� �,G� �,* �� �**� U� �YIS�B� �E� �*,9� ������ � :� �:*,�nM��s� :� )� q� ��� � #:�� � :� �:��*,�� ������!� : � &� � �� � #:!!�"� � :"� "�:#�#�#*,K� �*� ]g��*,O� �*� I* �� �***� 9�¸S**� ��¶W����*,ֶ �� �� � :$� $�:%�Z�%*� - � � �  � �&2�,/2� �&A�,/A�2>A�AFA� p&}�,q}�wz}� p&��,q��wz��}���������������w(�"%(�w7�"%7�(47�7<7�s�"gs�mps���"g��mp��s������ &�,q�w�� &�,q�w�� &��,q��w������"g��m������� �  ~ &  ���    �� �   ���   � ��   ���   ��   ��   ��   ��   ��� 	  ��� 
  ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ��   ��   ��   ��   ��   ���   ���   ���   ���   ���   ���   ���    �*� !  ��� "  ��� #  ��� $  ��� %�   � ( $ t 5 t @ t # t # t # s � w � w � w U v� |� |� |� |[ ~g ~� �� �� �� �� �� �� �� �� �� �$ ~� }� �� �� �� �� �� �� �� �� �� �� �  r � �   "     ���   �       ��   �\ �  �  &  *,�� ���Y*� ���:*,ֶ �*� -g��*� =g��* �� �***� �����MY**� -��SY**� =��S��W*,ֶ �*��+� ���:* �� ����Y6� �*,�� �*��� ���:* �� �����Y�MYSY�SYSYS����Y6� 6*,�1M,�� ������ � :	� 	�:
*,�nM�
�s� :� )� q���� � #:�� � :� �:��*,ֶ �����!� :� &���� � #:�"� � :� �:�#�*,ֶ ��O�U:�:�):���3�     "           S�7*,�� �*� M���*,�� �*��+� ���:* �� ����Y6�@*,9� �*��� ���:* �� �����Y�MYSY�SYSY�S����Y6� �*,�1M,�� �,* �� �**� U� �Y?S�B� �E� �,G� �,* �� �**� U� �YIS�B� �E� �*,9� ������ � :� �:*,�nM��s� :� )� q� ��� � #:�� � :� �:��*,�� ������!� : � &� � �� � #:!!�"� � :"� "�:#�#�#*,K� �*� ]g��*,O� �*� I* �� �***� 9�¸S**� ��¶W����*,ֶ �� �� � :$� $�:%�Z�%*� - ��� �=I�CFI� �=X�CFX�IUX�X]X� �=��C������� �=��C�������������������6B�<?B��6Q�<?Q�BNQ�QVQ�*6��<�������*6��<��������������� =�C����� =�C����� =�C������6�<��� �� �  ~ &  ��    � �   ��    ��   ��   �   �   �   �   �� 	  �� 
  ��   ��   ��   ��   ��   ��   ��   ��   ��   ��    �   !�   "�   #�   $�   ��   ��   ��   ��   ��   ��   ��    *� !  �� "  �� #  �� $  �� %�   � . ! � ! �  � + � + � ' � 9 � J � U � 8 � 8 �  � � � � � � � j � � �� �� �u �� �� �� �� �� �� �� �� �� �� �� �= � �� �� �� �� �� �� �� �� �� �� �� �  �       �    �