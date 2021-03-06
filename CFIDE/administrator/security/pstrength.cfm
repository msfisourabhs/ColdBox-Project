����  -` 
SourceFile OC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\security\pstrength.cfm cfpstrength2ecfm617068039  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PASSWORD_STRONG Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   PASSWORD_VERY_WEAK   	   PASSWORD_MEDIUM   	    PASSWORD_UNSAFE " " 	  $ PASSWORD_VERY_STRONG & & 	  ( PASSWORD_TOO_SHORT * * 	  , PASSWORD_WEAK . . 	  0 com.macromedia.SourceModTime  58Bi� pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/JspContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A com.adobe.coldfusion.* C bindImportPath (Ljava/lang/String;)V E F
  G 
 I _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V K L
  M (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag Q forName %(Ljava/lang/String;)Ljava/lang/Class; S T java/lang/Class V
 W U O P	  Y _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; [ \
  ] "coldfusion/tagext/lang/ImportedTag _ _setCurrentLineNo (I)V a b
  c l10n e 
../cftags/ g admin i setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V k l
 ` m &coldfusion/runtime/AttributeCollection o java/lang/Object q id s password_very_weak u var w ([Ljava/lang/Object;)V  y
 p z setAttributecollection (Ljava/util/Map;)V | }  coldfusion/tagext/lang/ModuleTag 
 � ~ 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 	Very Weak � write � F java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � password_weak � Weak � password_medium � Medium � password_strong � Strong � password_very_strong � Very Strong � password_unsafe � Unsafe Password � password_too_short � 	Too Short �'

<script type="text/javascript">
/* jQuery Password Strength Plugin (pstrength) - A jQuery plugin to provide accessibility functions
 * Author: Tane Piper (digitalspaghetti@gmail.com) 
 * Website: http://digitalspaghetti.me.uk
 * Licensed under the MIT License: http://www.opensource.org/licenses/mit-license.php
 * This code uses a modified version of Steve Moitozo's algorithm (http://www.geekwisdom.com/dyn/passwdmeter)
 */
