����  -� 
SourceFile DC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\aboutcf.cfm cfaboutcf2ecfm87793577  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   PAGENAME Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   THISURL   	   PROTOCOL   	    com.macromedia.SourceModTime  6�e	X pageContext #Lcoldfusion/runtime/NeoPageContext; % &	  ' getOut ()Ljavax/servlet/jsp/JspWriter; ) * javax/servlet/jsp/JspContext ,
 - + parent Ljavax/servlet/jsp/tagext/Tag; / 0	  1 com.adobe.coldfusion.* 3 bindImportPath (Ljava/lang/String;)V 5 6
  7 
 9 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V ; <
  = $class$coldfusion$tagext$io$SilentTag Ljava/lang/Class; coldfusion.tagext.io.SilentTag A forName %(Ljava/lang/String;)Ljava/lang/Class; C D java/lang/Class F
 G E ? @	  I _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; K L
  M coldfusion/tagext/io/SilentTag O _setCurrentLineNo (I)V Q R
  S 	hasEndTag (Z)V U V coldfusion/tagext/GenericTag X
 Y W 
doStartTag ()I [ \
 P ] 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; _ `
  a   c checkSimpleParameter 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V e f
  g CGI i java/lang/String k SERVER_PORT_SECURE m _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; o p
  q 	IsBoolean (Ljava/lang/Object;)Z s t
  u _Object (Z)Ljava/lang/Object; w x coldfusion/runtime/Cast z
 { y _boolean } t
 { ~ https:// � set (Ljava/lang/Object;)V � � coldfusion/runtime/Variable �
 � � http:// � doAfterBody � \
 Y � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � \ #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 Y � 	doFinally � 
 Y � 


 � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � @	  � coldfusion/tagext/io/OutputTag �
 � ] 

 � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag � � @	  � "coldfusion/tagext/lang/ImportedTag � l10n � cftags/ � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � java/lang/Object � id � cfadmin_about � var � pagename � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � �
 � ] About ColdFusion Administrator � write � 6 java/io/Writer �
 � �
 � �
 � �
 � � 5

<html>
<head>
	<LINK REL="SHORTCUT ICON" href=" � _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 { � SERVER_NAME � : � SERVER_PORT � GetContextRoot ()Ljava/lang/String; � �
  � ,/CFIDE/administrator/favicon.ico">
	<title> � </title>
	 � 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag � � @	  � !coldfusion/tagext/lang/IncludeTag � 	cfinclude � template � 
styles.cfm � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � 
  setTemplate 6
 � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  /
	<meta name="Author" content="Copyright 1995-
 Now "()Lcoldfusion/runtime/OleDateTime;
  Year (Ljava/util/Date;)I
  (I)Ljava/lang/String; �
 { � Adobe Macromedia Software LLC. All rights reserved.">
</head>
<body
	text="#003366" link="#003399" vlink="#997799" alink="#339900"
	topmargin="0" leftmargin="0" marginheight="0" marginwidth="0"
>

 coldfusionmx Scorpio o

<table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" style="background-image:url(' REQUEST �images/aboutbackground.png'); background-repeat:no-repeat">
<tr>
	<td>
		
		<table border="0" cellpadding="0" cellspacing="0" style="margin-left:100px">
			<tr>
				<td colspan="3"><img src="! �images/spacer.gif" alt="" width="1" height="105"></td>
			</tr>
			<tr valign="top">
				<td colspan="3" align="left" style="padding-left:20;">
					# version6% Version:' 	 <strong>) SERVER+ 
COLDFUSION- PRODUCTVERSION/ </strong><br />
					1 
ssnumabout3 Serial number:5 LICENSE7 
LICENSEKEY9 M</strong><br />
				</td>
			</tr>
			<tr>
				<td colspan="3"><img src="; �images/spacer.gif" alt="" width="1" height="20"></td>
			</tr>
			<tr>
				<td colspan="3">
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td style="vertical-align:middle;"><img src="= ;images/spacer.gif" alt="" width="10" height="1"/><img src="? �images/adobelogo.gif" alt="" width="29" height="32"/></td>
						<td style="width:500px;"><p style="margin:10px 20px 20px 20px; ma" class="loginCopyrightText">A copyright_contCy
Copyright 1997-2012 Adobe Systems Incorporated and its licensors. All Rights Reserved. Adobe, the Adobe logo, and ColdFusion are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries.  <BR>

Portions utilize Microsoft Windows Media Technologies. Copyright 1999-2004 Microsoft Corporation. All Rights Reserved. 

This Product includes code licensed from RSA Data Security 

Notices, terms and conditions pertaining to third party software are located at http://www.adobe.com/go/thirdparty/ and incorporated by reference herein.


                              E �</p> </td> </tr>

				</table>
				</td>
			</tr>
			<tr>
				<td align="center" class="cell2BlueSidesAndBlueBkgd" style="background-color:#406C89">
					<h1 style="color:#FFFFFF"><label for="admin_login">G ContributingMembersI Contributing MembersK =</label></h1>
				</td>
			</tr>
		<tr>
			<td><img src="M �images/spacer.gif" alt="" width="1" height="170"></td>
		</tr>
		<tr>
			<td align="right" class="cell2BlueSidesAndBlueBkgd" style="background-color:#406C89">&nbsp;</td>
		</tr>
		</table>
		
		<br>
	</td>
</tr>
</table>
O
 � � coldfusion/tagext/QueryLoopR
S �
S �
 � ��
<br><br><br><br><br>
<style type="text/css">
.panel {
	position:relative; top:0px;
	/*Filter:blendTrans(duration=2);*/
	Filter:revealTrans(duration=0.5,transition=5);
	height:180px;
	width:500px;

}
</style>
<div id="parentCredits" style="position:absolute;top:270px;left:100px;height:180px;overflow:hidden;">
                <div id="management" class="panel" style="top:30px;">
                <h1>Engineering Management </h1>
                                <dd>Ananth P N, Director of Engineering </dd>
                                <dd>Hemant Khandelwal, Senior Engineering Manager </dd>
                                <dd>Rupesh Kumar, Engineering Manager </dd>
                                <dd>Vamseekrishna Manneboina, Quality Assurance Manager </dd>
                                <dd>Vishal Manakame, Senior Program Manager </dd>
                </div>
                <div id="engineering" class="panel" style="top:30px;">
                                <h1>Engineering Team </h1>
                                <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                                <td valign="top">
                                                                        <dd>Altamish Ahmad </dd>
                                                                                <dd>Anshul Gupta </dd>
                                                                                <dd>Asha K S </dd>
                                                                                <dd>Awdhesh Kumar </dd>
                                                                                <dd>Chandan Kumar </dd>
                                                                  
                                                                </td>
                                                                <td valign="top">
                                                                                   <dd>Kiran Sakhare</dd>
                                                                                <dd>Krishna Reddy P </dd>
                                                                                <dd>Paul Nibin</dd>
                                                                                <dd>Ramchandra Kulkarni </dd>
                                                                                                    <dd>Sandeep Paliwal </dd>
                                                                                
                                                                </td>
                                                                <td valign="top">
                                                                                <dd>Sanjeev Kumar </dd>
                                                                                <dd>Shilpi Khariwal </dd>
                                                                                <dd>Uday Ogra </dd>
                                                                </td>
                                                </tr>
                                </table>
                </div>
                <div id="qa" class="panel" style="top:30px;">
                <h1>Quality Assurance Team </h1>
                                <table border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                                <td valign="top">
                                                                        <dd>Akhila K Srinivas </dd>
                                                                                <dd>Dipanwita Sarkar </dd>
                                                                                <dd>Evelin Varghese </dd>
                                                                                <dd>Gaurav Tiwari </dd>
                                                                                <dd>Himavanth Rachamsetty </dd>
                                                                                <dd>Kavya Maiya </dd>
                                                                </td>
                                                                <td valign="top">
                                                                                <dd>Kunal Saini </dd>
                                                                                <dd>Milan Chandna </dd>
                                                                                <dd>Sagar H Ganatra </dd>
                                                                                <dd>Viny Nigam </dd>
                                                                                <dd>Vinod Konatala </dd>
                                                                                <dd>Yashas R R </dd>
                                                                </td>
                                                </tr>
                                </table>
                </div>
                <div id="biz" class="panel" style="top:30px;">
                               <h1>Product Management, Marketing, and Business Team</h1>          
                               <dd>Tridib Roy Chowdhury, Senior Director of Products</dd>
                                <dd>Rakshith Naresh, Product Manager </dd>
                                <dd>Minu Kataria, Product Marketing Manager </dd>
                                <dd>Priyank Shrivastava, Senior Product Marketing Manager </dd>
                                <dd>Ben Forta, Director of Evangelism </dd>
                                <dd>Terry Ryan, Platform Evangelist </dd>
                </div>

                <div id="doc" class="panel" style="top:30px;">
                    <h1>Documentation Team</h1>
                    <dd>Sujatha P J,Documentation Manager </dd>
                    <dd>Aman Batra </dd>
                    <dd>Chandra Shekhar Puri</dd>
                    <dd>Sunil Bhaskaran </dd>
                    <dd>Sanojkumar K C </dd>
                    <dd>Suhas Kakkadasam Sridhara Yogin</dd>
                </div>
                <div id="loc" class="panel" style="top:30px;">
                                <h1>Localization Team </h1>
                                <dd>Abhinaw Paliwal </dd>
                                <dd>Abhishake Verma</dd>
                                <dd>Rajeev Jain </dd>
                                <dd>Saurav Kumar </dd>
                                <dd>Satyendra Sheel </dd>
                </div>
                <div id="legal" class="panel" style="top:30px;">
                                  <h1>Legal </h1>
                                  <dd>Ann Sellier </dd>
                                  <dd>Bill Mitchell</dd>
                                  <dd>Elizabeth Hewitt</dd>
                                  <dd>Jennifer Ruehr</dd>
                </div>

                <div id="release" class="panel" style="top:30px;">
                                   <h1>PreRelease Team </h1>
                                   <dd>Sharad Kumar Kiri </dd>
                                   <dd>Ashish Mishra </dd>
                </div>
                <div id="eet" class="panel" style="top:30px;">
                <h1>Engineering Escalation and Support Team</h1>
		  <table border="0" cellpadding="0" cellspacing="0">
                                                <tr>
		<td valign="top">
                                                                        <dd>Ankur Srivastava </dd>
                                                                                <dd>Arvind Pawar </dd>
                                                                                <dd>Mohd Kaif Khurashi </dd>
                                                                                <dd>Mohini Kapoor </ddW	�>
                                                                                <dd>Nimeet Sharma </dd>
                                                                                
                                                                </td>
                                                                <td valign="top">
                                                                                <dd>Piyush Kumar Nayak </dd>
                                                                                <dd>Simar Preet Singh Bhatia </dd>
                                                                                <dd>Swathi Chitteddi  </dd>
                                                                                <dd>Swaraj Mitra </dd>
                                                                                
                                                                </td>
								</tr>
								</table>
                           
                                
                </div>

                <div id="others" class="panel" style="top:30px;">
                <h1>Special Thanks</h1>
                               <table border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                      <td valign="top">
                                                          <dd>Adam Lehman</dd>
                                                          <dd>Alison Huselid</dd>
							  <dd>Raymond Camden</dd>
                                                      </td>
                                                </tr>
                                </table>
                </div>
</div>


<script>
	panels = document.getElementById("parentCredits").getElementsByTagName("div");
	function transitionPanels(index) {
		if(!index || index >= panels.length) {
			index = 0;
		}

		for (i=0;i<panels.length;i++) {
			panels[i].style.display='none';
		}

//		if (typeof(panels[index].filters) == 'object') panels[index].filters.revealTrans.Apply();
		panels[index].style.display='block';
//		if (typeof(panels[index].filters) == 'object') panels[index].filters.revealTrans.Play();

		setTimeout('transitionPanels('+(index+1)+')', 5250);
	}
	transitionPanels();
	/*for testing an individual panel */
	/*for (i=0;i<panels.length;i++) {
			panels[i].style.display='none';
		}
	panels[6].style.display='block';*/
</script>
Y metaData Ljava/lang/Object;[\	 ] this Lcfaboutcf2ecfm87793577; LocalVariableTable Code <clinit> varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; getMetadata ()Ljava/lang/Object; runPage out Ljavax/servlet/jsp/JspWriter; value silent1  Lcoldfusion/tagext/io/SilentTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 output9  Lcoldfusion/tagext/io/OutputTag; mode9 module2 $Lcoldfusion/tagext/lang/ImportedTag; mode2 t16 t17 t18 t19 t20 t21 include3 #Lcoldfusion/tagext/lang/IncludeTag; t23 module4 mode4 t26 t27 t28 t29 t30 t31 module5 mode5 t34 t35 t36 t37 t38 t39 module6 mode6 t42 t43 t44 t45 t46 t47 module7 mode7 t50 t51 t52 t53 t54 t55 module8 mode8 t58 t59 t60 t61 t62 t63 t64 t65 t66 t67 LineNumberTable java/lang/Throwable� 1                      ? @    � @    � @    � @   [\       b   #     *� 
�   a       _`   c  b   M     /B� H� J�� H� ��� H� ��� H� �� �Y� �� ȳ^�   a       /_`      b   ]     +*+,� **+,� � **+,� � **+,� � !�   a        +_`     +de    +fg  hi b   "     �^�   a       _`   ji b  b  D  �*� (� .L*� 2N*4� 8*+:� >*� J-� N� P:*� T� Z� ^Y6� �*+� bL**� d� h*� T*j� lYnS� r� v� |Y� � W*j� lYnS� r� � *� !�� �� *� !�� �� ����� � :� �:*+� �L�� �� :� #�� � #:		� �� � :
� 
�:� ��*+�� >*� �	-� N� �:*� T� Z� �Y6�*+�� >*� �� N� �:*� T���� �� �Y� �Y�SY�SY�SY�S� ȶ �� Z� �Y6� 5*+� bL+Ѷ �� ך��� � :� �:*+� �L�� �� :� &��� � #:� ب � :� �:� ٩+۶ �+**� !� ߸ � �+*j� lY�S� r� � �+� �+*j� lY�S� r� � �+*� T*� �� �+� �+**� � ߸ � �+� �*� �� N� �:*� T������ Z�	� :�<�+� �+*� T**� T*���� �+� �*� �� N� �:*� T���� �� �Y� �Y�SYSY�SYS� ȶ �� Z� �Y6� 6*+� bL+� �� ך��� � :� �:*+� �L�� �� :� &�s�� � #:� ب � :� �:� ٩+� �+* � lYS� r� � �+"� �+* � lYS� r� � �+$� �*� �� N� �: **� T ���� � � �Y� �Y�SY&S� ȶ � � Z � �Y6!� 6* !+� bL+(� � � ך��� � :"� "�:#*!+� �L�# � �� :$� &�u$�� � #:% %� ب � :&� &�:' � ٩'+*� �+*,� lY.SY0S� r� � �+2� �*� �� N� �:(*+� T(���� �(� �Y� �Y�SY4S� ȶ �(� Z(� �Y6)� 6*()+� bL+6� �(� ך��� � :*� *�:+*)+� �L�+(� �� :,� &��,�� � #:-(-� ب � :.� .�:/(� ٩/+*� �+* � lY8SY:S� r� � �+<� �+* � lYS� r� � �+>� �+* � lYS� r� � �+@� �+* � lYS� r� � �+B� �*� �� N� �:0*6� T0���� �0� �Y� �Y�SYDS� ȶ �0� Z0� �Y61� 6*01+� bL+F� �0� ך��� � :2� 2�:3*1+� �L�30� �� :4� &�K4�� � #:505� ب � :6� 6�:70� ٩7+H� �*� �� N� �:8*G� T8���� �8� �Y� �Y�SYJS� ȶ �8� Z8� �Y69� 6*89+� bL+L� �8� ך��� � ::� :�:;*9+� �L�;8� �� :<� &� �<�� � #:=8=� ب � :>� >�:?8� ٩?+N� �+* � lYS� r� � �+P� ��Q����T� :@� #@�� � #:AA�U� � :B� B�:C�V�C+X� �+Z� �� L > � �� � � �� 3 � �� � � �� 3 � �� � � �� � � �� � � ����������x�������x���������������8;�;@;�^j�dgj�^y�dgy�jvy�y~y�69�9>9�\h�beh�\w�bew�htw�w|w�!�!&!��DP�JMP��D_�JM_�P\_�_d_�D`c�chc�9�������9���������������#&�&+&��IU�ORU��Id�ORd�Uad�did���������^��d\��bD��J����I��O���������������^��d\��bD��J����I��O��������������� a  � D  �_`    �kl   �m\   � / 0   �no   �pq   �rs   �t\   �u\   �vs 	  �ws 
  �x\   �yz   �{q   �|}   �~q   �s   ��\   ��\   ��s   ��s   ��\   ���   ��\   ��}   ��q   ��s   ��\   ��\   ��s   ��s   ��\   ��}    ��q !  ��s "  ��\ #  ��\ $  ��s %  ��s &  ��\ '  ��} (  ��q )  ��s *  ��\ +  ��\ ,  ��s -  ��s .  ��\ /  ��} 0  ��q 1  ��s 2  ��\ 3  ��\ 4  ��s 5  ��s 6  ��\ 7  ��} 8  ��q 9  ��s :  ��\ ;  ��\ <  ��s =  ��s >  ��\ ?  ��\ @  ��s A  ��s B  ��\ C�  V U H  I  I  M  H  H  X  X  X  u  u  X  �  �  �  �  � 	 � 	 � 	 � 	 �  X   _ i - � � �    " " ! > > 7 L L K { ` � � � � � �  � �  �  �  � &� &� &� *� *� *� *� *� +� +x +x +w +� /� /� /� 5� 5� 5� 5� 5� 5) 6� 6� G� G} K} K| K            "    #