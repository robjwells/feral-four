FasdUAS 1.101.10   ��   ��    k             l     ��  ��    U O	St Ann's, a script file to store handlers and variables used to generate pages     � 	 	 � 	 S t   A n n ' s ,   a   s c r i p t   f i l e   t o   s t o r e   h a n d l e r s   a n d   v a r i a b l e s   u s e d   t o   g e n e r a t e   p a g e s   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    ! 	Created on			July 7th 2012     �   6 	 C r e a t e d   o n 	 	 	 J u l y   7 t h   2 0 1 2      l     ��  ��     	Last updated		     �    	 L a s t   u p d a t e d 	 	      l     ��������  ��  ��        l      ��   ��    � � Description: This is purely a reference for the handlers used in the four page-generation scripts. It�s completely inert by itself.       � ! !
   D e s c r i p t i o n :   T h i s   i s   p u r e l y   a   r e f e r e n c e   f o r   t h e   h a n d l e r s   u s e d   i n   t h e   f o u r   p a g e - g e n e r a t i o n   s c r i p t s .   I t  s   c o m p l e t e l y   i n e r t   b y   i t s e l f .     " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( D > Global variables that are needed in handlers at some point --    ) � * * |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - '  + , + p       - - ������ 0 theday theDay��   ,  . / . p       0 0 ������ 0 themonth theMonth��   /  1 2 1 p       3 3 ������ 0 thedate theDate��   2  4 5 4 p       6 6 ������ 0 theyear theYear��   5  7 8 7 p       9 9 ������ 0 months_list  ��   8  : ; : l      < = > < p       ? ? ������ 0 fileslug fileSlug��   = > 8 The short code used at the start of the new file�s name    > � @ @ p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e ;  A B A l      C D E C p       F F ������ 0 filedate fileDate��   D 5 / The short date used to name the InDesign files    E � G G ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s B  H I H l      J K L J p       M M ������ 0 pagedate pageDate��   K 6 0 The full date used in the InDesign page�s folio    L � N N `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o I  O P O l      Q R S Q p       T T ������ $0 freshpagesfolder freshPagesFolder��   R . ( Where the newly created files are saved    S � U U P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d P  V W V l      X Y Z X p       [ [ ������  0 masterdocument masterDocument��   Y * $ The actual InDesign master document    Z � \ \ H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t W  ] ^ ] l      _ ` a _ p       b b ������ 0 
