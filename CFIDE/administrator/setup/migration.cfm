����  -� 
SourceFile LC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\setup\migration.cfm cfmigration2ecfm764200360  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FORM Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   	DOC_TITLE   	   ADMINOBJ   	    THISSTEP " " 	  $ OUTPUT & & 	  ( com.macromedia.SourceModTime  5z�� pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/JspContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 com.adobe.coldfusion.* ; bindImportPath (Ljava/lang/String;)V = >
  ? 

 A _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V C D
  E SKIP G 	FORM.SKIP I  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z K L
  M 
	 O java/lang/String Q MIGRATIONSTATUS S skipped U _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V W X
  Y 
ISCOMPLETE [ 1 ] ADVANCE _ NEXTSTEP a migrationfinish c 
	
 e PREV g 	FORM.PREV i setupmessage k 
 m NEXT o 	FORM.NEXT q started s _setCurrentLineNo (I)V u v
  w 	component y CFIDE.adminapi.administrator { CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; } ~
   set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � 	../cftags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � java/lang/Object � id � doc_title_cfmigration � var � 	doc_title � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � ColdFusion Migration � write � > java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � exporting_applets � export_applets � Exporting Applets � mig_skip � Skip � mig_back � Back � mig_continue � Next � mig_skip_warn � (Are you sure you want to skip migration? � &class$coldfusion$tagext$lang$CustomTag  coldfusion.tagext.lang.CustomTag � � �	  �  coldfusion/tagext/lang/CustomTag � wrapper � '(Ljava/lang/String;Ljava/lang/String;)V � �
 �  panel 	migration _arrayAssign &(Ljava/lang/Object;)Ljava/lang/Object;
  title
 _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;
  text   $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag �	  coldfusion/tagext/io/OutputTag
 � �
  		<table border="0" cellpadding="0" cellspacing="0">
  		<tr>
  			<td width="20">&nbsp;</td>
  			<td colspan="3">
			<font class="sentance">
  			 	mig_intro�
				ColdFusion will now migrate existing settings and resources, 
				including data sources and Custom tags. 
				NOTE: If you skip this step, applications that require 
				these resources will not run correctly until you have defined 
				them in the ColdFusion Administrator.
				<br /><br /> 
				If you require additional data before continuing, you can stop the 
				Migration Wizard at any time and make the changes. Once done copy 
				the config files (neo-*.xml) from &lt;oldColdFusionRoot&gt;/lib to 
				&lt;newColdFusionRoot&gt;/lib. When you are ready to continue, restart the 
				ColdFusion Administrator and the wizard will continue from where you stopped.				
				<br /><br /> 
			  X</font>
			</td>
  		</tr>
  		<tr><td>&nbsp;</td>
  		</tr>
  		</table>
  		
		" REQUEST$ PREVBTN& true( :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V W*
 + 
		- SKIPBTN/ NEXTBTN1 

	3
 � coldfusion/tagext/QueryLoop6
7 �
7 �
 � metaData Ljava/lang/Object;;<	 = this Lcfmigration2ecfm764200360; LocalVariableTable Code <clinit> varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; getMetadata ()Ljava/lang/Object; runPage out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module8 "Lcoldfusion/tagext/lang/CustomTag; mode8 output7  Lcoldfusion/tagext/io/OutputTag; mode7 module6 mode6 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 t68 t69 t70 t71 t72 t73 LineNumberTable java/lang/Throwable� 1     	                 "     &     � �    � �    �   ;<       B   #     *� 
�   A       ?@   C  B   F     (�� �� ��� �� �� ��� �Y� �� ��>�   A       (?@      B   u     C*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )�   A        C?@     CDE    CFG  HI B   "     �>�   A       ?@   JI B  �  J  �*� 0� 6L*� :N*<� @*+B� F**� HJ� N� u*+P� F**� )� RYTSV� Z*+P� F**� %� RY\S^� Z*+P� F**� %� RY`S^� Z*+P� F**� %� RYbSd� Z*+f� F� �**� hj� N� [*+P� F**� %� RY\S^� Z*+P� F**� %� RY`S^� Z*+P� F**� %� RYbSl� Z*+n� F� g**� pr� N� X*+P� F**� )� RYTSt� Z*+P� F**� %� RY\S^� Z*+P� F**� %� RY`S^� Z*+n� F*+B� F*� !*� x*z|� �� �*+B� F*� �-� �� �:*� x���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+Ƕ �� Ϛ��� � :� �:*+� �L�� �� :� #�� � #:		� ܨ � :
� 
�:� ߩ*+n� F*� �-� �� �:*� x���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+� �� Ϛ��� � :� �:*+� �L�� �� :� #�� � #:� ܨ � :� �:� ߩ*+n� F*� �-� �� �:*� x���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+� �� Ϛ��� � :� �:*+� �L�� �� :� #�� � #:� ܨ � :� �:� ߩ*+n� F*� �-� �� �:*� x���� �� �Y� �Y�SY�SY�SY�S� �� �� �� �Y6� 5*+� �L+�� �� Ϛ��� � :� �:*+� �L�� �� : � # �� � #:!!� ܨ � :"� "�:#� ߩ#*+n� F*� �-� �� �:$*� x$���� �$� �Y� �Y�SY�SY�SY�S� �� �$� �$� �Y6%� 5*$%+� �L+� �$� Ϛ��� � :&� &�:'*%+� �L�'$� �� :(� #(�� � #:)$)� ܨ � :*� *�:+$� ߩ+*+n� F*� �-� �� �:,*� x,���� �,� �Y� �Y�SY�SY�SY�S� �� �,� �,� �Y6-� 5*,-+� �L+�� �,� Ϛ��� � :.� .�:/*-+� �L�/,� �� :0� #0�� � #:1,1� ܨ � :2� 2�:3,� ߩ3*+n� F*� �-� �� �:4*� x4��4� �Y� �YSY�	SYSY**� ��	SYSY�	S� �� �4� �4� �Y65��*45+� �L*+P� F*�4� ��:6*� x6� �6�Y67�/+� �*� �6� �� �:8*$� x8���� �8� �Y� �Y�SYS� �� �8� �8� �Y69� 6*89+� �L+!� �8� Ϛ��� � ::� :�:;*9+� �L�;8� �� :<� ,� ʨ ��%<�� � #:=8=� ܨ � :>� >�:?8� ߩ?+#� �*%� RY'S)�,*+.� F*%� RY0S)�,*+.� F*%� RY2S)�,*+4� F6�5���6�8� :@� )� L� �@�� � #:A6A�9� � :B� B�:C6�:�C*+n� F4� Ϛ�\� � :D� D�:E*5+� �L�E4� �� :F� #F�� � #:G4G� ܨ � :H� H�:I4� ߩI� N��������(�"%(��7�"%7�(47�7<7��������������������������������j�������_�������_���������������0KN�NSN�%nz�twz�%n��tw��z�����������4@�:=@��4O�:=O�@LO�OTO������������ ���� ���+GJ�JOJ� s�y|� s��y|����������s �y � ��s/�y/�/� ,/�/4/��sU�yU�RU�UZU��s��y��u��{~���s��y��u��{~���������� A  � J  �?@    �KL   �M<   � 7 8   �NO   �PQ   �RS   �T<   �U<   �VS 	  �WS 
  �X<   �YO   �ZQ   �[S   �\<   �]<   �^S   �_S   �`<   �aO   �bQ   �cS   �d<   �e<   �fS   �gS   �h<   �iO   �jQ   �kS   �l<   �m<    �nS !  �oS "  �p< #  �qO $  �rQ %  �sS &  �t< '  �u< (  �vS )  �wS *  �x< +  �yO ,  �zQ -  �{S .  �|< /  �}< 0  �~S 1  �S 2  ��< 3  ��� 4  ��Q 5  ��� 6  ��Q 7  ��O 8  ��Q 9  ��S :  ��< ;  ��< <  ��S =  ��S >  ��< ?  ��< @  ��S A  ��S B  ��< C  ��S D  ��< E  ��< F  ��S G  ��S H  ��< I�  � k         !    >  >  0  0  X  X  J  J  r  r  d  d  �  �  ~  ~  � 	 � 	 � 	 � 	 � 	 � 
 � 
 � 
 � 
 �  �  �  �  �  �  �  �    	  & &   @ @ 2 2 Z Z L L   � 	  x z w w m m � � � � � O F P    � � � � � � g ] ] l l l � �  $� $� A� A� A� A� B� B� B� B� C� C� C� C� -           *    +