����  -n 
SourceFile MC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\sandbox.cfm cfsandbox2ecfm370706050  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
GETEDITION Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   STAPPLICATIONS   	   ON_OFF   	    NEWFILE " " 	  $ WEBAPP & & 	  ( PAGE * * 	  , BROWSESUBMIT . . 	  0 	RETURNURL 2 2 	  4 REQUEST 6 6 	  8 DEFAULTPATH : : 	  < 	TREEFIELD > > 	  @ STCONSTRAINTS B B 	  D CHECKCSRFTOKEN F F 	  H DIALOGSTYLE J J 	  L AERRORMESSAGES N N 	  P 	DIRECTORY R R 	  T RESULT V V 	  X BERRORSEXIST Z Z 	  \ FORM ^ ^ 	  ` CFCATCH b b 	  d 
STCONTEXTS f f 	  h ERROR_TOGGLE_SEC1 j j 	  l GETCSRFTOKEN n n 	  p TOKEN r r 	  t com.macromedia.SourceModTime  /=�@ pageContext #Lcoldfusion/runtime/NeoPageContext; y z	  { getOut ()Ljavax/servlet/jsp/JspWriter; } ~ javax/servlet/jsp/JspContext �
 �  parent Ljavax/servlet/jsp/tagext/Tag; � �	  � com.adobe.coldfusion.* � bindImportPath (Ljava/lang/String;)V � �
  � 


 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � $class$coldfusion$tagext$io$SilentTag Ljava/lang/Class; coldfusion.tagext.io.SilentTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/io/SilentTag � _setCurrentLineNo (I)V � �
  � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z � �
  � newfile � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � 
selectFile � java/lang/StringBuffer � CGI � java/lang/String � SCRIPT_NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � �  �
 � � ?page= � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � EncodeForURL &(Ljava/lang/String;)Ljava/lang/String; � �
  � toString ()Ljava/lang/String; � � java/lang/Object �
 � � 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag � � �	  � !coldfusion/tagext/lang/IncludeTag � 	cfinclude � template � ../filedialog/index.cfm � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setTemplate � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTag �	  coldfusion/tagext/lang/AbortTag
 FINISH FORM.FINISH  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z
    	CSRFTOKEN FORM.CSRFTOKEN _get �
  checkCSRFToken SECTABKEYNAME 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;!"
 # 'class$coldfusion$tagext$net$LocationTag !coldfusion.tagext.net.LocationTag&% �	 ( !coldfusion/tagext/net/LocationTag* 
cflocation, url. 	index.cfm0 setUrl2 �
+3 addtoken5 No7 _boolean (Ljava/lang/String;)Z9:
 �; :(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z �=
 > setAddtoken@ �
+A LOCALEC REQUEST.LOCALEE enG checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)VIJ
 K 
LOCALEFILEM resources/security_O .xmlQ _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)VST
 U falseW 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)VIY
 Z ArrayNew (I)Ljava/util/List;\]
 ^ _Array .(Ljava/lang/Object;)Lcoldfusion/runtime/Array;`a
 �b setArray (Lcoldfusion/runtime/Array;)Vde
 �f dsnh /j REQUEST.RUNTIME.APPLICATIONSl isDefinedCanonicalNamen:
 o _Object (Z)Ljava/lang/Object;qr
 �s (Ljava/lang/Object;)Z9u
 �v RUNTIMEx APPLICATIONSz IsStruct|u
 } _Map #(Ljava/lang/Object;)Ljava/util/Map;�
 �� StructCount (Ljava/util/Map;)I��
 � (I)Ljava/lang/Object;q�
 �� _compare (Ljava/lang/Object;D)D��
 � 	StructNew !()Lcoldfusion/util/FastHashtable;��
 � REQUEST.SECURITY.CONTEXTS� SECURITY� CONTEXTS� REQUEST.SECURITY.CONSTRAINTS� CONSTRAINTS� StructIsEmpty (Ljava/util/Map;)Z��
 � doAfterBody� �
 �� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag� � #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
 �� 	doFinally� 
 �� 
