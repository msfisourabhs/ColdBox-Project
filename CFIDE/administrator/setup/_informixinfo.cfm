����  -S 
SourceFile PC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\setup\_informixinfo.cfm cf_informixinfo2ecfm113236275  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   ITEM Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   com.macromedia.SourceModTime  5D. pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter; ! " javax/servlet/jsp/JspContext $
 % # parent Ljavax/servlet/jsp/tagext/Tag; ' (	  ) com.adobe.coldfusion.* + bindImportPath (Ljava/lang/String;)V - .
  / 
 1 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 3 4
  5 USERNAME 7 ITEM.USERNAME 9   ; checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V = >
  ? PASSWORD A ITEM.PASSWORD C 

 E $class$coldfusion$tagext$io$OutputTag Ljava/lang/Class; coldfusion.tagext.io.OutputTag I forName %(Ljava/lang/String;)Ljava/lang/Class; K L java/lang/Class N
 O M G H	  Q _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; S T
  U coldfusion/tagext/io/OutputTag W _setCurrentLineNo (I)V Y Z
  [ 	hasEndTag (Z)V ] ^ coldfusion/tagext/GenericTag `
 a _ 
doStartTag ()I c d
 X e 
	<p class="sentance">
		 g write i . java/io/Writer k
 l j (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag o n H	  q "coldfusion/tagext/lang/ImportedTag s l10n u 	../cftags w admin y setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V { |
 t } &coldfusion/runtime/AttributeCollection  java/lang/Object � id � mig_informixNeedMoreInfo � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � �
 � e 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � C
			ColdFusion only supports Informix version 9 data sources. 
		 � doAfterBody � d
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � d #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � 	
	</p>
 � windows � SERVER � java/lang/String � OS � NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � 
FindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
  � _boolean (J)Z � �
 � � mig_informixNeedMoreInfoWin � 
			For other versions of Informix, ColdFusion will register 
			the data source using the ODBC socket driver on Windows.
		 � 

	</p>	
 � mig_informixNeedMoreInfoUnix � �
			ColdFusion will not migrate an Informix 7 data source. 
			In order to use an Informix 7 data source, 
			you must obtain a third-party JDBC driver that supports Informix 7. 
		 � mig_informixdbinstructions � 
			Please indicate the version of this Informix data source. 
			Click Don't Migrate to skip migrating this data source.
		 � �
	</p>

<input type="hidden" name="class" value="macromedia.jdbc.MacromediaDriver">
<input type="hidden" name="driver" value="Informix">
<input type="hidden" name="epassword" value="" autocomplete="off">
<input type="hidden" name="dsn" value=" � D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  ��">
<input type="hidden" name="originaldsn" value="">
<table border="0" cellpadding="0" cellspacing="0" bgcolor="999999" width="100%">
<tr valign="top" class="color-border">
	<td>
		<table border="0" cellspacing="1" cellpadding="2" width="100%">
		<tr bgcolor="ddddd5" class="color-title">
			<th>
				<font class="label">&nbsp;&nbsp;<b class="form-title">
					Informix :&nbsp;  �k </b></font>
			</th>
		</tr>
		<tr bgcolor="ddddd5" class="color-header">
			<td>
				<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100"  height="5"></td>
					<td></td>
					<td></td>
					<td width="50" ></td>
					<td></td>
				</tr>
				<tr>					
					<td valign="top">
						<p class="label" style="font-weight:  � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
  � Len (Ljava/lang/Object;)I � �
  � "normal" � "bold" � IIf 9(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
  � /"><nobr>&nbsp; <label for="dbversion">
							 � 	dbversion � Informix Version ��
						</label></nobr></p>
					</td>
					<td>&nbsp;&nbsp;</td>
					<td>
						<p class="label">
						<input type="Radio" name="dbversion" value="9" class="label" id="dbversion"> Informix 9<br>
						<input type="Radio" name="dbversion" value="73" class="label" id="dbversion"> Informix 73 / Other<br>
						</p>
					</td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				</table>
			</td>
		</tr>

	</table>
		</td>
	</tr>
	</table>
 � REQUEST � PREVBTN � true � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � NEXTBTN DONTMIGRATEBTN
 X � coldfusion/tagext/QueryLoop
 �
 �
 X � metaData Ljava/lang/Object;	  this Lcf_informixinfo2ecfm113236275; LocalVariableTable Code <clinit> varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; getMetadata ()Ljava/lang/Object; runPage out Ljavax/servlet/jsp/JspWriter; value output7  Lcoldfusion/tagext/io/OutputTag; mode7 I module2 $Lcoldfusion/tagext/lang/ImportedTag; mode2 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 module3 mode3 t16 t17 t18 t19 t20 t21 module4 mode4 t24 t25 t26 t27 t28 t29 module5 mode5 t32 t33 t34 t35 t36 t37 module6 mode6 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 LineNumberTable java/lang/ThrowableQ 1            G H    n H             #     *� 
�                  =     J� P� Rp� P� r� �Y� �� ���                   E     *+,� **+,� � �                          "     ��                
:  2  v*�  � &L*� *N*,� 0*+2� 6**� 8:<� @*+2� 6**� BD<� @*+F� 6*� R-� V� X:*� \� b� fY6��+h� m*� r� V� t:*� \vxz� ~� �Y� �Y�SY�S� �� �� b� �Y6� 5*+� �L+�� m� ����� � :� �:	*+� �L�	� �� :
� &�o
�� � #:� �� � :� �:� ��+�� m*� \�*�� �Y�SY�S� �� �� Å� Ǚ �+h� m*� r� V� t:*� \vxz� ~� �Y� �Y�SY�S� �� �� b� �Y6� 5*+� �L+˶ m� ����� � :� �:*+� �L�� �� :� &���� � #:� �� � :� �:� ��+Ͷ m� �+h� m*� r� V� t:*� \vxz� ~� �Y� �Y�SY�S� �� �� b� �Y6� 5*+� �L+Ѷ m� ����� � :� �:*+� �L�� �� :� &���� � #:� �� � :� �:� ��+Ͷ m+h� m*� r� V� t:*� \vxz� ~� �Y� �Y�SY�S� �� �� b� �Y6� 5*+� �L+ն m� ����� � : �  �:!*+� �L�!� �� :"� &��"�� � #:##� �� � :$� $�:%� ��%+׶ m+**� � �Y�S� ڸ �� m+ܶ m+**� � �Y�S� ڸ �� m+޶ m+*=� \**=� \*=� \**� � �Y8S� ڸ �� � 慸 ��� � �� m+� m*� r� V� t:&*>� \&vxz� ~&� �Y� �Y�SY�S� �� �&� b&� �Y6'� 5*&'+� �L+�� m&� ����� � :(� (�:)*'+� �L�)&� �� :*� &� �*�� � #:+&+� �� � :,� ,�:-&� ��-+�� m*�� �Y�S�� *+2� 6*�� �YS�� *+2� 6*�� �YS�� *+2� 6���0�� :.� #.�� � #://�	� � :0� 0�:1�
�1� 8 � � �R � � �R � �RR � �RRRR���R���R���R���R��R��R�R
Rq��R���Rf��R���Rf��R���R���R���R6QTRTYTR+w�R}��R+w�R}��R���R���Rw��R���Rl��R���Rl��R���R���R���R ^ �TR�TR��TR�wTR}�TR�HTRNQTR ^ �cR�cR��cR�wcR}�cR�HcRNQcRT`cRchcR   � 2  v    v   v   v ' (   v   v !   v"#   v$!   v%&   v' 	  v( 
  v)&   v*&   v+   v,#   v-!   v.&   v/   v0   v1&   v2&   v3   v4#   v5!   v6&   v7   v8   v9&   v:&   v;   v<#   v=!   v>&    v? !  v@ "  vA& #  vB& $  vC %  vD# &  vE! '  vF& (  vG )  vH *  vI& +  vJ& ,  vK -  vL .  vM& /  vN& 0  vO 1P   � =         !  #      0  0  4  6  8  /  /  �  o 4 6 6 4 � ] W %  4  � � %� %� %� .� .� .� =� =� =� =� = = =� =� =� =] >* >� c� c� c� c d d d d( e( e e e D               