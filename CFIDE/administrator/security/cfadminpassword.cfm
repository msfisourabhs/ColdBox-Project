����  -k 
SourceFile UC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\cfadminpassword.cfm  cfcfadminpassword2ecfm1487600354  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PASSWORD_EMPTY_ERROR Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   ERROR_SET_SEED   	   PASSWORD_OLDPASSWORD_ERROR   	    REQUEST " " 	  $ 	LOGACTION & & 	  ( 	VARIABLES * * 	  , CHECKCSRFTOKEN . . 	  0 ADMIN 2 2 	  4 AERRORMESSAGES 6 6 	  8 RESULT : : 	  < BERRORSEXIST > > 	  @ FORM B B 	  D ERR_SEEDLENGTH F F 	  H CFCATCH J J 	  L ISADMINROLESAVAILABLE N N 	  P  ERROR_TOGGLE_SINGLEADMINPASSWORD R R 	  T ERROR_TOGGLE V V 	  X SECURITYCFC Z Z 	  \ PASSWORD_CONFIRM_ERROR ^ ^ 	  ` GETCSRFTOKEN b b 	  d TOKEN f f 	  h com.macromedia.SourceModTime  6��� pageContext #Lcoldfusion/runtime/NeoPageContext; m n	  o getOut ()Ljavax/servlet/jsp/JspWriter; q r javax/servlet/jsp/JspContext t
 u s parent Ljavax/servlet/jsp/tagext/Tag; w x	  y com.adobe.coldfusion.* { bindImportPath (Ljava/lang/String;)V } ~
   
 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/net/CookieTag � _setCurrentLineNo (I)V � �
  � cfcookie � expires � 30 � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; � �
  � 
setExpires (Ljava/lang/Object;)V � �
 � � value � CGI � java/lang/String � SCRIPT_NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setValue � ~
 � � httponly � true � _boolean (Ljava/lang/String;)Z � �
 � � :(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z � �
  � setHttpOnly (Z)V � �
 � � name � cfadmin_lastpage_ � GetAuthUser ()Ljava/lang/String; � �
  � concat &(Ljava/lang/String;)Ljava/lang/String; � �
 � � setName � ~
 � � 	hasEndTag � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 



 � V
<script src="../../scripts/ajax/jquery/jquery.js" type="text/javascript"></script>
 � write � ~ java/io/Writer �
 � � 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag � � �	  � !coldfusion/tagext/lang/IncludeTag � 	cfinclude � template � pstrength.cfm � setTemplate  ~
 � ../auditlog.cfm f

<script type="text/javascript">
$(function() {
$('.password').pstrength();
});
</script>


 SECURITY _resolve	 �
 
 isAdminSecurityEnabled java/lang/Object _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
  (Ljava/lang/Object;)Z �
 � isAdminUserIdRequired 
	 isRootAdminUser 
		 NOTROOTADMIN _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V!"
 # GetContextRoot% �
 & "/CFIDE/administrator/forbidden.cfm( %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag+* �	 - coldfusion/tagext/lang/AbortTag/ (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag21 �	 4 "coldfusion/tagext/lang/ImportedTag6 l10n8 
../cftags/: admin< :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V �>
7? &coldfusion/runtime/AttributeCollectionA idC err_seedLengthE varG ([Ljava/lang/Object;)V I
BJ setAttributecollection (Ljava/util/Map;)VLM  coldfusion/tagext/lang/ModuleTagO
PN 
doStartTag ()IRS
PT 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;VW
 X !Seed must be minimum 8 charactersZ doAfterBody\S
P] _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;_`
 a doEndTagcS #javax/servlet/jsp/tagext/TagSupporte
fd doCatch (Ljava/lang/Throwable;)Vhi
Pj 	doFinallyl 
Pm password_oldpassword_erroro Old password is incorrectq 





s LOCALEu REQUEST.LOCALEw eny checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V{|
 } 
LOCALEFILE java/lang/StringBuffer� resources/security_�  ~
�� append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;��
�� .xml� toString� �
�.



<SCRIPT TYPE="text/javascript">
<!--
// Check whether seed entered is mimimum 8 characters

function validateSeed()
{
	var seedField = document.security.seed;
	var seedval = seedField.value.replace(/^\s+|\s+$/g,"")
	var length = seedval.length;

	if (length > 0 && length <8 )
	{
		� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� �	 � coldfusion/tagext/io/OutputTag�
�T alert('� _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;��
 � ');�
�] coldfusion/tagext/QueryLoop�
�d
�j
�m u
		seedField.focus();
		seedField.select();
		return false;
	}
	else
		return true;
}
// -->
</SCRIPT>


� false� 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V{�
 � ArrayNew (I)Ljava/util/List;��
 � _Array .(Ljava/lang/Object;)Lcoldfusion/runtime/Array;��
 �� setArray (Lcoldfusion/runtime/Array;)V�� coldfusion/runtime/Variable�
�� 

� password_confirm_error� \Your password could not be changed because the new and confirmation passwords did not match.� password_oldpassword_error1� ?Password could not be changed as the old password is incorrect.� password_empty_error� Password can not be blank.� 	component� CFIDE.adminapi.security� CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;��
 � set� �
�� ADMINSUBMIT� FORM.ADMINSUBMIT�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � _Object (Z)Ljava/lang/Object;��
 �� REQUEST.SECURITY� 

		�  � 	CSRFTOKEN� FORM.CSRFTOKEN� _get��
 � checkCSRFToken� SECTABKEYNAME� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � CFADMIN_OLDPASSWORD� Trim� �
 � Len (Ljava/lang/Object;)I��
 � (I)Ljava/lang/Object;� 
 � _compare (Ljava/lang/Object;D)D
  CFADMIN_NEWPASSWORD _List $(Ljava/lang/Object;)Ljava/util/List;	

 � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z
  FORM.CFADMIN_NEWPASSWORD CFADMIN_NEWPASSWORDCONFIRM FORM.CFADMIN_NEWPASSWORDCONFIRM checkAdminPassword Compare '(Ljava/lang/String;Ljava/lang/String;)I
  setAdminPassword BRESETCOOKIE _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;!"
 # VARIABLES.BRESETCOOKIE% 
			
 			' *class$coldfusion$tagext$security$LogoutTag $coldfusion.tagext.security.LogoutTag*) �	 , $coldfusion/tagext/security/LogoutTag.
/T
 �]
 �j
 �m 
			4 CFIDE.adminapi.administrator6 login8 %coldfusion/runtime/ArgumentCollection: adminPassword< rdsPasswordAllowed> )([Ljava/lang/Object;[Ljava/lang/Object;)V @
;A G(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;C
 D 

        F *coldfusion/runtime/TransientVariableHolderH &(Lcoldfusion/runtime/NeoPageContext;)V J
IK 
	        M SEEDO 	FORM.SEEDQ '(Ljava/lang/Object;Ljava/lang/String;)DS
 T setSeedV 	logactionX "has set the ColdFusion server seedZ 	


			\ unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;^_ coldfusion/runtime/NeoExceptiona
b` t21 [Ljava/lang/String; Anyfde	 h findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)Ijk
bl bind '(Ljava/lang/String;Ljava/lang/Object;)Vno
Ip 
				r 
					t error_set_seedv 
						There was an error while updating passwords with new seed.<br/>
						Please check logs for more details.</br>
						x MESSAGEz D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; �|
 } EncodeForHTML �
 � <br/>
						� DETAIL� 

				� unbind� 
I� _factor1�"
 � 	ADMINAUTH� FORM.ADMINAUTH� none� setAdminSecurityEnabled� t22�e	 � error_toggle� G
						Unable to set Administrator authentication switch.<br/>
						� username� SECURITYAPI� setLoginUserIdRequired� t23�e	 �  error_toggle_singleadminpassword� E
						Unable to set Administrator authentication type.<br/>
						� _factor2�"
 � 
                
		 � 
 
		     � 
		         � #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTag�� �	 � coldfusion/tagext/lang/LogTag� cflog� file� audit� setFile� ~
�� application� no� setApplication� �
�� text� User � ] has set Administrator authentication type to: Separate user name and password authentication� setText� ~
�� 

		     � H has set Administrator authentication type to: No authentication needed � 

		      � password� J has set Administrator authentication type to: Use a single password only � 
                      � 
                 � _factor3�"
 � adminpasswordpagename� pagename� !ColdFusion Administrator password� ../header.cfm� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag�� �	 � #coldfusion/tagext/html/form/FormTag� cfform� security�
� � action� 	setAction� ~
�� method� POST� 	setMethod ~
� onsubmit return validateSeed() setOnSubmit ~
�	
�T ../include/buttonbar.cfm ../include/margintop.cfm ../include/errors.cfm 

	
	 \
	<script language="javaScript">
	top.frame_nav.document.location.reload();
	</script>
	 1

<input type="hidden" name="csrftoken" value=" getCSRFToken ">

<h2 class="pageHeader"> pageHeader_adminpassword 
Security &gt; Administrator 4
</h2>
<br>

<label for="cfadmin_password">
<b>  cfadmin_password" (ColdFusion Administration Authentication$ </b><br/>
</label>
	& cfadmin_password_explanation(�
		You should restrict access to the ColdFusion Administrator to trusted
		users. By default the ColdFusion Administrator requires authentication to access
		these pages. However, if you configure your web server to restrict access to
		these pages, you can disable this authentication and
		rely on your web server's security instead. (Consult your web server
		documentation for details on securing pages.)
	* 
<br/>
<br/>
, cfadmin_username_explanation. 7
		Select the type of Administrator authentication:
	0 �<br/>
<table width="100%">
<tr width="100%"><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">
<input name="AdminAuth" type="RADIO" value="password"
2 
	checked
4 0
>
<b>
<label for="cfadmin_singlepassword">
6 cfadmin_singlepassword8 $Use a single password only (default): _factor4<"
 = </label>
</b>
</td></tr>

? IsAdminRolesAvailableA z
	<tr width="100%"><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">
	<input name="AdminAuth" type="RADIO" value="username"
	C 
		checked
	E /
	>
	<b>
	<label for="cfadmin_usernames">
	G cfadmin_usernamesI FSeparate user name and password authentication (allows multiple users)K </label>
	</b>
	</td></tr>
M �

<tr width="100%"><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">
<input name="AdminAuth" type="RADIO" value="none" id="cfadmin_password"
	O 2
>
<b>
<label for="cfadmin_securitydisabled">
Q cfadmin_securitydisabledS *No authentication needed (not recommended)U �</label>
</b>
</td></tr>

</table>

<br/> <br/>

<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#W 	GRAYLIGHTY &" class="cellBlueTopAndBottom">
		<b>[ errorheader] Root Administrator Password_ &</b>
	</td>
</tr>
</table>

<p>
a cfadmin_changePasswordc �
To change the ColdFusion Administrator password for the root administrative user,
enter old password, new password and then confirm
e _factor5g"
 h i
</p>
<table border="0" cellpadding="5" cellspacing="0">
<tr><td>
<label for="cfadmin_oldpassword">
j cfadmin_oldpasswordl Old Passwordn �</label></td><td>
<input name="cfadmin_oldpassword" id="cfadmin_oldpassword" type="password" size=15 maxlength="50" onFocus="select()" value="" autocomplete="off"> &nbsp;
</td></tr>
<tr><td>
<label for="cfadmin_Newpassword">
p cfadmin_Newpasswordr New Passwordt �</label></td><td>
<input name="cfadmin_Newpassword" id="cfadmin_Newpassword" type="password" size=15 class="password" maxlength="50" onFocus="select()" value="" autocomplete="off"> &nbsp;
</td></tr>
<tr><td>
<label for="cfadmin_NewpasswordConfirm">
v cfadmin_NewpasswordConfirmx Confirm Passwordz �</label></td><td>
<input name="cfadmin_NewpasswordConfirm" id="cfadmin_NewpasswordConfirm" type="PASSWORD" size=15 maxlength="50" onFocus="select()" value="" autocomplete="off"> &nbsp;
| cfadmin_passwordlength~ (50-character limit.)� 
</td></tr>
</table>
<br/><br/>
<p>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#� 
seedHeader� Password Seed� _factor6�"
 � </b>
	</td>
</tr>
</table>
� _factor7�"
 � 
<p>
� cfadmin_changeSeed� @
To specify a new seed value to encrypt data source passwords
� !
</p>

<label for="newSeed">
� newSeed� New Seed� r</label>
<input name="seed" id="seed" type="text" size="50" maxlength="500" onFocus="select()" value=""> &nbsp;
� cfadmin_seedlength� .(8-character minimum and 500-character limit.)� 

<br/><br/>






� ../include/marginbottom.cfm� ../footer.cfm� _factor8�"
 �
�]
�d
�j
�m _factor9�"
 � metaData Ljava/lang/Object;��	 � this "Lcfcfadminpassword2ecfm1487600354; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; LineNumberTable __factorParent module44 $Lcoldfusion/tagext/lang/ImportedTag; mode44 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module45 mode45 t14 t15 t16 t17 t18 t19 module46 mode46 t24 t25 t26 t27 	include47 #Lcoldfusion/tagext/lang/IncludeTag; 	include48 	include49 java/lang/Throwable� cookie0 !Lcoldfusion/tagext/net/CookieTag; include1 include2 include3 abort4 !Lcoldfusion/tagext/lang/AbortTag; module5 mode5 t12 t13 module6 mode6 t20 output8  Lcoldfusion/tagext/io/OutputTag; mode8 t28 t29 t30 module10 mode10 t33 t34 t35 t36 t37 t38 module11 mode11 t41 t42 t43 t44 t45 t46 module12 mode12 t49 t50 t51 t52 t53 t54 module23 mode23 t57 t58 t59 t60 t61 t62 	include24 form50 %Lcoldfusion/tagext/html/form/FormTag; mode50 t66 t67 t68 t69 t70 t71 t72 t73 module38 mode38 module39 mode39 module40 mode40 module41 mode41 t31 t32 module42 mode42 t39 t40 	include25 	include26 	include27 output28 mode28 output43 mode43 <clinit> logout13 &Lcoldfusion/tagext/security/LogoutTag; mode13 ,Lcoldfusion/runtime/TransientVariableHolder; #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 output15 mode15 module14 mode14 !coldfusion/runtime/AbortExceptionD java/lang/ExceptionF module29 mode29 module30 mode30 module31 mode31 module32 mode32 module33 mode33 module34 mode34 module35 mode35 module36 mode36 module37 mode37 t4 t5 __cfcatchThrowable1 output17 mode17 module16 mode16 __cfcatchThrowable2 output19 mode19 module18 mode18 getMetadata log20 Lcoldfusion/tagext/lang/LogTag; log21 log22 1     !                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     � �    � �   * �   1 �   � �   ) �   de   �e   �e   � �   � �   ��       �   #     *� 
�   �       ��      �  5    *+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i�   �       ��    ��   ��  �� �   i     !*� p� vL*� zN*|� �*-+��� ��   �   *    !��     !��    ! ��    ! w x �        �" �  G    ,�� �*�5,+� ��7:*b� �9;=�@�BY�YDSY�S�K�Q� ��UY6� 6*,�YM,�� ��^���� � :� �:*,�bM��g� :� #�� � #:		�k� � :
� 
�:�n�,�� �*�5-+� ��7:*h� �9;=�@�BY�YDSY�S�K�Q� ��UY6� 6*,�YM,�� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,�� �*�5.+� ��7:*j� �9;=�@�BY�YDSY�S�K�Q� ��UY6� 6*,�YM,�� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,�� �*� �/+� �� �:*s� ����� ��� �� � �*,�� �*� �0+� �� �:*t� ���� ��� �� � �*,�� �*� �1+� �� �:*u� ����� ��� �� � �*�  Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��� �  �� ,�&),�� ;�&);�,8;�;@;� �  8   ��    � x   ��    ��   ��   ��   ��   ��   ��   �� 	  �� 
  ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   ��   �� �   2  >b bh �h�j�josSs�t�t�u�u �" �  � 
 J  	�*,�� �*� �+� �� �:*� ����� �� ���*�� �Y�S� �� �� �� ���Ƹ �� Ͷ ����*� �*� ٶ �� �� �� �� � �*,� �,�� �*� �+� �� �:*� ����� ��� �� � �*,�� �*� �+� �� �:*	� ���� ��� �� � �,� �*� �**#� �YS���Y�� %W*� �**#� �YS����� �*,� �*� �**#� �YS������ �*,� �*#� �Y Sƶ$*,� �*� �+� �� �:*� ���*� �*�')� �� ��� �� � �*,� �*�.+� ��0:*� �� �� � �*,� �*,�� �*,�� �*�5+� ��7:	*� �	9;=�@	�BY�YDSYFSYHSYFS�K�Q	� �	�UY6
� 6*	
,�YM,[� �	�^���� � :� �:*
,�bM�	�g� :� #�� � #:	�k� � :� �:	�n�*,�� �*�5+� ��7:*� �9;=�@�BY�YDSYpSYHSYpS�K�Q� ��UY6� 6*,�YM,r� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�*,t� �**� %vxz�~*,�� �*#� �Y�S��Y���*#� �YvS� �� ���������$,�� �*��+� ���:*6� �� ���Y6� (,�� �,**� I��� �� �,�� ��������� :� #�� � #:��� � :� �:���,�� �**� A���*,�� �*� 9*C� �*������*,�� �*�5
+� ��7:*E� �9;=�@�BY�YDSY�SYHSY�S�K�Q� ��UY6 � 6* ,�YM,¶ ��^���� � :!� !�:"* ,�bM�"�g� :#� ##�� � #:$$�k� � :%� %�:&�n�&*,�� �*�5+� ��7:'*F� �'9;=�@'�BY�YDSY�SYHSYpS�K�Q'� �'�UY6(� 6*'(,�YM,ƶ �'�^���� � :)� )�:**(,�bM�*'�g� :+� #+�� � #:,',�k� � :-� -�:.'�n�.*,�� �*�5+� ��7:/*G� �/9;=�@/�BY�YDSY�SYHSY�S�K�Q/� �/�UY60� 6*/0,�YM,ʶ �/�^���� � :1� 1�:2*0,�bM�2/�g� :3� #3�� � #:4/4�k� � :5� 5�:6/�n�6*,�� �*� ]*I� �*�ζҶ�*,�� �**� E�ٶݸ�Y�� W**� %�ݸ�� /*+,��� �*+,��� �*+,��� �*,�� �*,� �*�5+� ��7:7* � �79;=�@7�BY�YDSY�SYHSY�S�K�Q7� �7�UY68� 6*78,�YM,� �7�^���� � :9� 9�::*8,�bM�:7�g� :;� #;�� � #:<7<�k� � :=� =�:>7�n�>*,�� �*� �+� �� �:?* � �?���� ��?� �?� � �*,�� �*��2+� ���:@* � �@���� ���@��*�� �Y�S� �� �� ���@�� � ��@�� ��
@� �@�Y6A� e*@A,�YM*@,��� :B� >� vB�*@,��� :C� '� _C�*,�� �@����Ũ � :D� D�:E*A,�bM�E@��� :F� #F�� � #:G@G��� � :H� H�:I@���I*,�� �*� D��������~�������~���������������Xtw�w|w�M�������M���������������>z������>z��������������9UX�X]X�.x��~���.x��~�����������$'�','��GS�MPS��Gb�MPb�S_b�bgb����������"�"��1�1�".1�161�)EH�HMH�ht�nqt�h��nq��t�������	V	q	��	w	�	��	�	�	��	�	�	��	K	q	��	w	�	��	�	�	��	�	�	��	K	q	��	w	�	��	�	�	��	�	�	��	�	�	��	�	�	�� �  � J  	���    	�� x   	���   	� ��   	���   	���   	���   	���   	���   	��� 	  	��� 
  	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	�d�   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���   	���    	��� !  	��� "  	��� #  	��� $  	��� %  	��� &  	��� '  	� � (  	�� )  	�� *  	�� +  	�� ,  	�� -  	�� .  	�� /  	�� 0  	�	� 1  	�
� 2  	�� 3  	�� 4  	�� 5  	�� 6  	�� 7  	�� 8  	�� 9  	�� :  	�� ;  	�� <  	�� =  	�� >  	�� ?  	� @  	�� A  	�� B  	�� C  	�� D  	�� E  	�� F  	� � G  	�!� H  	�"� I�  � c    /  /  N  `  g  g  `    �  �  �  � 	 � 	  6 6  e e e � � � � � � � � � � e  b n - 1 = � � #� %� %� % %� %� %� %� $Q 6Q 6P 6# 6� B� C� C� C� C� C E E� E� F� F� F� G� Gz GU IX IT IT IJ IJ Ii Ji Jm Jp Jh Jh J� J� J� J� J� J� Jh Jh J � �� �� �� �� �	 �	 �	) �	; �� � �" �  <  ,  �,k� �*�5&+� ��7:*H� �9;=�@�BY�YDSYmS�K�Q� ��UY6� 6*,�YM,o� ��^���� � :� �:*,�bM��g� :� #�� � #:		�k� � :
� 
�:�n�,q� �*�5'+� ��7:*M� �9;=�@�BY�YDSYsS�K�Q� ��UY6� 6*,�YM,u� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,w� �*�5(+� ��7:*R� �9;=�@�BY�YDSYyS�K�Q� ��UY6� 6*,�YM,{� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,}� �*�5)+� ��7:*T� �9;=�@�BY�YDSYS�K�Q� ��UY6� 6*,�YM,�� ��^���� � :� �:*,�bM��g� : � # �� � #:!!�k� � :"� "�:#�n�#,�� �,*#� �YZS� �� �� �,\� �*�5*+� ��7:$*\� �$9;=�@$�BY�YDSY�S�K�Q$� �$�UY6%� 6*$%,�YM,�� �$�^���� � :&� &�:'*%,�bM�'$�g� :(� #(�� � #:)$)�k� � :*� *�:+$�n�+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��9<�<A<�\h�beh�\w�bew�htw�w|w��� �  �� ,�&),�� ;�&);�,8;�;@;����������������������������������������|�������|��������������� �  � ,  ���    �� x   ���   � ��   �#�   �$�   ���   ���   ���   ��� 	  ��� 
  ���   �%�   �&�   ���   ���   ���   ���   ���   ���   �'�   �(�   ���   ���   ���   ���   ���   ���   �)�   �*�   ���   �+�   �,�    ��� !  ��� "  ��� #  �-� $  �.� %  ��� &  �/� '  �0� (  �� )  �� *  �� +�   6  >H HM �M�R�R�TST[[[l\5\ �" �      !*,�� �*� �+� �� �:* � ���� ��� �� � �*,�� �*� �+� �� �:* � ���� ��� �� � �*,�� �*� �+� �� �:* � ���� ��� �� � �*,�� �**� E�ٶݸ�Y�� W**� %�ݸ�� �*,� �*��+� ���:* � �� ���Y6� ,� ��������� :	� #	�� � #:

��� � :� �:���*,�� �*,�� �*��++� ���:* � �� ���Y6� N*,�>� :� l�*,�i� :� X�*,��� :� D�,�� ��������� :� #�� � #:��� � :� �:���*� 9E�?BE�9T�?BT�EQT�TYT��������������������������������������� �   �   !��    !� x   !��   ! ��   !1�   !2�   !3�   !4�   !5�   !�� 	  !�� 
  !��   !��   !6�   !7�   !��   !��   !��   !��   !��   !��   !d� �   Z  # �  � ` � D � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �u � 8  �   �     |�� �� ��� �� �,� ��.3� ��5�� ���+� ��-� �YgS�i� �YgS��� �YgS���� ���� ���BY��K���   �       |��   !" �  z    �*� i��**� E��ݙ *� i*C� �Y�S� ���*T� �**� 1���*�Y**� i��SY*#� �Y�S� �S��W*Y� �*Y� �*C� �Y�S� �� ��������t|��Y�� 9W*Y� �*Y� �*C� �YS� �� ��������~���� **� Aƶ�*\� �***� 9���**� ���W**� E�ݸ�Y�� W**� E�ݸ�Y�� -W*_� �*C� �YS� ������t|���!*b� �***� ]���Y*C� �Y�S� �S���� **� Aƶ�*e� �***� 9���**� !���W*j� �*C� �YS� �� �*C� �YS� �� �����~��� **� Aƶ�*n� �***� 9���**� a���W**� A����� N*t� �***� ]���Y*t� �*C� �YS� �� ���S�W*+� �Y Sƶ$*�   �   *   ���    �� x   ���   � �� �  � k  O  O   O  P  P  P  P 
 P  R  R  R 
 P 8 T J T U T 8 T 8 T v Y v Y v Y v Y � Y v Y v Y � Y � Y � Y � Y � Y � Y � Y v Y � [ � [ � [ � \ � \ � \ � \ � \ v Y
 ^
 ^ ^ ^	 ^	 ^# ^# ^' ^* ^" ^" ^	 ^	 ^A _A _W _A _A _	 _q b� bp bp bp b� d� d� d� e� e� e� e� ep b� j� j� j� j� j� j� j� j� j
 m
 m m n n! n n n� j- q- q- qD t[ t[ t[ tC tC t� u� uv u- q	 ^ �" �  �    D*,� �*+,�$� �*,� �**� A������Y�� W**� - &�ݸ�Y�� W*+� �Y S� ��� �*,(� �*�-+� ��/:*}� �� ��0Y6� �1����g� :� #�� � #:�2� � :� �:	�3�	*,5� �*� 5*~� �**~� �*�7��9�;Y� �Y=SY?S�Y*C� �YS� �SY�S�B�E��*,� �*,G� ��IY*� p�L:
*,N� �**� EPR�ݸ�Y�� .W* �� �*C� �YPS� �� ����U�~��� Z* �� �**#� �YS�W�Y*C� �YPS� �S�W* �� �**� )��Y*�Y[S��W*,]� ��;�A:�:�c:�i�m�              
K�q*,s� �*� Aƶ�*,s� �*��+� ���:* �� �� ���Y6�@*,u� �*�5� ��7:* �� �9;=�@�BY�YDSYwSYHSYwS�K�Q� ��UY6� �*,�YM,y� �,* �� �**� M� �Y{S�~� ���� �,�� �,* �� �**� M� �Y�S�~� ���� �*,u� ��^���� � :� �:*,�bM��g� :� )� q� ��� � #:�k� � :� �:�n�*,s� ��������� :� &� x�� � #:��� � :� �:���*,�� �*� =* �� �***� 9���**� ������*,5� �� �� � :� �:
���*�  � � �� � � �� � � �� � � �� � � �� � � ���MP�PUP��v��|���v��|����������jv��|�������jv��|���������������NEN	GN1�v1�|�1��.1�161� �  .   D��    D� x   D��   D ��   D9:   D;�   D��   D��   D��   D�� 	  D�< 
  D�=   D�>   D?�   D@�   DA�   DB�   DC�   D��   D��   D��   Dd�   D��   D��   D��   D��   D��   D��   D��   D�� �  . K  L  {  {  {  { 5 { 5 { 9 { < { 4 { 4 {  {  { M { M {  { k } � ~ � ~ � ~ ~$ ~ � ~ � ~ � ~ � ~  {W �W �[ �^ �V �V �v �v �v �� �v �v �V �� �� �� �� �� �� �� �V �V �A �A �= �= �� �� �� �� �� �� �� � � � � � �} �N � � � �  �  �� �� �A � <" �  �  ,  I,� �,* �� �**� e��*�Y*#� �Y�S� �S��� �� �,� �*�5+� ��7:* �� �9;=�@�BY�YDSYS�K�Q� ��UY6� 6*,�YM,� ��^���� � :� �:*,�bM��g� :� #�� � #:		�k� � :
� 
�:�n�,!� �*�5+� ��7:* �� �9;=�@�BY�YDSY#S�K�Q� ��UY6� 6*,�YM,%� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,'� �*�5+� ��7:* �� �9;=�@�BY�YDSY)S�K�Q� ��UY6� 6*,�YM,+� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,-� �*�5 +� ��7:*	� �9;=�@�BY�YDSY/S�K�Q� ��UY6� 6*,�YM,1� ��^���� � :� �:*,�bM��g� : � # �� � #:!!�k� � :"� "�:#�n�#,3� �*� �**#� �YS������ 
,5� �,7� �*�5!+� ��7:$*� �$9;=�@$�BY�YDSY9S�K�Q$� �$�UY6%� 6*$%,�YM,;� �$�^���� � :&� &�:'*%,�bM�'$�g� :(� #(�� � #:)$)�k� � :*� *�:+$�n�+*� ( � � �� � � �� � � �� � � �� � � �� � � �� � � �� � � ��Xtw�w|w�M�������M���������������8;�;@;�[g�adg�[v�adv�gsv�v{v���������+�%(+��:�%(:�+7:�:?:������ ���'�!$'��6�!$6�'36�6;6� �  � ,  I��    I� x   I��   I ��   IH�   II�   I��   I��   I��   I�� 	  I�� 
  I��   IJ�   IK�   I��   I��   I��   I��   I��   I��   IL�   IM�   I��   I��   I��   I��   I��   I��   IN�   IO�   I��   I+�   I,�    I�� !  I�� "  I�� #  IP� $  IQ� %  I�� &  I/� '  I0� (  I� )  I� *  I� +�   N   � ! �  �  �  � y � B �= � � �� ��	�	YYYY�� g" �  �  $  �,@� �*� �**� Q��B*�����,D� �*� �**#� �YS����� 
,F� �,H� �*�5"+� ��7:*"� �9;=�@�BY�YDSYJS�K�Q� ��UY6� 6*,�YM,L� ��^���� � :� �:*,�bM��g� :� #�� � #:		�k� � :
� 
�:�n�,N� �,P� �*)� �**#� �YS������ 
,F� �,R� �*�5#+� ��7:*/� �9;=�@�BY�YDSYTS�K�Q� ��UY6� 6*,�YM,V� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,X� �,*#� �YZS� �� �� �,\� �*�5$+� ��7:*:� �9;=�@�BY�YDSY^S�K�Q� ��UY6� 6*,�YM,`� ��^���� � :� �:*,�bM��g� :� #�� � #:�k� � :� �:�n�,b� �*�5%+� ��7:*@� �9;=�@�BY�YDSYdS�K�Q� ��UY6� 6*,�YM,f� ��^���� � :� �:*,�bM��g� : � # �� � #:!!�k� � :"� "�:#�n�#*�   � � �� � � �� � �� � �� � �� � ��������������������������������������������������������_{~�~�~�T�������T��������������� �  j $  ���    �� x   ���   � ��   �R�   �S�   ���   ���   ���   ��� 	  ��� 
  ���   �T�   �U�   ���   ���   ���   ���   ���   ���   �V�   �W�   ���   ���   ���   ���   ���   ���   �X�   �Y�   ���   �+�   �,�    ��� !  ��� "  ��� #�   R    5 5 �" d" 6)6)6)6)�/g/,9,9+9�:I:D@@ �" �  
�  ,  �*,� ��IY*� p�L:*,5� �**� E���ݸ�Y�� #W*C� �Y�S� ���U�~���� 6* �� �**#� �YS���Y�S�W� +* �� �**#� �YS���Y�S�W*,]� ��:�@:�:�c:���m�             K�q*,s� �*� Aƶ�*,s� �*��+� ���:* �� �� ���Y6	�@*,u� �*�5� ��7:
* �� �
9;=�@
�BY�YDSY�SYHSY�S�K�Q
� �
�UY6� �*
,�YM,�� �,* �� �**� M� �Y{S�~� ���� �,�� �,* �� �**� M� �Y�S�~� ���� �*,u� �
�^���� � :� �:*,�bM�
�g� :� )� q� ��� � #:
�k� � :� �:
�n�*,s� ��������� :� &� x�� � #:��� � :� �:���*,�� �*� =* �� �***� 9���**� Y������*,5� �� �� � :� �:���*,� ��IY*� p�L:*,5� �**� E���ݸ�Y�� #W*C� �Y�S� ���U�~���� 5* �� �**#� �Y�S���Y�S�W� ,* �� �**#� �Y�S���Y�S�W*,]� ��<�B:�:�c:���m�               K�q*,s� �*� Aƶ�*,s� �*��+� ���:* ¶ �� ���Y6�@*,u� �*�5� ��7:* ö �9;=�@�BY�YDSY�SYHSY�S�K�Q� ��UY6� �*,�YM,�� �,* Ŷ �**� M� �Y{S�~� ���� �,�� �,* ƶ �**� M� �Y�S�~� ���� �*,u� ��^���� � : �  �:!*,�bM�!�g� :"� )� q� �"�� � #:##�k� � :$� $�:%�n�%*,s� ��������� :&� &� x&�� � #:''��� � :(� (�:)���)*,�� �*� =* ʶ �***� 9���**� U������*,5� �� �� � :*� *�:+���+*� .����.:�47:��.I�47I�:FI�INI�".��4y�����".��4y�������������  � �E  � �G  ��� �.��4y�����������	��*6�036��*E�03E�6BE�EJE�*��0u��{~��*��0u��{~������������E��G����*��0u��{������� �  � ,  ���    �� x   ���   � ��   �Z<   �[=   ��>   �\�   �]�   �^� 	  �_� 
  �`�   ���   ���   ���   ���   ���   ���   ���   ���   ���   �d�   ���   ���   ��<   ��=   ��>   �a�   �b�   �c�   �d�   �e�   �,�    ��� !  ��� "  ��� #  ��� $  ��� %  ��� &  �/� '  �0� (  �� )  �� *  �� +�  j Z  �  � " � % �  �  � 6 � F � 6 � 6 �  � | � b � b � � � � � � �  �  � � � � � � � � �m �y �� �� �� �� �� �� �� �� �� �� �5 � �� �� �� �� �� �� �� �  � � � � � � �0 �@ �0 �0 � �v �\ �\ �� �� �� � � �� �� �� �� �i �u �� �� �� �� �� �� �� �� �� �� �1 � �� �� �� �� �� �� �� � � f� �   "     ���   �       ��   �" �  �    �*,�� �**� A�����z*,�� �**� E���ݸ�Y�� #W*C� �Y�S� ���U�~���� �*,�� �*��+� ���:* ж ����� �����Ƹ �� Ͷ��˻�Yͷ�* ж �*� ٶ�϶���� ���� �� � �*,Զ ���**� E���ݸ�Y�� #W*C� �Y�S� ���U�~���� �*,�� �*��+� ���:* Ӷ ����� �����Ƹ �� Ͷ��˻�Yͷ�* Զ �*� ٶ�ֶ���� ���� �� � �*,ض �� �**� E���ݸ�Y�� #W*C� �Y�S� �ڸU�~���� �*,�� �*��+� ���:* ׶ ����� �����Ƹ �� Ͷ��˻�Yͷ�* ض �*� ٶ�ܶ���� ���� �� � �*,޶ �*,� �*�   �   H   ���    �� x   ���   � ��   �gh   �ih   �jh �   @  �  �  � ! � ! � % � ( �   �   � 9 � I � 9 � 9 �   � � � � � � � � � � � � � � � f � � � � � � � � � � � � � � � � � � �R �d �} �� �� �� �y �4 �� �� �� �� �� �� �� �� �� �� �� �  �2 �K �X �X �_ �G � �� � � �   �  �       j    k