mastername 
masterName��   ` C = The name of the master page/spread to be applied in InDesign    a � c c z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n ^  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j   Handler definitions --    k � l l .   H a n d l e r   d e f i n i t i o n s   - - i  m n m l     ��������  ��  ��   n  o p o l     ��������  ��  ��   p  q r q l      �� s t��   s X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	    t � u u � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	 r  v w v i      x y x I      �������� "0 create_pagedate create_pageDate��  ��   y k    � z z  { | { r     
 } ~ } J         � � � m      � � � � �  J a n u a r y �  � � � m     � � � � � 
 M a r c h �  � � � m     � � � � �  M a y �  � � � m     � � � � �  J u l y �  � � � m     � � � � �  A u g u s t �  ��� � m     � � � � �  O c t o b e r��   ~ o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths |  � � � r     � � � J     � �  � � � m     � � � � � 
 A p r i l �  � � � m     � � � � �  J u n e �  � � � m     � � � � �  S e p t e m b e r �  ��� � m     � � � � �  N o v e m b e r��   � o      ���� "0 thirtydaymonths ThirtyDayMonths �  � � � l   ��������  ��  ��   �  ��� � Z   � � � ��� � >    � � � o    ���� 0 theday theDay � m     � � � � �  S a t u r d a y � l   5 � � � � k    5 � �  � � � r    3 � � � l   / ����� � b    / � � � b    + � � � b    ' � � � b    # � � � b     � � � b     � � � o    ���� 0 theday theDay � m     � � � � �    � o    ���� 0 themonth theMonth � m    " � � � � �    � o   # &���� 0 thedate theDate � m   ' * � � � � �    � o   + .���� 0 theyear theYear��  ��   � o      ���� 0 pagedate pageDate �  ��� � l  4 4��������  ��  ��  ��   � + % Does the page date for every weekday    � � � � J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y �  � � � F   8 U � � � F   8 K � � � =  8 = � � � o   8 9���� 0 theday theDay � m   9 < � � � � �  S a t u r d a y � =  @ G � � � o   @ C���� 0 thedate theDate � m   C F � � � � �  3 0 � E  N Q � � � o   N O���� "0 thirtydaymonths ThirtyDayMonths � o   O P���� 0 themonth theMonth �  � � � l  X � � � � � k   X � � �  � � � Y   X � ��� � ��� � l  h � � � � � Z  h � � ����� � =  h r � � � n   h p � � � 4   k p�� �
�� 
cobj � o   n o���� 0 i   � o   h k���� 0 months_list   � o   p q���� 0 themonth theMonth � r   u � � � � l  u  ����� � n   u  � � � 4   x �� �
�� 
cobj � l  { ~ ����� � [   { ~ � � � o   { |���� 0 i   � m   | }���� ��  ��   � o   u x���� 0 months_list  ��  ��   � o      ���� 0 secondmonth secondMonth��  ��   � V P This repeat block here grabs the name of the next month to use in the page date    � �   �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i   � m   [ \����  � I  \ c����
�� .corecnte****       **** o   \ _���� 0 months_list  ��  ��   �  l  � � r   � � l  � �	����	 b   � �

 b   � � b   � � b   � � b   � � m   � � �   S a t u r d a y / S u n d a y   o   � ����� 0 themonth theMonth m   � � �    3 0 - o   � ����� 0 secondmonth secondMonth m   � � �    1   o   � ����� 0 theyear theYear��  ��   o      ���� 0 pagedate pageDate P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"    � �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 " �� l  � ���������  ��  ��  ��   � I C Deals with Saturdays at the end of 30-day months (uses list above)    � � �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e ) �  F   � �  F   � �!"! =  � �#$# o   � ����� 0 theday theDay$ m   � �%% �&&  S a t u r d a y" =  � �'(' o   � ����� 0 thedate theDate( m   � �)) �**  3 1  E  � �+,+ o   � ����� (0 thirtyonedaymonths ThirtyOneDayMonths, o   � ����� 0 themonth theMonth -.- l  �/01/ k   �22 343 Y   � �5��67��5 Z  � �89����8 =  � �:;: n   � �<=< 4   � ���>
�� 
cobj> o   � ����� 0 i  = o   � ����� 0 months_list  ; o   � ����� 0 themonth theMonth9 r   � �?@? l  � �A����A n   � �BCB 4   � ��D
� 
cobjD l  � �E�~�}E [   � �FGF o   � ��|�| 0 i  G m   � ��{�{ �~  �}  C o   � ��z�z 0 months_list  ��  ��  @ o      �y�y 0 secondmonth secondMonth��  ��  �� 0 i  6 m   � ��x�x 7 I  � ��wH�v
�w .corecnte****       ****H o   � ��u�u 0 months_list  �v  ��  4 IJI r   �KLK l  �M�t�sM b   �NON b   �	PQP b   �RSR b   �TUT b   � �VWV m   � �XX �YY   S a t u r d a y / S u n d a y  W o   � ��r�r 0 themonth theMonthU m   �ZZ �[[    3 1 -S o  �q�q 0 secondmonth secondMonthQ m  \\ �]]    1  O o  	�p�p 0 theyear theYear�t  �s  L o      �o�o 0 pagedate pageDateJ ^�n^ l �m�l�k�m  �l  �k  �n  0 I C Deals with Saturdays at the end of 31-day months (uses list above)   1 �__ �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e ). `a` F  5bcb F  )ded = fgf o  �j�j 0 theday theDayg m  hh �ii  S a t u r d a ye ? %jkj o  !�i�i 0 thedate theDatek m  !$ll �mm  2 7c = ,1non o  ,-�h�h 0 themonth theMontho m  -0pp �qq  F e b r u a r ya rsr l 8Mtuvt k  8Mww xyx r  8Kz{z l 8G|�g�f| b  8G}~} b  8C� b  8?��� m  8;�� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ;>�e�e 0 thedate theDate� m  ?B�� ���  - M a r c h   1  ~ o  CF�d�d 0 theyear theYear�g  �f  { o      �c�c 0 pagedate pageDatey ��b� l LL�a�`�_�a  �`  �_  �b  u { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   v ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .s ��� F  Po��� F  Pc��� = PU��� o  PQ�^�^ 0 theday theDay� m  QT�� ���  S a t u r d a y� = X_��� o  X[�]�] 0 thedate theDate� m  [^�� ���  3 1� = fk��� o  fg�\�\ 0 themonth theMonth� m  gj�� ���  D e c e m b e r� ��� l r����� k  r��� ��� r  r���� l r���[�Z� b  r���� b  r}��� b  ry��� m  ru�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  ux�Y�Y 0 theyear theYear� m  y|�� ���  -� l }���X�W� [  }���� o  }��V�V 0 theyear theYear� m  ���U�U �X  �W  �[  �Z  � o      �T�T 0 pagedate pageDate� ��S� l ���R�Q�P�R  �Q  �P  �S  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = ����� o  ���O�O 0 theday theDay� m  ���� ���  S a t u r d a y� ��N� l ������ k  ���� ��� r  ����� l ����M�L� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ���K�K 0 themonth theMonth� m  ���� ���   � o  ���J�J 0 thedate theDate� m  ���� ���  -� l ����I�H� [  ����� o  ���G�G 0 thedate theDate� m  ���F�F �I  �H  � m  ���� ���   � o  ���E�E 0 theyear theYear�M  �L  � o      �D�D 0 pagedate pageDate� ��C� l ���B�A�@�B  �A  �@  �C  � 3 - Does the page date for every normal Saturday   � ��� Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�N  ��  ��   w ��� l     �?�>�=�?  �>  �=  � ��� l     �<�;�:�<  �;  �:  � ��� l      �9���9  � @ :	Create the short date to name the created InDesign files	   � ��� t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	� ��� i    ��� I      �8�7�6�8 "0 create_filedate create_fileDate�7  �6  � k     [�� ��� Z     ���5�� A    ��� c     ��� o     �4�4 0 thedate theDate� m    �3
�3 
long� m    �� ���  1 0� l   ���� r    ��� l   ��2�1� b    � � m    	 �  0  o   	 
�0�0 0 thedate theDate�2  �1  � o      �/�/ 0 numdate numDate� L F If the date is 1-10 this adds an initial zero to use in the file name   � � �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�5  � r     o    �.�. 0 thedate theDate o      �-�- 0 numdate numDate�  l   �,�+�*�,  �+  �*   	 Y    7
�)�(
 l  " 2 Z  " 2�'�& =  " ( n   " & 4   # &�%
�% 
cobj o   $ %�$�$ 0 i   o   " #�#�# 0 months_list   o   & '�"�" 0 themonth theMonth r   + . o   + ,�!�! 0 i   o      � �  0 raw_nummonth raw_numMonth�'  �&   d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name    � �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�) 0 i   m    ��  I   ��
� .corecnte****       **** o    �� 0 months_list  �  �(  	  Z   8 I� A  8 ; !  o   8 9�� 0 raw_nummonth raw_numMonth! m   9 :�� 
 r   > C"#" l  > A$��$ b   > A%&% m   > ?'' �((  0& o   ? @�� 0 raw_nummonth raw_numMonth�  �  # o      �� 0 nummonth numMonth�   r   F I)*) o   F G�� 0 raw_nummonth raw_numMonth* o      �� 0 nummonth numMonth +,+ l  J J����  �  �  , -�- l  J [./0. r   J [121 l  J Y3��3 b   J Y454 b   J M676 o   J K�� 0 numdate numDate7 o   K L�� 0 nummonth numMonth5 l  M X8�
�	8 n   M X9:9 7 N X�;<
� 
ctxt; m   R T�� < m   U W�� : o   M N�� 0 theyear theYear�
  �	  �  �  2 o      �� 0 filedate fileDate/ Z T This combines the date, month and last two digits of the year to create a file name   0 �== �   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r   t o   c r e a t e   a   f i l e   n a m e�  � >?> l     ����  �  �  ? @A@ l     � �����   ��  ��  A BCB l      ��DE��  D ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   E �FF � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	C GHG i    IJI I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  J O     cKLK O    bMNM k   
 aOO PQP r   
 RSR 4   
 ��T
�� 
msprT o    ���� 0 
mastername 
masterNameS n      UVU 1    ��
�� 
pmasV 4    ��W
�� 
pageW m    ���� Q XYX I   &��Z[
�� .InESovrrobj         obj Z n    \]\ 4    ��^
�� 
txtf^ m    __ �``  E d i t i o n   d a t e] 4    ��a
�� 
mspra o    ���� 0 
mastername 
masterName[ ��b��
�� 
dPgeb 4    "��c
�� 
pagec m     !���� ��  Y ded r   ' 2fgf o   ' (���� 0 pagedate pageDateg l     h����h n      iji 1   / 1��
�� 
pcntj n   ( /klk 4   , /��m
�� 
txtfm m   - .nn �oo  E d i t i o n   d a t el 4   ( ,��p
�� 
pagep m   * +���� ��  ��  e q��q Q   3 ars��r I  6 X��tu
�� .InESovrrobj         obj t l  6 Ov����v 6  6 Owxw n   6 >yzy 2   < >��
�� 
cobjz n   6 <{|{ 1   : <��
�� 
mpgs| 4   6 :��}
�� 
page} m   8 9���� x =  ? N~~ n  @ H��� 1   D H��
�� 
pnam� 1   @ D��
�� 
pilr m   I M�� ���  W o r k��  ��  u �����
�� 
dPge� 4   P T���
�� 
page� m   R S���� ��  s R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  N l   ������ 1    ��
�� 
pacd��  ��  L m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  H ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   � ��� � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	� ��� i    ��� I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  � O     ���� O    ���� k   
 ��� ��� I  
 �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
sprd� �����
�� 
prdt� K    �� �����
�� 
pmas� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName��  ��  � ��� I   *����
�� .InESovrrobj         obj � n    !��� 4    !���
�� 
txtf� m     �� ���  L - E d i t i o n   d a t e� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4   " &���
�� 
page� m   $ %���� ��  � ��� I  + ;����
�� .InESovrrobj         obj � n   + 2��� 4   / 2���
�� 
txtf� m   0 1�� ���  R - E d i t i o n   d a t e� 4   + /���
�� 
mspr� o   - .���� 0 
mastername 
masterName� �����
�� 
dPge� 4   3 7���
�� 
page� m   5 6���� ��  � ��� r   < M��� o   < ?���� 0 pagedate pageDate� l     ������ n      ��� 1   H L��
�� 
pcnt� n   ? H��� 4   C H���
�� 
txtf� m   D G�� ���  L - E d i t i o n   d a t e� 4   ? C���
�� 
page� m   A B���� ��  ��  � ��� r   N _��� o   N Q���� 0 pagedate pageDate� l     ������ n      ��� 1   Z ^��
�� 
pcnt� n   Q Z��� 4   U Z���
�� 
txtf� m   V Y�� ���  R - E d i t i o n   d a t e� 4   Q U���
�� 
page� m   S T���� ��  ��  � ���� Q   ` ������ k   c ��� ��� I  c �����
�� .InESovrrobj         obj � l  c ������� 6  c ���� n   c o��� 2   k o��
�� 
cobj� n   c k��� 1   g k��
�� 
mpgs� 4   c g���
�� 
page� m   e f���� � =  r ���� n  s {��� 1   w {��
�� 
pnam� 1   s w��
�� 
pilr� m   | ��� ���  W o r k��  ��  � �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  � ���� I  � �����
�� .InESovrrobj         obj � l  � ������� 6  � ���� n   � ���� 2   � ���
�� 
cobj� n   � ���� 1   � ���
�� 
mpgs� 4   � ����
�� 
page� m   � ����� � =  � ���� n  � ���� 1   � ���
�� 
pnam� 1   � ���
�� 
pilr� m   � ��� ���  W o r k��  ��  � �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  ��  � R      �����
�� .ascrerr ****      � ****��  �  ��  ��  � l    �~�}  1    �|
�| 
pacd�~  �}  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     �{�z�y�{  �z  �y    l     �x�w�v�x  �w  �v    l      �u	�u   � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   	 �

 � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	  i     I      �t�s�t 20 changepagenumber_single changePageNumber_single �r o      �q�q 0 
pagenumber 
pageNumber�r  �s   O     ( O    ' k   
 &  I  
 �p
�p .InESovrrobj         obj  n   
  4    �o
�o 
txtf m     �  P a g e   n u m b e r 4   
 �n
�n 
mspr o    �m�m 0 
mastername 
masterName �l �k
�l 
dPge  4    �j!
�j 
page! m    �i�i �k   "�h" r    &#$# o    �g�g 0 
pagenumber 
pageNumber$ l     %�f�e% n      &'& 1   # %�d
�d 
pcnt' n    #()( 4     #�c*
�c 
txtf* m   ! "++ �,,  P a g e   n u m b e r) 4     �b-
�b 
page- m    �a�a �f  �e  �h   l   .�`�_. 1    �^
�^ 
pacd�`  �_   m     //�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   010 l     �]�\�[�]  �\  �[  1 232 l     �Z�Y�X�Z  �Y  �X  3 454 l      �W67�W  6 � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   7 �888 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	5 9:9 i    ;<; I      �V=�U�V 20 changepagenumber_spread changePageNumber_spread= >�T> o      �S�S  0 leftpagenumber leftPageNumber�T  �U  < O     I?@? O    HABA k   
 GCC DED I  
 �RFG
�R .InESovrrobj         obj F n   
 HIH 4    �QJ
�Q 
txtfJ m    KK �LL  L - P a g e   n u m b e rI 4   
 �PM
�P 
msprM o    �O�O 0 
mastername 
masterNameG �NN�M
�N 
dPgeN 4    �LO
�L 
pageO m    �K�K �M  E PQP I   +�JRS
�J .InESovrrobj         obj R n    "TUT 4    "�IV
�I 
txtfV m     !WW �XX  R - P a g e   n u m b e rU 4    �HY
�H 
msprY o    �G�G 0 
mastername 
masterNameS �FZ�E
�F 
dPgeZ 4   # '�D[
�D 
page[ m   % &�C�C �E  Q \]\ r   , 7^_^ o   , -�B�B  0 leftpagenumber leftPageNumber_ l     `�A�@` n      aba 1   4 6�?
�? 
pcntb n   - 4cdc 4   1 4�>e
�> 
txtfe m   2 3ff �gg  L - P a g e   n u m b e rd 4   - 1�=h
�= 
pageh m   / 0�<�< �A  �@  ] i�;i r   8 Gjkj l  8 =l�:�9l c   8 =mnm l  8 ;o�8�7o [   8 ;pqp o   8 9�6�6  0 leftpagenumber leftPageNumberq m   9 :�5�5 �8  �7  n m   ; <�4
�4 
TEXT�:  �9  k l     r�3�2r n      sts 1   D F�1
�1 
pcntt n   = Duvu 4   A D�0w
�0 
txtfw m   B Cxx �yy  R - P a g e   n u m b e rv 4   = A�/z
�/ 
pagez m   ? @�.�. �3  �2  �;  B l   {�-�,{ 1    �+
�+ 
pacd�-  �,  @ m     ||�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  : }~} l     �*�)�(�*  �)  �(  ~ � l      �'���'  � � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    ��� I      �&�%�$�& 0 clean_save_l clean_save_L�%  �$  � O     >��� O    =��� k   
 <�� ��� r   
 ��� m   
 �#
�# boovtrue� n      ��� 1    �"
�" 
plck� 4    �!�
�! 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    � 
�  boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     �
� 
pacl� ��� r   " *��� J   " &�� ��� m   " #�� @.      � ��� m   # $�� @&      �  � l     ���� 1   & )�
� 
zero�  �  � ��� I  + <���
� .CoResavedocu        obj �  � ���
� 
kfil� b   - 8��� b   - 4��� b   - 2��� b   - 0��� o   - .�� $0 freshpagesfolder freshPagesFolder� o   . /�� 0 fileslug fileSlug� m   0 1�� ���  _� o   2 3�� 0 filedate fileDate� m   4 7�� ��� 
 . i n d d�  �  � l   ���� 1    �
� 
pacd�  �  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ����  �  �  � ��� l     �
�	��
  �	  �  � ��� l      ����  � � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    ��� I      ���� 0 clean_save_r clean_save_R�  �  � O     >��� O    =��� k   
 <�� ��� r   
 ��� m   
 �
� boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    � 
�  boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     ��
�� 
pacl� ��� r   " *��� J   " &�� ��� m   " #�� @"      � ���� m   # $�� @&      ��  � l     ������ 1   & )��
�� 
zero��  ��  � ���� I  + <�����
�� .CoResavedocu        obj ��  � �����
�� 
kfil� b   - 8��� b   - 4��� b   - 2��� b   - 0� � o   - .���� $0 freshpagesfolder freshPagesFolder  o   . /���� 0 fileslug fileSlug� m   0 1 �  _� o   2 3���� 0 filedate fileDate� m   4 7 � 
 . i n d d��  ��  � l   ���� 1    ��
�� 
pacd��  ��  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     ��������  ��  ��   	
	 l     ��������  ��  ��  
  l      ����   � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13 (TV), which have the legal date on weekdays.	    � 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3   ( T V ) ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s . 	  i     # I      �������� (0 changelegaldate_12 changeLegalDate_12��  ��   O     ( O    ' k   
 &  I  
 ��
�� .InESovrrobj         obj  n   
  4    ��
�� 
txtf m       �!!  L e g a l   d a t e 4   
 ��"
�� 
mspr" o    ���� 0 
mastername 
masterName ��#��
�� 
dPge# 4    ��$
�� 
page$ m    ���� ��   %��% r    &&'& o    ���� 0 pagedate pageDate' l     (����( n      )*) 1   # %��
�� 
pcnt* n    #+,+ 4     #��-
�� 
txtf- m   ! ".. �//  L e g a l   d a t e, 4     ��0
�� 
page0 m    ���� ��  ��  ��   l   1����1 1    ��
�� 
pacd��  ��   m     22�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   343 l     ��������  ��  ��  4 565 l      ��78��  7 � �	Changes the legal date on a left-hand single page - it�s designed for the Red List page (20), which has the legal date at weekends.	   8 �99
 	 C h a n g e s   t h e   l e g a l   d a t e   o n   a   l e f t - h a n d   s i n g l e   p a g e   -   i t  s   d e s i g n e d   f o r   t h e   R e d   L i s t   p a g e   ( 2 0 ) ,   w h i c h   h a s   t h e   l e g a l   d a t e   a t   w e e k e n d s . 	6 :;: i   $ '<=< I      �������� (0 changelegaldate_20 changeLegalDate_20��  ��  = O     (>?> O    '@A@ k   
 &BB CDC I  
 ��EF
�� .InESovrrobj         obj E n   
 GHG 4    ��I
�� 
txtfI m    JJ �KK  L e g a l   d a t eH 4   
 ��L
�� 
msprL o    ���� 0 
mastername 
masterNameF ��M��
�� 
dPgeM 4    ��N
�� 
pageN m    ���� ��  D O��O r    &PQP o    ���� 0 pagedate pageDateQ l     R����R n      STS 1   # %��
�� 
pcntT n    #UVU 4     #��W
�� 
txtfW m   ! "XX �YY  L e g a l   d a t eV 4     ��Z
�� 
pageZ m    ���� ��  ��  ��  A l   [����[ 1    ��
�� 
pacd��  ��  ? m     \\�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ; ]^] l     ��������  ��  ��  ^ _`_ l     ��������  ��  ��  ` aba l      ��cd��  c t n	Creates an embargoed stories text frame to the left-hand side of the working page (1 if single, 2 if spread)	   d �ee � 	 C r e a t e s   a n   e m b a r g o e d   s t o r i e s   t e x t   f r a m e   t o   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e   ( 1   i f   s i n g l e ,   2   i f   s p r e a d ) 	b f��f i   ( +ghg I      ��������  0 drawembargobox drawEmbargoBox��  ��  h O     �iji O    �klk Z    �mno��m =   pqp l   r����r I   ��s��
�� .corecnte****       ****s 2   ��
�� 
page��  ��  ��  q m    ���� n k    Ktt uvu O    4wxw r    3yzy I   1����{
�� .corecrel****      � null��  { ��|}
�� 
kocl| m     !��
�� 
txtf} ��~��
�� 
prdt~ K   " - ����
�� 
gbnd� J   # )�� ��� m   # $�� @,      � ��� m   $ %�� �b�     � ��� m   % &�� @\�     � ���� m   & '�� �I      ��  � �����
�� 
pcnt� m   * +�� ��� " E m b a r g o e d   s t o r i e s��  ��  z o      ���� 0 ebox eBoxx 4    ���
�� 
page� m    ���� v ��� l  5 C���� r   5 C��� 4   5 =���
�� 
ObSt� m   9 <�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   > B��
�� 
aobs� o   = >���� 0 ebox eBox��  ��  � K E This causes an error if you try to set it when the frame is created.   � ��� �   T h i s   c a u s e s   a n   e r r o r   i f   y o u   t r y   t o   s e t   i t   w h e n   t h e   f r a m e   i s   c r e a t e d .� ���� r   D K��� m   D E��
�� boovtrue� n      ��� 1   F J��
�� 
plck� o   E F���� 0 ebox eBox��  o ��� =  N W��� l  N U������ I  N U�����
�� .corecnte****       ****� 2  N Q��
�� 
page��  ��  ��  � m   U V���� � ���� k   Z ��� ��� O   Z y��� r   a x��� I  a v�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   c d��
�� 
txtf� �����
�� 
prdt� K   e r�� ����
�� 
gbnd� J   f l�� ��� m   f g�� @,      � ��� m   g h�� �b�     � ��� m   h i�� @\�     � ���� m   i j�� �I      ��  � ���~
� 
pcnt� m   m p�� ��� " E m b a r g o e d   s t o r i e s�~  ��  � o      �}�} 0 ebox eBox� 4   Z ^�|�
�| 
page� m   \ ]�{�{ � ��� r   z ���� 4   z ��z�
�z 
ObSt� m   ~ ��� ��� " N e w s   N I B   b o x   t i n t� l     ��y�x� n      ��� 1   � ��w
�w 
aobs� o   � ��v�v 0 ebox eBox�y  �x  � ��u� r   � ���� m   � ��t
�t boovtrue� n      ��� 1   � ��s
�s 
plck� o   � ��r�r 0 ebox eBox�u  ��  ��  l l   ��q�p� 4   �o�
�o 
docu� m    �n�n �q  �p  j m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��       �m�������������m  � �l�k�j�i�h�g�f�e�d�c�b�l "0 create_pagedate create_pageDate�k "0 create_filedate create_fileDate�j >0 applymaster_changedate_single applyMaster_changeDate_single�i >0 applymaster_changedate_spread applyMaster_changeDate_spread�h 20 changepagenumber_single changePageNumber_single�g 20 changepagenumber_spread changePageNumber_spread�f 0 clean_save_l clean_save_L�e 0 clean_save_r clean_save_R�d (0 changelegaldate_12 changeLegalDate_12�c (0 changelegaldate_20 changeLegalDate_20�b  0 drawembargobox drawEmbargoBox� �a y�`�_���^�a "0 create_pagedate create_pageDate�`  �_  � �]�\�[�Z�] (0 thirtyonedaymonths ThirtyOneDayMonths�\ "0 thirtydaymonths ThirtyDayMonths�[ 0 i  �Z 0 secondmonth secondMonth� 2 � � � � � ��Y � � � ��X�W � ��V ��U ��T�S � ��R�Q�P�O%)XZ\hlp�������������Y �X �W 0 theday theDay�V 0 themonth theMonth�U 0 thedate theDate�T 0 theyear theYear�S 0 pagedate pageDate
�R 
bool�Q 0 months_list  
�P .corecnte****       ****
�O 
cobj�^��������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h� �N��M�L���K�N "0 create_filedate create_fileDate�M  �L  � �J�I�H�G�J 0 numdate numDate�I 0 i  �H 0 raw_nummonth raw_numMonth�G 0 nummonth numMonth� �F�E��D�C�B�A�@'�?�>�=�<�F 0 thedate theDate
�E 
long�D 0 months_list  
�C .corecnte****       ****
�B 
cobj�A 0 themonth theMonth�@ 
�? 0 theyear theYear
�> 
ctxt�= �< 0 filedate fileDate�K \��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�� �;J�:�9���8�; >0 applymaster_changedate_single applyMaster_changeDate_single�:  �9  �  � ��7�6�5�4�3�2_�1�0�/n�.�-�,��+�*��)�(
�7 
pacd
�6 
mspr�5 0 
mastername 
masterName
�4 
page
�3 
pmas
�2 
txtf
�1 
dPge
�0 .InESovrrobj         obj �/ 0 pagedate pageDate
�. 
pcnt
�- 
mpgs
�, 
cobj�  
�+ 
pilr
�* 
pnam�)  �(  �8 d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU� �'��&�%���$�' >0 applymaster_changedate_spread applyMaster_changeDate_spread�&  �%  �  � �#�"�!� ������������������������
�# 
pacd
�" 
kocl
�! 
sprd
�  
prdt
� 
pmas
� 
mspr� 0 
mastername 
masterName� 
� .corecrel****      � null
� 
txtf
� 
dPge
� 
page
� .InESovrrobj         obj � 0 pagedate pageDate
� 
pcnt
� 
mpgs
� 
cobj
� 
pilr
� 
pnam�  �  �$ �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU� ������� 20 changepagenumber_single changePageNumber_single� �
��
 �  �	�	 0 
pagenumber 
pageNumber�  � �� 0 
pagenumber 
pageNumber� /�������+� 
� 
pacd
� 
mspr� 0 
mastername 
masterName
� 
txtf
� 
dPge
� 
page
� .InESovrrobj         obj 
�  
pcnt� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU� ��<���������� 20 changepagenumber_spread changePageNumber_spread�� ����� �  ����  0 leftpagenumber leftPageNumber��  � ����  0 leftpagenumber leftPageNumber� |��������K������Wf����x
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj 
�� 
pcnt
�� 
TEXT�� J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU� ������������� 0 clean_save_l clean_save_L��  ��  �  � ����������������������������
�� 
pacd
�� 
layr
�� 
plck
�� 
pacl
�� 
zero
�� 
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU� ������������� 0 clean_save_r clean_save_R��  ��  �  � �������������������������
�� 
pacd
�� 
layr
�� 
plck
�� 
pacl
�� 
zero
�� 
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU� ������������ (0 changelegaldate_12 changeLegalDate_12��  ��  �  � 2�������� ��������.��
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� )� %*�, *��/��/�*�l/l O�*�l/��/�,FUU� ��=���������� (0 changelegaldate_20 changeLegalDate_20��  ��  �  � \��������J��������X��
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU� ��h����� ����  0 drawembargobox drawEmbargoBox��  ��  � ���� 0 ebox eBox  �����������������������������������
�� 
docu
�� 
page
�� .corecnte****       ****
�� 
kocl
�� 
txtf
�� 
prdt
�� 
gbnd�� 
�� 
pcnt
�� .corecrel****      � null
�� 
ObSt
�� 
aobs
�� 
plck�� �� �*�k/ �*�-j k  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY H*�-j m  ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUUascr  ��ޭ