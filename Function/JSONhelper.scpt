FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        i      	 
 	 I      �� ���� 0 
jsonhelper 
JSONhelper      o      ���� 
0 symbol     ��  o      ���� 0 apikey apiKey��  ��   
 k     �       l     ��  ��    &  https://www.goldapi.io/dashboard     �   @ h t t p s : / / w w w . g o l d a p i . i o / d a s h b o a r d      r         J     ����    o      ���� 0 newlist        Q    �     k    W        O    R ! " ! Y    Q #�� $ %�� # k    L & &  ' ( ' r    # ) * ) b    ! + , + b     - . - m     / / � 0 0 6 h t t p s : / / w w w . g o l d a p i . i o / a p i / . n     1 2 1 4    �� 3
�� 
cobj 3 o    ���� 0 i   2 o    ���� 
0 symbol   , m      4 4 � 5 5  / U S D * o      ���� 0 theurl1 theURL1 (  6 7 6 r   $ ) 8 9 8 b   $ ' : ; : m   $ % < < � = =   x - a c c e s s - t o k e n :   ; o   % &���� 0 apikey apiKey 9 o      ���� 0 theurl2 theURL2 7  > ? > l  * *��������  ��  ��   ?  @ A @ l  * *�� B C��   B ) #store the curl string to array list    C � D D F s t o r e   t h e   c u r l   s t r i n g   t o   a r r a y   l i s t A  E F E r   * ; G H G I  * 9�� I��
�� .sysoexecTEXT���     TEXT I b   * 5 J K J b   * 1 L M L b   * / N O N m   * + P P � Q Q  c u r l   - X   G E T   O n   + . R S R 1   , .��
�� 
strq S o   + ,���� 0 theurl1 theURL1 M m   / 0 T T � U U    - H   K n   1 4 V W V 1   2 4��
�� 
strq W o   1 2���� 0 theurl2 theURL2��   H o      ���� 0 theurl3 theURL3 F  X Y X r   < E Z [ Z I  < C�� \��
�� .DfaBrEaDnull���     **** \ J   < ? ] ]  ^�� ^ o   < =���� 0 theurl3 theURL3��  ��   [ o      ���� 0 theurl theURL Y  _ ` _ l  F F��������  ��  ��   `  a b a l  F F�� c d��   c ) #set newlist to the newlist & theURL    d � e e F s e t   n e w l i s t   t o   t h e   n e w l i s t   &   t h e U R L b  f g f s   F J h i h o   F G���� 0 theurl theURL i n       j k j  ;   H I k o   G H���� 0 newlist   g  l�� l l  K K��������  ��  ��  ��  �� 0 i   $ m    ����  % n     m n m 1    ��
�� 
leng n o    ���� 
0 symbol  ��   " m    	 o o�                                                                                  DfaB  alis    6  Macintosh HD               �t��BD ����JSON Helper.app                                                ����܍<�        ����  
 cu             Applications  /:Applications:JSON Helper.app/      J S O N   H e l p e r . a p p    M a c i n t o s h   H D  Applications/JSON Helper.app  / ��      p q p L   S U r r o   S T���� 0 newlist   q  s�� s l  V V��������  ��  ��  ��    R      ������
�� .ascrerr ****      � ****��  ��    k   _ � t t  u v u l  _ _�� w x��   w  log the error message    x � y y * l o g   t h e   e r r o r   m e s s a g e v  z { z r   _ b | } | m   _ ` ~ ~ �   B h t t p s : / / w w w . g o l d a p i . i o / a p i / s t a t u s } o      ���� 0 theurl1 theURL1 {  � � � r   c h � � � b   c f � � � m   c d � � � � �   x - a c c e s s - t o k e n :   � o   d e���� 0 apikey apiKey � o      ���� 0 theurl2 theURL2 �  � � � r   i | � � � I  i z�� ���
�� .sysoexecTEXT���     TEXT � b   i v � � � b   i r � � � b   i n � � � m   i j � � � � �  c u r l   - X   G E T   � n   j m � � � 1   k m��
�� 
strq � o   j k���� 0 theurl1 theURL1 � m   n q � � � � �    - H   � n   r u � � � 1   s u��
�� 
strq � o   r s���� 0 theurl2 theURL2��   � o      ���� 0 theurl theURL �  ��� � I  } ��� ���
�� .ascrcmnt****      � **** � o   } ~���� 0 theurl theURL��  ��     ��� � l  � ���������  ��  ��  ��     ��� � l      �� � ���   ��� -- alternative
--https://metalpriceapi.com/dashboard

	set apiKey to "fbeed8680a03b295b874946c3c965e73"
try	
	tell application "JSON Helper"
		set theURL to "https://api.metalpriceapi.com/v1/latest?api_key=" & apiKey & "&base=USD&currencies=EUR,XAU,XAG"
		set mylist to do shell script "curl -s GET " & quoted form of theURL
		log mylist
	end tell
on error
	set mylist to "https://api.metalpriceapi.com/v1/status"
end try
    � � � �N   - -   a l t e r n a t i v e 
 - - h t t p s : / / m e t a l p r i c e a p i . c o m / d a s h b o a r d 
 
 	 s e t   a p i K e y   t o   " f b e e d 8 6 8 0 a 0 3 b 2 9 5 b 8 7 4 9 4 6 c 3 c 9 6 5 e 7 3 " 
 t r y 	 
 	 t e l l   a p p l i c a t i o n   " J S O N   H e l p e r " 
 	 	 s e t   t h e U R L   t o   " h t t p s : / / a p i . m e t a l p r i c e a p i . c o m / v 1 / l a t e s t ? a p i _ k e y = "   &   a p i K e y   &   " & b a s e = U S D & c u r r e n c i e s = E U R , X A U , X A G " 
 	 	 s e t   m y l i s t   t o   d o   s h e l l   s c r i p t   " c u r l   - s   G E T   "   &   q u o t e d   f o r m   o f   t h e U R L 
 	 	 l o g   m y l i s t 
 	 e n d   t e l l 
 o n   e r r o r 
 	 s e t   m y l i s t   t o   " h t t p s : / / a p i . m e t a l p r i c e a p i . c o m / v 1 / s t a t u s " 
 e n d   t r y 
��       �� � ���   � ���� 0 
jsonhelper 
JSONhelper � �� 
���� � ����� 0 
jsonhelper 
JSONhelper�� �� ���  �  ������ 
0 symbol  �� 0 apikey apiKey��   � ������������������ 
0 symbol  �� 0 apikey apiKey�� 0 newlist  �� 0 i  �� 0 theurl1 theURL1�� 0 theurl2 theURL2�� 0 theurl3 theURL3�� 0 theurl theURL �  o�� /�� 4 < P�� T�������� ~ � � ���
�� 
leng
�� 
cobj
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .DfaBrEaDnull���     ****��  ��  
�� .ascrcmnt****      � ****�� �jvE�O T� G Dk��,Ekh ��/%�%E�O�%E�O��,%�%��,%j 	E�O�kvj 
E�O��6GOP[OY��UO�OPW *X  �E�O�%E�O��,%a %��,%j 	E�O�j OPascr  ��ޭ