(function($){
	$.extend($.fn, {
		pstrength : function(options) {
			var options = $.extend({
				verdects:	[" � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � P	  � coldfusion/tagext/io/OutputTag �
 � � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � �
 � � coldfusion/tagext/QueryLoop �
 � �
 � �
 � � "," ��"],
				colors: 	["#f00","#c06", "#f60","#3c0","#3f0"],
				scores: 	[10,15,30,40],
				common:		["password","sex","god","123456","123","liverpool","letmein","qwerty","monkey"],
				minchar:	6
			},options);		
			return this.each(function(){
				var infoarea = $(this).attr('id');
				$(this).after('<div class="pstrength-info" id="' + infoarea + '_text"></div>');
				$(this).after('<div class="pstrength-bar" id="' + infoarea + '_bar" style="border: 1px solid white; font-size: 1px; height: 2px; width: 0px;"></div>');
				$(this).keyup(function(){				
					$.fn.runPassword($(this).val(), infoarea, options);
				});
			});
		},
		runPassword : function (password, infoarea, options){
			// Check password
			nPerc = $.fn.checkPassword(password, options);
			// Get controls
	    	var ctlBar = "#" + infoarea + "_bar"; 
	    	var ctlText = "#" + infoarea + "_text";		
			// Color and text
			if (nPerc == -200) {
				strColor = '#f00';
				strText = ' � �';
				$(ctlBar).css({width: "0%"});
			}		
			else if (nPerc < 0 && nPerc > -199) {
				strColor = '#ccc';
				strText = ' �l';
				$(ctlBar).css({width: "1%"});
			}
			else if(nPerc <= options.scores[0])
			{
		   		strColor = options.colors[0];
				strText = options.verdects[0];
				$(ctlBar).css({width: "1%"});
			}
			else if (nPerc > options.scores[0] && nPerc <= options.scores[1])
			{
		   		strColor = options.colors[1];
				strText = options.verdects[1];
				$(ctlBar).css({width: "25%"});
			}
			else if (nPerc > options.scores[1] && nPerc <= options.scores[2])
			{
			   	strColor = options.colors[2];
				strText = options.verdects[2];
				$(ctlBar).css({width: "50%"});
			}
			else if (nPerc > options.scores[2] && nPerc <= options.scores[3])
			{
			   	strColor = options.colors[3];
				strText = options.verdects[3];
				$(ctlBar).css({width: "75%"});
			}
			else
			{
			   	strColor = options.colors[4];
				strText = options.verdects[4];
				$(ctlBar).css({width: "99%"});
			}
			$(ctlBar).css({backgroundColor: strColor});
			$(ctlText).html("<span style='color: " + strColor + ";'>" + strText + "</span>");
		},
		checkPassword : function(password, options)
		{
			var intScore = 0;
			var strVerdict = options.verdects[0];	
			// PASSWORD LENGTH
			if (password.length < options.minchar)                         // Password too short
			{
				intScore = (intScore - 100)
			}
			else if (password.length >= options.minchar && password.length <= (options.minchar + 2)) // Password Short
			{
				intScore = (intScore + 6)
			}
			else if (password.length >= (options.minchar + 3) && password.length <= (options.minchar + 4))// Password Medium
			{
				intScore = (intScore + 12)
			}
			else if (password.length >= (options.minchar + 5))                    // Password Large
			{
				intScore = (intScore + 18)
			}
			if (password.match(/[a-z]/))                              // [verified] at least one lower case letter
			{
				intScore = (intScore + 1)
			}
			if (password.match(/[A-Z]/))                              // [verified] at least one upper case letter
			{
				intScore = (intScore + 5)
			}
			// NUMBERS
			if (password.match(/\d+/))                                 // [verified] at least one number
			{
				intScore = (intScore + 5)
			}
			if (password.match(/(.*[0-9].*[0-9].*[0-9])/))             // [verified] at least three numbers
			{
				intScore = (intScore + 7)
			}
			// SPECIAL CHAR
			if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~]/))            // [verified] at least one special character
			{
				intScore = (intScore + 5)
			}
			// [verified] at least two special characters
			if (password.match(/(.*[!,@,#,$,%,^,&,*,?,_,~].*[!,@,#,$,%,^,&,*,?,_,~])/))
			{
				intScore = (intScore + 7)
			}
			// COMBOS
			if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))        // [verified] both upper and lower case
			{
				intScore = (intScore + 2)
			}
			if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/)) // [verified] both letters and numbers
			{
				intScore = (intScore + 3)
			}
		 	// [verified] letters, numbers, and special characters
			if (password.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/))
			{
				intScore = (intScore + 3)
			}
			for (var i=0; i < options.common.length; i++) {
				if (password.toLowerCase() == options.common[i]) {
					intScore = -200;
				}
			}
			return intScore;
		}
	});
})(jQuery);
</script> � metaData Ljava/lang/Object; � �	  � this Lcfpstrength2ecfm617068039; LocalVariableTable Code <clinit> varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; getMetadata ()Ljava/lang/Object; runPage out Ljavax/servlet/jsp/JspWriter; value module0 $Lcoldfusion/tagext/lang/ImportedTag; mode0 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module1 mode1 t14 t15 t16 t17 t18 t19 module2 mode2 t22 t23 t24 t25 t26 t27 module3 mode3 t30 t31 t32 t33 t34 t35 module4 mode4 t38 t39 t40 t41 t42 t43 module5 mode5 t46 t47 t48 t49 t50 t51 module6 mode6 t54 t55 t56 t57 t58 t59 output7  Lcoldfusion/tagext/io/OutputTag; mode7 t62 t63 t64 t65 output8 mode8 t68 t69 t70 t71 output9 mode9 t74 t75 t76 t77 output10 mode10 t80 t81 t82 t83 output11 mode11 t86 t87 t88 t89 output12 mode12 t92 t93 t94 t95 output13 mode13 t98 t99 t100 t101 LineNumberTable java/lang/Throwable^ 1     
                 "     &     *     .     O P    � P    � �        �   #     *� 