getEdition� Standard� '(Ljava/lang/Object;Ljava/lang/String;)D��
 � 
	� (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag�� �	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V��
�� &coldfusion/runtime/AttributeCollection� id� pagename_resourcesecurity� var� pagename� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
��
� � Resource Security� write� � java/io/Writer�
��
��
��
�� 
� pagename_securityPermissions� Security Permissions� ../header.cfm� ../include/margintop.cfm� ../include/errors.cfm� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� �	 � coldfusion/tagext/io/OutputTag�
� � 
<script>
	function changeTab($1)
	{
		document.editForm.page.value = $1;
		document.editForm.submit();
	}
</script>

� )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag �	  #coldfusion/tagext/html/form/FormTag cfform name
 editForm� �
 action 	setAction �
 method post 	setMethod �

 � 

	
	 ADMINSUBMIT FORM.ADMINSUBMIT! REQUEST.SECURITY# 
		% *coldfusion/runtime/TransientVariableHolder' &(Lcoldfusion/runtime/NeoPageContext;)V )
(* 
			, 	IsBoolean.u
 / _resolve1 �
 2 setSandboxSecurityEnabled4 true6 _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;89
 : 

			< unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;>? coldfusion/runtime/NeoExceptionA
B@ t24 [Ljava/lang/String; AnyFDE	 H findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)IJK
BL bind '(Ljava/lang/String;Ljava/lang/Object;)VNO
(P 
				R 
					T error_toggle_sec1V /
						Unable to toggle security.<br/>
						X MESSAGEZ D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; �\
 ] EncodeForHTML_ �
 ` <br/>
						b DETAILd
�� coldfusion/tagext/QueryLoopg
h�
h�
�� 

				l _List $(Ljava/lang/Object;)Ljava/util/List;no
 �p ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Zrs
 t unbindv 
(w 


	
		<p>
				y 'REQUEST.SECURITY.SANDBOXSECURITYENABLED{ SANDBOXSECURITYENABLED} f
					<input type="checkbox" name="on_off" value="true" checked id="enable" onclick="submit()">
				 ^
					<input type="checkbox" name="on_off" value="true" id="enable" onclick="submit()">
				� 4

			<label for="enable">
			<b class="sentance">� enable_switch_sandbox� "Enable ColdFusion Sandbox Security� 1</b></label><br>
			<font class="sentance">
			� 	welcome_1� �
			Security Settings let users enable and disable access to ColdFusion tags, functions, and enterprise resources like data sources. <br />
			<b>Note:</b> You must restart ColdFusion to enable this setting.
			� 0
			</font>
			<hr size="1" noshade>
		</p>
� 




		� 

		� 4

			<input type="hidden" name="directory" value="� 
ESAPIUTILS� encodeForHTMLAttributeFilePath� ">
		� StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z��
 � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;��
 � 	
	
				� 0
				<input type="hidden" name="webapp" value="� EncodeForHTMLAttribute� �
 � ">
	





		� 	__HTSWT_0 Lcoldfusion/util/FastHashtable;��	 � __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I��
 � _dsnoptions.cfm� _cftagoptions.cfm� _cffunctionsoptions.cfm� _fileoptions.cfm� _ip_portoptions.cfm� _otheroptions.cfm� coldfusion/runtime/SwitchTable�
� 	 DSN� addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;��
�� OTHERS� FILES� IPPORT� CFTAGS� CFFUNCTIONS� 1

<input type="hidden" name="csrftoken" value="� getCSRFToken� ,">
<input type="Hidden" name="page" value="� =">
<input type="Hidden" name="adminSubmit" value="submit">
� ../include/marginbottom.cfm�
�
�
�
� ../footer.cfm� 

� metaData Ljava/lang/Object;��	 � this Lcfsandbox2ecfm370706050; LocalVariableTable Code <clinit> varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; getMetadata ()Ljava/lang/Object; runPage out Ljavax/servlet/jsp/JspWriter; value silent8  Lcoldfusion/tagext/io/SilentTag; mode8 I include0 #Lcoldfusion/tagext/lang/IncludeTag; t7 abort1 !Lcoldfusion/tagext/lang/AbortTag; t9 	location2 #Lcoldfusion/tagext/net/LocationTag; t11 t12 Ljava/lang/Throwable; t13 t14 t15 t16 t17 module9 $Lcoldfusion/tagext/lang/ImportedTag; mode9 t20 t21 t22 t23 t25 module10 mode10 t28 t29 t30 t31 t32 t33 	include11 	include12 	include13 output27  Lcoldfusion/tagext/io/OutputTag; mode27 form26 %Lcoldfusion/tagext/html/form/FormTag; mode26 t41 ,Lcoldfusion/runtime/TransientVariableHolder; t42 #Lcoldfusion/runtime/AbortException; t43 Ljava/lang/Exception; __cfcatchThrowable0 output16 mode16 module15 mode15 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 module17 mode17 t63 t64 t65 t66 t67 t68 module18 mode18 t71 t72 t73 t74 t75 t76 	include19 t78 	include20 t80 	include21 t82 	include22 t84 	include23 t86 	include24 t88 	include25 t90 t91 t92 t93 t94 t95 t96 t97 t98 t99 t100 	include28 LineNumberTable java/lang/Throwableh !coldfusion/runtime/AbortExceptionj java/lang/Exceptionl 1     "                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     � �    � �    �   % �   � �   � �    �   DE   ��   ��       �   #     *� 
�   �       ��   �  �   �     ��� �� �� �� �� ��	'� ��)�� ����� ���� ��� �YGS�I��Y�������������������ʳ���Y� �ٳ�   �       ���      �  Y    '*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u�   �       '��    '��   '��  �� �   "     ��   �       ��   �� �   �  f  �*� |� �L*� �N*�� �*+�� �*+�� �*� �-� �� �:*� �� �� �Y6�G*+� �L**� 1� �� �*� A�� �*� =**� %� ƶ �*� Mȶ �*� 5� �Y*�� �Y�S� Ը ڷ �޶ �*� �**� -� Ƹ ڸ � � � �*� �� �� �:*� ����� �� � ��� :�����*�	� ��:*� �� ��� :	�_��	�**� a�� �*� u� �**� a�� *� u*_� �YS� Զ �*"� �**� I�*� �Y**� u� �SY*7� �Y S� �S�$W*�)� ��+:
*$� �
-/1� ��4
-68�<�?�B
� �
�� :�����**� 9DFH�L*7� �YNS� �YP� �*7� �YDS� Ը ڶ �R� � �V**� ]X�[*� Q*1� �*�_�c�g**� -i�[**� U�[**� )k�[*m�p�tY�w� &W*<� �*7� �YySY{S� Ը~�tY�w� 7W*=� �**7� �YySY{S� Ը��������t|�t�w� #*� *7� �YySY{S� Զ § *� *C� ���� �*��p�tY�w� &W*H� �*7� �Y�SY�S� Ը~�tY�w� 7W*I� �**7� �Y�SY�S� Ը��������t|�t�w� #*� i*7� �Y�SY�S� Զ § *� i*O� ���� �*��p�tY�w� &W*T� �*7� �Y�SY�S� Ը~�tY�w� ,W*U� �**7� �Y�SY�S� Ը�����t�w� #*� E*7� �Y�SY�S� Զ § *� E*[� ���� ������ � :� �:*+��L���� :� #�� � #:��� � :� �:���*+�� �*a� �**� ��*� �$����� �*+�� �*��	-� ���:*b� ��������Y� �Y�SY�SY�SY�S�ٶ�� ���Y6� 6*+� �L+������� � :� �:*+��L���� :� #�� � #:�� � :� �:��*+� �� �*+�� �*��
-� ���:*d� ��������Y� �Y�SY�SY�SY�S�ٶ�� ���Y6� 6*+� �L+������� � :� �:*+��L���� :� #�� � #:�� � : �  �:!��!*+� �*+� �*� �-� �� �:"*f� �"���� �� "� �"�� �*+� �*� �-� �� �:#*g� �#���� �� #� �#�� �*+� �*� �-� �� �:$*h� �$���� �� $� �$�� �*+� �*��-� ���:%*i� �%� �%��Y6&�
�+ ��*�%� ��:'*r� �'	� ��'	*�� �Y�S� Ը �� ��'	� ��'� �'�Y6(�	�*'(+� �L*+� �*s� �**� ��*� �$�����k*+� �**� ]X�[*+�� �*� Q*w� �*�_�c�g*+�� �**� a "��tY�w� W**� 9�$��t�w�*+&� ��(Y*� |�+:)*+-� �**� !� ��tY�w� W*|� �**� !� Ƹ0�tY�w� W**� !� Ƹw� 5*~� �**7� �Y�S�35� �Y7S�;W� ,* �� �**7� �Y�S�35� �YXS�;W*+=� ��P�V:**�:++�C:,,�I�M�    #           )c,�Q*+S� �*� ]7� �*+S� �*��'� ���:-* �� �-� �-��Y6.�I*+U� �*��-� ���:/* �� �/�����/��Y� �Y�SYWSY�SYWS�ٶ�/� �/��Y60� �*/0+� �L+Y��+* �� �**� e� �Y[S�^� ڸa��+c��+* �� �**� e� �YeS�^� ڸa��*+U� �/����� � :1� 1�:2*0+��L�2/��� :3� 2� �� ը�.�s3�� � #:4/4�� � :5� 5�:6/��6*+S� �-�f���-�i� :7� /� ����ڨ7�� � #:8-8�j� � :9� 9�::-�k�:*+m� �*� Y* �� �***� Q� Ƹq**� m� ƶu�t� �*+-� �� +�� � :;� ;�:<)�x�<*+�� �+z��*|�p�tY�w� W*7� �Y�SY~S� Ըw� +��� 
+���+���*��'� ���:=* �� �=�����=��Y� �Y�SY�S�ٶ�=� �=��Y6>� 6*=>+� �L+���=����� � :?� ?�:@*>+��L�@=��� :A� ,�.�i��A�� � #:B=B�� � :C� C�:D=��D+���*��'� ���:E* �� �E�����E��Y� �Y�SY�S�ٶ�E� �E��Y6F� 6*EF+� �L+���E����� � :G� G�:H*F+��L�HE��� :I� ,�`����I�� � #:JEJ�� � :K� K�:LE��L+���*+�� �**� U� ����� *+�� �� E+���+* �� �**7� �Y�S�3�� �Y**� U� �S�;� ڶ�+���*+m� �* �� �***� � Ƹ�**� )� Ƹ ڶ��tY�w� !W* �� �**� **� )� ƶ��~�tY�w� (W* �� �***� **� )� ƶ������t�w� *+S� �� *+�� �+���+* �� �**� )� Ƹ ڸ���+����**� -� Ƹ��   0          &   }   �  +  �  �*+S� �*� �'� �� �:M* Ƕ �M���� �� M� �M�� :N���ɨN�*+-� ���*+S� �*� �'� �� �:O* ʶ �O���� �� O� �O�� :P�7�r��P�*+-� ��_*+S� �*� �'� �� �:Q* Ͷ �Q���� �� Q� �Q�� :R���`R�*+-� ��*+S� �*� �'� �� �:S* ж �S���� �� S� �S�� :T���Ĩ	T�*+-� �� �*+S� �*� �'� �� �:U* Ӷ �U���� �� U� �U�� :V�2�m��V�*+-� �� Z*+S� �*� �'� �� �:W* ֶ �W���� �� W� �W�� :X� ۨ�[X�*+-� �� +ֶ�+* ۶ �**� q��*� �Y*7� �Y S� �S�$� ڶ�+ڶ�+* ܶ �**� -� Ƹ ڸ���+ܶ�*� �'� �� �:Y* ޶ �Y���� �� Y� �Y�� :Z� *� e� �Z�*+� �'�ߚ�V� � :[� [�:\*(+��L�\'��� :]� &� k]�� � #:^'^�� � :_� _�:`'��`*+� �%�f��t%�i� :a� #a�� � #:b%b�j� � :c� c�:d%�k�d*+� �*� �-� �� �:e* � �e���� �� e� �e�� �*+� �� � G �wi �#wi)�wi�twiw|wi < ��i �#�i)��i���i���i < ��i �#�i)��i���i���i���i���iSorirwriH��i���iH��i���i���i���i.JMiMRMi#myisvyi#m�isv�iy��i���i
.
�
�i
�
�
�i
#
�
�i
�
�
�i
#
�
�i
�
�
�i
�
�
�i
�
�
�i	�
�1i
�%1i+.1i	�
�@i
�%@i+.@i1=@i@E@i�	P	Sk�	P	Xm�	P�i	S
��i
�%�i+��i���iNjmimrmiC��i���iC��i���i���i���i8;i;@;idpijmpidijmip|i�i�
��i
�%�i+��i�d�ij6�i<��i���i�;�iA��i���i���i���i���i�
��i
�%�i+��i�d�ij6�i<��i���i�;�iA��i���i���i���i���i�
��i
�%�i+��i�d�ij6�i<��i���i�;�iA��i���i���i���i���i���i���i{
�-i
�%-i+�-i�d-ij6-i<�-i��-i�;-iA�-i��-i��-i��-i�!-i'*-i{
�<i
�%<i+�<i�d<ij6<i<�<i��<i�;<iA�<i��<i��<i��<i�!<i'*<i-9<i<A<i �  � f  ���    ���   ���   � � �   ���   ���   ���   � �   �   �� 	  � 
  ��   �   �	�   �
�   �   �   ��   �   ��   �   ��   ��   �   �D   ��   �   ��   �   ��   ��   �   �    �� !  �� "  �� #  � � $  �!" %  �#� &  �$% '  �&� (  �'( )  �)* *  �+, +  �- ,  �." -  �/� .  �0 /  �1� 0  �2 1  �3� 2  �4� 3  �5 4  �6 5  �7� 6  �8� 7  �9 8  �: 9  �;� :  �< ;  �=� <  �> =  �?� >  �@ ?  �A� @  �B� A  �C B  �D C  �E� D  �F E  �G� F  �H G  �I� H  �J� I  �K J  �L K  �M� L  �N� M  �O� N  �P� O  �Q� P  �R� Q  �S� R  �T� S  �U� T  �V� U  �W� V  �X� W  �Y� X  �Z� Y  �[� Z  �\ [  �]� \  �^� ]  �_ ^  �` _  �a� `  �b� a  �c b  �d c  �e� d  �f� eg  bX   R  R  Q  `  `  \  \  i  i  e  e  x  x  t  t  �  �  �  �  �  �  �  �  �  }  }  �  �  �  Q * * . 1 ) > > : E E I L D Y  Y  U  D r "� "� "r "r ": � $� $� $) � � �   *� �  ," ," ,8 , , , , +E E I 0D D Z 1Y 1Y 1O 1O 1e e i 2d d p p t 3o o { {  4z z � <� <� <� <� <� <� <� <� =� =� =� =� =� =� =� ?� ?� ?$ C$ C C� ;+ H* H* HB HB HB H* H* Hm Im Il I� Il Il I* I� K� K� K� O� O� O* G� T� T� T� T� T� T� T� T U U U U U U� U= W= W9 Wc [c [Y [� S� 6 ! � a� a� a, b8 b� b d d� d� c� a� f� f g� g> h# h� r� r� r� r s s$ s8 s8 s< v7 s7 sU wT wT wJ wJ wh xh xl xo xg xg x� x� x� x� x� x� xg x� |� |� |� |� |� |� |� |� |� |� |� |	 ~� ~� ~	= �	# �	# �� |� z	� �	� �	� �	� �
 �
 �
G �
G �
G �
G �
? �
q �
q �
q �
q �
i �	� �	� �e �e �p �d �d �Y �Y �� yg x� �� �� �� �� �� �� �� �3 �� � �� � s� �� �� �� �� �� �� �� � � � � � � �? �: �: � � �e �` �` �s �_ �_ � �� � �� �� �� �� �� �� �� � �� �� �l �O �G �� �� �� � �� �� �q �T �L �� �� �� �� �	 � �	 �	 � �D �D �D �D �< �y �\ �� r` iq �U �          v    w