�    �        � �    �   �   =     R� X� ZƸ X� Ȼ pY� r� {� �    �        � �       �   �     [*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1�    �        [ � �     [ � �    [ � �   � �  �   "     � �    �        � �    � �  �  �  f  �*� 8� >L*� BN*D� H*+J� N*+J� N*� Z-� ^� `:*� dfhj� n� pY� rYtSYvSYxSYvS� {� �� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:		� �� � :
� 
�:� ��*+J� N*� Z-� ^� `:*� dfhj� n� pY� rYtSY�SYxSY�S� {� �� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*+J� N*� Z-� ^� `:*� dfhj� n� pY� rYtSY�SYxSY�S� {� �� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� :� #�� � #:� �� � :� �:� ��*+J� N*� Z-� ^� `:*� dfhj� n� pY� rYtSY�SYxSY�S� {� �� �� �Y6� 5*+� �L+�� �� ����� � :� �:*+� �L�� �� : � # �� � #:!!� �� � :"� "�:#� ��#*+J� N*� Z-� ^� `:$*� d$fhj� n$� pY� rYtSY�SYxSY�S� {� �$� �$� �Y6%� 5*$%+� �L+�� �$� ����� � :&� &�:'*%+� �L�'$� �� :(� #(�� � #:)$)� �� � :*� *�:+$� ��+*+J� N*� Z-� ^� `:,*� d,fhj� n,� pY� rYtSY�SYxSY�S� {� �,� �,� �Y6-� 5*,-+� �L+�� �,� ����� � :.� .�:/*-+� �L�/,� �� :0� #0�� � #:1,1� �� � :2� 2�:3,� ��3*+J� N*� Z-� ^� `:4*	� d4fhj� n4� pY� rYtSY�SYxSY�S� {� �4� �4� �Y65� 5*45+� �L+�� �4� ����� � :6� 6�:7*5+� �L�74� �� :8� #8�� � #:949� �� � ::� :�:;4� ��;+ö �*� �-� ^� �:<*� d<� �<� �Y6=� +**� � ϸ ն �<� ֚��<� �� :>� #>�� � #:?<?� ڨ � :@� @�:A<� ۩A+ݶ �*� �-� ^� �:B*� dB� �B� �Y6C� +**� 1� ϸ ն �B� ֚��B� �� :D� #D�� � #:EBE� ڨ � :F� F�:GB� ۩G+ݶ �*� �	-� ^� �:H*� dH� �H� �Y6I� +**� !� ϸ ն �H� ֚��H� �� :J� #J�� � #:KHK� ڨ � :L� L�:MH� ۩M+ݶ �*� �
-� ^� �:N*� dN� �N� �Y6O� +**� � ϸ ն �N� ֚��N� �� :P� #P�� � #:QNQ� ڨ � :R� R�:SN� ۩S+ݶ �*� �-� ^� �:T*� dT� �T� �Y6U� +**� )� ϸ ն �T� ֚��T� �� :V� #V�� � #:WTW� ڨ � :X� X�:YT� ۩Y+߶ �*� �-� ^� �:Z*.� dZ� �Z� �Y6[� +**� %� ϸ ն �Z� ֚��Z� �� :\� #\�� � #:]Z]� ڨ � :^� ^�:_Z� ۩_+� �*� �-� ^� �:`*3� d`� �`� �Y6a� +**� -� ϸ ն �`� ֚��`� �� :b� #b�� � #:c`c� ڨ � :d� d�:e`� ۩e+� �� b u � �_ � � �_ j � �_ � � �_ j � �_ � � �_ � � �_ � � �_:UX_X]X_/x�_~��_/x�_~��_���_���_�_"_�=I_CFI_�=X_CFX_IUX_X]X_���_���_�_	_�_	__#_���_���_���_���_���_���_���_���_Qlo_oto_F��_���_F��_���_���_���_36_6;6_Vb_\_b_Vq_\_q_bnq_qvq_���_���_���_���_���_���_LX_RUX_Lg_RUg_Xdg_glg_���_���_���_���_���_���_BN_HKN_B]_HK]_NZ]_]b]_���_���_���_���_���_���_
8D_>AD_
8S_>AS_DPS_SXS_���_���_���_���_���_���_  �  � f  � � �    � � �   � � �   � ? @   � � �   � � �   � � �   � � �   � � �   � � � 	  �  � 
  � �   � �   � �   � �   � �   � �   � �   � �   �	 �   �
 �   � �   � �   � �   � �   � �   � �   � �   � �   � �   � �   � �   � �    � � !  � � "  � � #  � � $  � � %  � � &  � � '  � � (  � � )  �  � *  �! � +  �" � ,  �# � -  �$ � .  �% � /  �& � 0  �' � 1  �( � 2  �) � 3  �* � 4  �+ � 5  �, � 6  �- � 7  �. � 8  �/ � 9  �0 � :  �1 � ;  �23 <  �4 � =  �5 � >  �6 � ?  �7 � @  �8 � A  �93 B  �: � C  �; � D  �< � E  �= � F  �> � G  �?3 H  �@ � I  �A � J  �B � K  �C � L  �D � M  �E3 N  �F � O  �G � P  �H � Q  �I � R  �J � S  �K3 T  �L � U  �M � V  �N � W  �O � X  �P � Y  �Q3 Z  �R � [  �S � \  �T � ]  �U � ^  �V � _  �W3 `  �X � a  �Y � b  �Z � c  �[ � d  �\ � e]   � 3   Q  [  !     � � � � � � p g q 6 - 7 � � 	� 	� 	� � � � * * )  � � � ~      � � � � t  . . .� .� 3� 3� 3j 3          2    3