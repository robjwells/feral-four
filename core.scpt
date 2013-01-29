FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			15/12/2012     �   0 	 C r e a t e d   o n 	 	 	 1 5 / 1 2 / 2 0 1 2      l     ��  ��      	Last updated			20/01/2013     �   4 	 L a s t   u p d a t e d 	 	 	 2 0 / 0 1 / 2 0 1 3      l     ��  ��     	Version:			1.8     �    	 V e r s i o n : 	 	 	 1 . 8     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ]   Running code --    ^ � _ _     R u n n i n g   c o d e   - - \  ` a ` l     b c d b O     e f e r     g h g m    ��
�� elnteNvr h n       i j i 1    
��
�� 
UIAc j 1    ��
�� 
pScr f m      k k�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   c $  Suppresses dialogs and alerts    d � l l <   S u p p r e s s e s   d i a l o g s   a n d   a l e r t s a  m n m l    o p q o I    �� r���� 0 	genprompt 	genPrompt r  s�� s m     t t � u u  ��  ��   p h b Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call    q � v v �   D e s k   n a m e   ( N e w s ,   F e a t u r e s ,   S p o r t ,   A r t s   o r   C u s t o m   e d i t i o n )   g o e s   i n   t h e   q u o t e s   i n   t h i s   h a n d l e r   c a l l n  w x w l     y���� y O     z { z r     | } | m    ��
�� elnteInA } n       ~  ~ 1    ��
�� 
UIAc  1    ��
�� 
pScr { m     � ��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��   x  � � � l  ! 5 ����� � O   ! 5 � � � k   % 4 � �  � � � I  % *������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  + 4�� ���
�� .aevtodocnull  �    alis � o   + 0���� $0 freshpagesfolder freshPagesFolder��  ��   � m   ! " � ��                                                                                  MACS  alis    Z  SSD                        �@��H+  ƹ
Finder.app                                                     ���ۢ        ����  	                CoreServices    �@��      �͒    ƹƳƲ  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i    	 � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k     � �  � � � Z      � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l    � � � � r     � � � c     � � � l    ����� � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � �  N e w s �  � � � m     � � � � �  F e a t u r e s �  � � � m    	 � � � � � 
 S p o r t �  � � � m   	 
 � � � � �  A r t s �  ��� � m   
  � � � � �  C u s t o m   e d i t i o n��   � �� � �
�� 
prmp � m     � � � � � & P l e a s e   p i c k   a   d e s k : � �� ���
�� 
appr � m     � � � � �  P a g e   g e n e r a t o r��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 desk   � F @ Allows core.scpt to be used as a generator (useful for testing)    � � � � �   A l l o w s   c o r e . s c p t   t o   b e   u s e d   a s   a   g e n e r a t o r   ( u s e f u l   f o r   t e s t i n g )��  ��   �  � � � l   ��������  ��  ��   �  � � � r    D � � � J    B � �  � � � m     � � � � �  J a n u a r y �  � � � m      � � � � �  F e b r u a r y �  � � � m     # � � � � � 
 M a r c h �  � � � m   # & � � � � � 
 A p r i l �  � � � m   & ) � � � � �  M a y �  � � � m   ) , � � � � �  J u n e �  � � � m   , / � � � � �  J u l y �  � � � m   / 2 � � � � �  A u g u s t �  � � � m   2 5 � � � � �  S e p t e m b e r �  � � � m   5 8 � � � � �  O c t o b e r �    m   8 ; �  N o v e m b e r �� m   ; > �  D e c e m b e r��   � o      ���� 0 months_list   �  r   E ]	
	 J   E [  m   E H �  M o n d a y  m   H K �  T u e s d a y  m   K N �  W e d n e s d a y  m   N Q �  T h u r s d a y  m   Q T �  F r i d a y  ��  m   T W!! �""  S a t u r d a y��  
 o      ���� 0 	days_list   #$# l  ^ ^��������  ��  ��  $ %&% Z   ^�'()��' G   ^ {*+* G   ^ o,-, =  ^ c./. o   ^ _���� 0 desk  / m   _ b00 �11  N e w s- =  f k232 o   f g���� 0 desk  3 m   g j44 �55 
 S p o r t+ =  r w676 o   r s���� 0 desk  7 m   s v88 �99  C u s t o m   e d i t i o n( l  ~:;<: Z   ~=>?��= =  ~ �@A@ o   ~ ���� 0 desk  A m    �BB �CC  N e w s> k   � �DD EFE l  � �GHIG r   � �JKJ m   � �LL �MM ( N e w s   p a g e s   g e n e r a t o rK o      ���� 0 thetitle theTitleH ) # Used to add a title to the prompts   I �NN F   U s e d   t o   a d d   a   t i t l e   t o   t h e   p r o m p t sF OPO r   � �QRQ J   � �SS TUT m   � �VV �WW  N e w s   p a g e sU XYX m   � �ZZ �[[  T VY \��\ m   � �]] �^^  L e t t e r s��  R o      ���� 0 weekday_pages  P _��_ r   � �`a` J   � �bb cdc m   � �ee �ff  N e w s   p a g e sd ghg m   � �ii �jj  T Vh klk m   � �mm �nn  L e t t e r sl opo m   � �qq �rr  S t r u g g l ep s��s m   � �tt �uu  R e d   L i s t��  a o      ���� 0 weekend_pages  ��  ? vwv =  � �xyx o   � ����� 0 desk  y m   � �zz �{{ 
 S p o r tw |}| k   � �~~ � r   � ���� m   � ��� ��� * S p o r t   p a g e s   g e n e r a t o r� o      ���� 0 thetitle theTitle� ��� r   � ���� J   � ��� ��� m   � ��� ���  T w o   p a g e s� ��� m   � ��� ���  T h r e e   p a g e s� ��� m   � ��� ��� , T h r e e   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  � o      ���� 0 weekday_pages  � ���� r   � ���� J   � ��� ��� m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  � o      ���� 0 weekend_pages  ��  } ��� =  � ���� l  � ������� o   � ����� 0 desk  ��  ��  � m   � ��� ���  C u s t o m   e d i t i o n� ���� r   � ���� m   � ��� ���  C u s t o m   e d i t i o n� o      ���� 0 thetitle theTitle��  ��  ; @ : This if block sets the page options presented to the user   < ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r) ��� G  ��� = ��� o  ���� 0 desk  � m  
�� ���  F e a t u r e s� = ��� o  ���� 0 desk  � m  �� ���  A r t s� ���� k  ��� ��� l  ���� r   ��� m  �� ��� , N o   d a y      w o r k i n g   a h e a d� l     ������ n      ���  ;  � o  ���� 0 	days_list  ��  ��  � > 8 Adds an extra day option that news and sport don't need   � ��� p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� ���� Z  !������� = !&��� o  !"���� 0 desk  � m  "%�� ���  F e a t u r e s� k  )��� ��� r  ).��� m  ),�� ��� 0 F e a t u r e s   p a g e s   g e n e r a t o r� o      ���� 0 thetitle theTitle� ��� r  /G��� J  /E�� ��� m  /2�� ���  S p r e a d� ��� m  25�� ���  1 0�    m  58 � 
 1 2 - 1 3  m  8; �  L e t t e r s 	 m  ;>

 �  A r t s	 �� m  >A �  A r t s   s p l i t��  � o      �� 0 weekday_pages  �  r  H` J  H^  m  HK �  S p r e a d  m  KN � ( N e w s   r e v i e w s      s p l i t  m  NQ � , N e w s   r e v i e w s      s i n g l e s  !  m  QT"" �##  1 5! $%$ m  TW&& �'' 
 1 6 - 1 7% (�~( m  WZ)) �**  L e t t e r s�~   o      �}�} 0 weekend_pages   +�|+ r  a�,-, J  a�.. /0/ m  ad11 �22  S p r e a d0 343 m  dg55 �66  1 04 787 m  gj99 �:: 
 1 2 - 1 38 ;<; m  jm== �>> ( N e w s   r e v i e w s      s p l i t< ?@? m  mpAA �BB , N e w s   r e v i e w s      s i n g l e s@ CDC m  psEE �FF  1 5D GHG m  svII �JJ 
 1 6 - 1 7H KLK m  vyMM �NN  L e t t e r sL OPO m  y|QQ �RR  A r t sP S�{S m  |TT �UU  A r t s   s p l i t�{  - o      �z�z 0 ahead_pages  �|  � VWV = ��XYX o  ���y�y 0 desk  Y m  ��ZZ �[[  A r t sW \�x\ k  ��]] ^_^ r  ��`a` m  ��bb �cc ( A r t s   p a g e s   g e n e r a t o ra o      �w�w 0 thetitle theTitle_ ded r  ��fgf J  ��hh iji m  ��kk �ll  A r t s   ( p 1 1 )j m�vm m  ��nn �oo  A r t s   s p l i t�v  g o      �u�u 0 weekday_pages  e p�tp r  ��qrq J  ��ss tut m  ��vv �ww  A r t s   ( p 1 1 )u xyx m  ��zz �{{  A r t s   s p l i ty |�s| m  ��}} �~~  1 6 - 1 7   ( w e e k e n d )�s  r o      �r�r 0 ahead_pages  �t  �x  ��  ��  ��  ��  & � l ���q�p�o�q  �p  �o  � ��� l ���n���n  � F @ Get 'tomorrow' values to use as default answers in date prompts   � ��� �   G e t   ' t o m o r r o w '   v a l u e s   t o   u s e   a s   d e f a u l t   a n s w e r s   i n   d a t e   p r o m p t s� ��� l ������ r  ����� l ����m�l� [  ����� l ����k�j� l ����i�h� I ���g�f�e
�g .misccurdldt    ��� null�f  �e  �i  �h  �k  �j  � m  ���d�d  Q��m  �l  � o      �c�c 0 tomorrow  �   60s * 60m * 24h   � ���     6 0 s   *   6 0 m   *   2 4 h� ��� l ������ r  ����� J  ���� ��b� l ����a�`� c  ����� n ����� m  ���_
�_ 
wkdy� o  ���^�^ 0 tomorrow  � m  ���]
�] 
TEXT�a  �`  �b  � o      �\�\ 0 tmday tmDay� C = "Choose from list" requires a list for its default selection   � ��� z   " C h o o s e   f r o m   l i s t "   r e q u i r e s   a   l i s t   f o r   i t s   d e f a u l t   s e l e c t i o n� ��� r  ����� n ����� 1  ���[
�[ 
day � o  ���Z�Z 0 tomorrow  � o      �Y�Y 0 tmdate tmDate� ��� r  ����� J  ���� ��X� l ����W�V� c  ����� n ����� m  ���U
�U 
mnth� o  ���T�T 0 tomorrow  � m  ���S
�S 
TEXT�W  �V  �X  � o      �R�R 0 tmmonth tmMonth� ��� r  ����� n ����� 1  ���Q
�Q 
year� o  ���P�P 0 tomorrow  � o      �O�O 0 tmyear tmYear� ��� l ���N�M�L�N  �M  �L  � ��� l ���K���K  � ( " Prompt the user to enter the date   � ��� D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e� ��� r  � ��� c  ����� l ����J�I� I ���H��
�H .gtqpchltns    @   @ ns  � o  ���G�G 0 	days_list  � �F��
�F 
prmp� m  ���� ��� 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :� �E��
�E 
inSL� o  ���D�D 0 tmday tmDay� �C��B
�C 
appr� o  ���A�A 0 thetitle theTitle�B  �J  �I  � m  ���@
�@ 
TEXT� o      �?�? 0 theday theDay� ��� l ���� Z ���>�=� = ��� 1  �<
�< 
rslt� m  �� ��� 
 f a l s e� R  �;�:�
�; .ascrerr ****      � ****�:  � �9��8
�9 
errn� m  �7�7���8  �>  �=  � 9 3 So choosing "Cancel" in the dialog ends the script   � ��� f   S o   c h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� Z  ����6�� = ��� o  �5�5 0 theday theDay� m  �� ��� , N o   d a y      w o r k i n g   a h e a d� k  "1�� ��� r  ")��� m  "%�� ��� * A   d a t e   n e e d s   e n t e r i n g� o      �4�4 0 pagedate pageDate� ��3� r  *1��� m  *-�� ��� 
 A h e a d� o      �2�2 0 filedate fileDate�3  �6  � k  4��� ��� r  4I��� c  4G��� l 4E��1�0� I 4E�/��
�/ .gtqpchltns    @   @ ns  � o  45�.�. 0 months_list  � �-��
�- 
prmp� m  69�� �   , P l e a s e   p i c k   t h e   m o n t h :� �,
�, 
inSL o  <=�+�+ 0 tmmonth tmMonth �*�)
�* 
appr o  >?�(�( 0 thetitle theTitle�)  �1  �0  � m  EF�'
�' 
TEXT� o      �&�& 0 themonth theMonth�  Z Jb�%�$ = JQ	 1  JM�#
�# 
rslt	 m  MP

 � 
 f a l s e R  T^�"�!
�" .ascrerr ****      � ****�!   � �
�  
errn m  X[�����  �%  �$    r  cx c  cv l ct�� n  ct 1  pt�
� 
ttxt l cp�� I cp�
� .sysodlogaskr        TEXT m  cf � * P l e a s e   t y p e   t h e   d a t e : �
� 
dtxt o  ij�� 0 tmdate tmDate ��
� 
appr o  kl�� 0 thetitle theTitle�  �  �  �  �   m  tu�
� 
TEXT o      �� 0 thedate theDate   Z y�!"��! = y�#$# 1  y|�
� 
rslt$ m  |%% �&& 
 f a l s e" R  ����'
� .ascrerr ****      � ****�  ' �(�

� 
errn( m  ���	�	���
  �  �    )*) r  ��+,+ c  ��-.- l ��/��/ n  ��010 1  ���
� 
ttxt1 l ��2��2 I ���34
� .sysodlogaskr        TEXT3 m  ��55 �66 * P l e a s e   t y p e   t h e   y e a r :4 �78
� 
dtxt7 o  ���� 0 tmyear tmYear8 � 9��
�  
appr9 o  ������ 0 thetitle theTitle��  �  �  �  �  . m  ����
�� 
TEXT, o      ���� 0 theyear theYear* :;: Z ��<=����< = ��>?> 1  ����
�� 
rslt? m  ��@@ �AA 
 f a l s e= R  ������B
�� .ascrerr ****      � ****��  B ��C��
�� 
errnC m  ����������  ��  ��  ; DED n ��FGF I  ����H���� "0 create_pagedate create_pageDateH IJI o  ������ 0 theday theDayJ KLK o  ������ 0 themonth theMonthL MNM o  ������ 0 thedate theDateN OPO o  ������ 0 theyear theYearP Q��Q o  ������ 0 months_list  ��  ��  G  f  ��E R��R n ��STS I  ����U���� "0 create_filedate create_fileDateU VWV o  ������ 0 theday theDayW XYX o  ������ 0 themonth theMonthY Z[Z o  ������ 0 thedate theDate[ \]\ o  ������ 0 theyear theYear] ^��^ o  ������ 0 months_list  ��  ��  T  f  ����  � _`_ l ����������  ��  ��  ` aba l ����cd��  c   Get the pages to create   d �ee 0   G e t   t h e   p a g e s   t o   c r e a t eb f��f Z  �gh��ig = ��jkj l ��l����l o  ������ 0 desk  ��  ��  k m  ��mm �nn  C u s t o m   e d i t i o nh l ��opqo n ��rsr I  ���������� 0 customedition customEdition��  ��  s  f  ��p U O The customEdition function itself gets the pages to generate from TextWrangler   q �tt �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r��  i k  �uu vwv r  ��xyx l ��z����z b  ��{|{ b  ��}~} b  ��� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ����
�� 
ret ~ o  ����
�� 
ret | m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .��  ��  y o      ���� 0 
prompttext 
promptTextw ��� Z  �������� = � ��� o  ������ 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  /�� ��� r  ��� l ������ I ����
�� .gtqpchltns    @   @ ns  � o  ���� 0 ahead_pages  � ����
�� 
prmp� o  ���� 0 
prompttext 
promptText� ����
�� 
appr� o  	
���� 0 thetitle theTitle� �����
�� 
mlsl� m  ��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z /������� = ��� 1  ��
�� 
rslt� m  ��
�� boovfals� R  !+�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  %(��������  ��  ��  ��  � ��� > 27��� o  23���� 0 theday theDay� m  36�� ���  S a t u r d a y� ��� k  :f�� ��� r  :O��� l :K������ I :K����
�� .gtqpchltns    @   @ ns  � o  :;���� 0 weekday_pages  � ����
�� 
prmp� o  <?���� 0 
prompttext 
promptText� ����
�� 
appr� o  @A���� 0 thetitle theTitle� �����
�� 
mlsl� m  DE��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z Pf������� = PU��� 1  PS��
�� 
rslt� m  ST��
�� boovfals� R  Xb�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  \_��������  ��  ��  ��  � ��� = in��� o  ij���� 0 theday theDay� m  jm�� ���  S a t u r d a y� ���� Z  q������� = qv��� l qr������ o  qr���� 0 desk  ��  ��  � m  ru�� ���  A r t s� l y����� r  y���� J  y~�� ���� m  y|�� ���  1 6 - 1 7   ( w e e k e n d )��  � o      ���� &0 masterstogenerate mastersToGenerate� ] W The arts desk only has one page on Saturday, so there's no point in prompting the user   � ��� �   T h e   a r t s   d e s k   o n l y   h a s   o n e   p a g e   o n   S a t u r d a y ,   s o   t h e r e ' s   n o   p o i n t   i n   p r o m p t i n g   t h e   u s e r��  � k  ���� ��� r  ����� l �������� I ������
�� .gtqpchltns    @   @ ns  � o  ������ 0 weekend_pages  � ����
�� 
prmp� o  ������ 0 
prompttext 
promptText� ����
�� 
appr� o  ������ 0 thetitle theTitle� �����
�� 
mlsl� m  ����
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z ��������� = ����� 1  ����
�� 
rslt� m  ����
�� boovfals� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ���� Z  ������� = ����� o  ���� 0 desk  � m  ���� ���  N e w s� l ������ n ����� I  ���~��}�~ 0 newsgen newsGen� ��� o  ���|�| &0 masterstogenerate mastersToGenerate� ��{� o  ���z�z 0 theday theDay�{  �}  �  f  ��� S M theDay is passed to distinguish between, for example, Saturday & weekday TV    � ��� �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  � � � = �� o  ���y�y 0 desk   m  �� �  F e a t u r e s   n �� I  ���x	�w�x 0 featsgen featsGen	 

 o  ���v�v &0 masterstogenerate mastersToGenerate �u o  ���t�t 0 theday theDay�u  �w    f  ��  = �� o  ���s�s 0 desk   m  �� � 
 S p o r t  l �� n �� I  ���r�q�r 0 	sportsgen 	sportsGen �p o  ���o�o &0 masterstogenerate mastersToGenerate�p  �q    f  ��   No day checks    �    N o   d a y   c h e c k s  = ��  o  ���n�n 0 desk    m  ��!! �""  A r t s #�m# l �$%&$ n �'(' I  ��l)�k�l 0 artsgen artsGen) *�j* o  ���i�i &0 masterstogenerate mastersToGenerate�j  �k  (  f  ��%   No day checks   & �++    N o   d a y   c h e c k s�m  ��  ��  ��   � ,-, l     �h�g�f�h  �g  �f  - ./. l     �e�d�c�e  �d  �c  / 010 l     �b23�b  2 I C list_position: Returns theItem's position in theList as an integer   3 �44 �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r1 565 i   
 787 I      �a9�`�a 0 list_position  9 :;: o      �_�_ 0 	this_item  ; <�^< o      �]�] 0 	this_list  �^  �`  8 Y     "=�\>?�[= Z   @A�Z�Y@ =   BCB n    DED 4    �XF
�X 
cobjF o    �W�W 0 i  E o    �V�V 0 	this_list  C o    �U�U 0 	this_item  A L    GG o    �T�T 0 i  �Z  �Y  �\ 0 i  > m    �S�S ? I   	�RH�Q
�R .corecnte****       ****H o    �P�P 0 	this_list  �Q  �[  6 IJI l     �O�N�M�O  �N  �M  J KLK l     �L�K�J�L  �K  �J  L MNM l     �IOP�I  O l f create_pageDate: Assembles the date used on the InDesign pages, and deals with some Saturday oddities   P �QQ �   c r e a t e _ p a g e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l s   w i t h   s o m e   S a t u r d a y   o d d i t i e sN RSR i    TUT I      �HV�G�H "0 create_pagedate create_pageDateV WXW o      �F�F 0 theday theDayX YZY o      �E�E 0 themonth theMonthZ [\[ o      �D�D 0 thedate theDate\ ]^] o      �C�C 0 theyear theYear^ _�B_ o      �A�A 0 months_list  �B  �G  U k    �`` aba r     
cdc J     ee fgf m     hh �ii  J a n u a r yg jkj m    ll �mm 
 M a r c hk non m    pp �qq  M a yo rsr m    tt �uu  J u l ys vwv m    xx �yy  A u g u s tw z�@z m    {{ �||  O c t o b e r�@  d o      �?�? (0 thirtyonedaymonths ThirtyOneDayMonthsb }~} r    � J    �� ��� m    �� ��� 
 A p r i l� ��� m    �� ���  J u n e� ��� m    �� ���  S e p t e m b e r� ��>� m    �� ���  N o v e m b e r�>  � o      �=�= "0 thirtydaymonths ThirtyDayMonths~ ��� l   �<�;�:�<  �;  �:  � ��9� Z   �����8� >   ��� o    �7�7 0 theday theDay� m    �� ���  S a t u r d a y� l   -���� k    -�� ��� r    +��� l   '��6�5� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� o    �4�4 0 theday theDay� m    �� ���   � o    �3�3 0 themonth theMonth� m     �� ���   � o   ! "�2�2 0 thedate theDate� m   # $�� ���   � o   % &�1�1 0 theyear theYear�6  �5  � o      �0�0 0 pagedate pageDate� ��/� l  , ,�.�-�,�.  �-  �,  �/  � + % Does the page date for every weekday   � ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y� ��� F   0 K��� F   0 A��� =  0 5��� o   0 1�+�+ 0 theday theDay� m   1 4�� ���  S a t u r d a y� =  8 =��� o   8 9�*�* 0 thedate theDate� m   9 <�� ���  3 0� E  D G��� o   D E�)�) "0 thirtydaymonths ThirtyDayMonths� o   E F�(�( 0 themonth theMonth� ��� l  N ����� k   N ��� ��� Y   N z��'���&� l  \ u���� Z  \ u���%�$� =  \ d��� n   \ b��� 4   ] b�#�
�# 
cobj� o   ` a�"�" 0 i  � o   \ ]�!�! 0 months_list  � o   b c� �  0 themonth theMonth� r   g q��� l  g o���� n   g o��� 4   h o��
� 
cobj� l  k n���� [   k n��� o   k l�� 0 i  � m   l m�� �  �  � o   g h�� 0 months_list  �  �  � o      �� 0 secondmonth secondMonth�%  �$  � V P This repeat block here grabs the name of the next month to use in the page date   � ��� �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�' 0 i  � m   Q R�� � I  R W���
� .corecnte****       ****� o   R S�� 0 months_list  �  �&  � ��� l  { ����� r   { ���� l  { ����� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� m   { ~�� ���   S a t u r d a y / S u n d a y  � o   ~ �� 0 themonth theMonth� m   � ��� ���    3 0 -� o   � ��� 0 secondmonth secondMonth� m   � ��� ���    1  � o   � ��� 0 theyear theYear�  �  � o      �� 0 pagedate pageDate� P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   � �   �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "� � l  � ���
�	�  �
  �	  �  � 7 1 Deals with Saturdays at the end of 30-day months   � � b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s�  F   � � F   � � =  � �	
	 o   � ��� 0 theday theDay
 m   � � �  S a t u r d a y =  � � o   � ��� 0 thedate theDate m   � � �  3 1 E  � � o   � ��� (0 thirtyonedaymonths ThirtyOneDayMonths o   � ��� 0 themonth theMonth  l  � � k   � �  Y   � ��� Z  � ��� =  � � !  n   � �"#" 4   � �� $
�  
cobj$ o   � ����� 0 i  # o   � ����� 0 months_list  ! o   � ����� 0 themonth theMonth r   � �%&% l  � �'����' n   � �()( 4   � ���*
�� 
cobj* l  � �+����+ [   � �,-, o   � ����� 0 i  - m   � ����� ��  ��  ) o   � ����� 0 months_list  ��  ��  & o      ���� 0 secondmonth secondMonth�  �  � 0 i   m   � �����  I  � ���.��
�� .corecnte****       ****. o   � ����� 0 months_list  ��  �   /0/ r   � �121 l  � �3����3 b   � �454 b   � �676 b   � �898 b   � �:;: b   � �<=< m   � �>> �??   S a t u r d a y / S u n d a y  = o   � ����� 0 themonth theMonth; m   � �@@ �AA    3 1 -9 o   � ����� 0 secondmonth secondMonth7 m   � �BB �CC    1  5 o   � ����� 0 theyear theYear��  ��  2 o      ���� 0 pagedate pageDate0 D��D l  � ���������  ��  ��  ��   7 1 Deals with Saturdays at the end of 31-day months    �EE b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s FGF F   �HIH F   �JKJ =  � �LML o   � ����� 0 theday theDayM m   � �NN �OO  S a t u r d a yK ? PQP o  ���� 0 thedate theDateQ m  RR �SS  2 7I = TUT o  ���� 0 themonth theMonthU m  VV �WW  F e b r u a r yG XYX l +Z[\Z k  +]] ^_^ r  )`a` l %b����b b  %cdc b  #efe b  ghg m  ii �jj 2 S a t u r d a y / S u n d a y   F e b r u a r y  h o  ���� 0 thedate theDatef m  "kk �ll  - M a r c h   1  d o  #$���� 0 theyear theYear��  ��  a o      ���� 0 pagedate pageDate_ m��m l **��������  ��  ��  ��  [ N H Deals with Saturdays at the end of February. Blunt but right until 2032   \ �nn �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   B l u n t   b u t   r i g h t   u n t i l   2 0 3 2Y opo F  .Kqrq F  .?sts = .3uvu o  ./���� 0 theday theDayv m  /2ww �xx  S a t u r d a yt = 6;yzy o  67���� 0 thedate theDatez m  7:{{ �||  3 1r = BG}~} o  BC���� 0 themonth theMonth~ m  CF ���  D e c e m b e rp ��� l Na���� k  Na�� ��� r  N_��� l N[������ b  N[��� b  NW��� b  NS��� m  NQ�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  QR���� 0 theyear theYear� m  SV�� ���  -� l WZ������ [  WZ��� o  WX���� 0 theyear theYear� m  XY���� ��  ��  ��  ��  � o      ���� 0 pagedate pageDate� ���� l ``��������  ��  ��  ��  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = di��� o  de���� 0 theday theDay� m  eh�� ���  S a t u r d a y� ���� l l����� k  l��� ��� r  l���� l l������� b  l���� b  l���� b  l��� b  l{��� b  lw��� b  lu��� b  lq��� m  lo�� ���   S a t u r d a y / S u n d a y  � o  op���� 0 themonth theMonth� m  qt�� ���   � o  uv���� 0 thedate theDate� m  wz�� ���  -� l {~������ [  {~��� o  {|���� 0 thedate theDate� m  |}���� ��  ��  � m  ��� ���   � o  ������ 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � Z T Does the page date for every normal Saturday. At the end to avoid the special cases   � ��� �   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y .   A t   t h e   e n d   t o   a v o i d   t h e   s p e c i a l   c a s e s��  �8  �9  S ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � J D create_fileDate: Assembles the date used in the InDesign file names   � ��� �   c r e a t e _ f i l e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   i n   t h e   I n D e s i g n   f i l e   n a m e s� ��� i    ��� I      ������� "0 create_filedate create_fileDate� ��� o      ���� 0 theday theDay� ��� o      ���� 0 themonth theMonth� ��� o      ���� 0 thedate theDate� ��� o      ���� 0 theyear theYear� ���� o      ���� 0 months_list  ��  ��  � k     [�� ��� Z     ������ A    ��� c     ��� o     ���� 0 thedate theDate� m    ��
�� 
long� m    �� ���  1 0� l   ���� r    ��� l   ������ b    ��� m    	�� ���  0� o   	 
���� 0 thedate theDate��  ��  � o      ���� 0 numdate numDate� J D If the date is 1-9 this adds a leading zero to use in the file name   � ��� �   I f   t h e   d a t e   i s   1 - 9   t h i s   a d d s   a   l e a d i n g   z e r o   t o   u s e   i n   t h e   f i l e   n a m e��  � r    ��� o    ���� 0 thedate theDate� o      ���� 0 numdate numDate� ��� l   ��������  ��  ��  � ��� Y    7�������� l  " 2���� Z  " 2 ����  =  " ( n   " & 4   # &��
�� 
cobj o   $ %���� 0 i   o   " #���� 0 months_list   o   & '���� 0 themonth theMonth r   + . o   + ,���� 0 i   o      ���� 0 raw_nummonth raw_numMonth��  ��  � F @ Gets the month number and, if less than 10, adds a leading zero   � �		 �   G e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a   l e a d i n g   z e r o�� 0 i  � m    ���� � I   ��
��
�� .corecnte****       ****
 o    ���� 0 months_list  ��  ��  �  Z   8 I�� A  8 ; o   8 9���� 0 raw_nummonth raw_numMonth m   9 :���� 
 r   > C l  > A���� b   > A m   > ? �  0 o   ? @���� 0 raw_nummonth raw_numMonth��  ��   o      ���� 0 nummonth numMonth��   r   F I o   F G���� 0 raw_nummonth raw_numMonth o      ���� 0 nummonth numMonth  l  J J��������  ��  ��   �� l  J [  r   J [!"! l  J Y#����# b   J Y$%$ b   J M&'& o   J K���� 0 numdate numDate' o   K L���� 0 nummonth numMonth% l  M X(���( n   M X)*) 7 N X�~+,
�~ 
ctxt+ m   R T�}�} , m   U W�|�| * o   M N�{�{ 0 theyear theYear��  �  ��  ��  " o      �z�z 0 filedate fileDate ? 9 Combines the date, month and last two digits of the year     �-- r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r��  � ./. l     �y�x�w�y  �x  �w  / 010 l     �v�u�t�v  �u  �t  1 232 l     �s45�s  4 Y S pageGen: Opens the master file and calls functions to construct the requested page   5 �66 �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g e3 787 l     �r9:�r  9 ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   : �;; �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e r8 <=< l     �q>?�q  > @ : The page number is that of the left-hand page for spreads   ? �@@ t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s= ABA i    CDC I      �pE�o�p 0 pagegen pageGenE FGF o      �n�n 0 pagetype pageTypeG HIH o      �m�m 0 	themaster 	theMasterI JKJ o      �l�l 0 theslug theSlugK L�kL o      �j�j 0 
pagenumber 
pageNumber�k  �o  D O     XMNM k    WOO PQP I   �iR�h
�i .aevtodocnull  �    alisR o    	�g�g  0 masterdocument masterDocument�h  Q STS n   UVU I    �fW�e�f 0 applymaster applyMasterW XYX o    �d�d 0 	themaster 	theMasterY Z[Z o    �c�c 0 pagetype pageType[ \�b\ o    �a�a 0 
pagenumber 
pageNumber�b  �e  V  f    T ]^] l   �`�_�^�`  �_  �^  ^ _`_ Z    'ab�]�\a E    cdc o    �[�[ 0 	themaster 	theMasterd m    ee �ff 
 N e w s -b l   #ghig n   #jkj I    #�Zl�Y�Z  0 drawembargobox drawEmbargoBoxl m�Xm o    �W�W 0 pagetype pageType�X  �Y  k  f    h 2 , Hyphen needed to exclude Feat-NewsReviews-*   i �nn X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *�]  �\  ` opo l  ( (�V�U�T�V  �U  �T  p qrq Z   ( @st�S�Rs G   ( 3uvu =  ( +wxw o   ( )�Q�Q 0 	themaster 	theMasterx m   ) *yy �zz  F e a t - T Vv =  . 1{|{ o   . /�P�P 0 	themaster 	theMaster| m   / 0}} �~~  F e a t - R e d L i s tt n  6 <� I   7 <�O��N�O "0 changelegaldate changeLegalDate� ��M� o   7 8�L�L 0 	themaster 	theMaster�M  �N  �  f   6 7�S  �R  r ��� l  A A�K�J�I�K  �J  �I  � ��� n  A H��� I   B H�H��G�H 0 	cleansave 	cleanSave� ��� o   B C�F�F 0 
pagenumber 
pageNumber� ��E� o   C D�D�D 0 theslug theSlug�E  �G  �  f   A B� ��C� O  I W��� I  O V�B�A�
�B .CoReclosnull���     obj �A  � �@��?
�@ 
svop� m   Q R�>
�> savoyes �?  � l  I L��=�<� 1   I L�;
�; 
pacd�=  �<  �C  N m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  B ��� l     �:�9�8�:  �9  �8  � ��� l     �7�6�5�7  �6  �5  � ��� l     �4���4  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    ��� I      �3��2�3 0 applymaster applyMaster� ��� o      �1�1 0 	themaster 	theMaster� ��� o      �0�0 0 pagetype pageType� ��/� o      �.�. 0 
pagenumber 
pageNumber�/  �2  � O    ���� O   ���� Z   
�����-� =  
 ��� o   
 �,�, 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    �+�
�+ 
mspr� o    �*�* 0 	themaster 	theMaster� n      ��� 1    �)
�) 
pmas� 4    �(�
�( 
page� m    �'�' � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ��&� Z    ����%�$� H     �� E    ��� o    �#�# 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3�"��
�" .InESovrrobj         obj � n   # *��� 4   ' *�!�
�! 
txtf� m   ( )�� ���  E d i t i o n   d a t e� 4   # '� �
�  
mspr� o   % &�� 0 	themaster 	theMaster� ���
� 
dPge� 4   + /��
� 
page� m   - .�� �  � ��� l  4 ?���� r   4 ?��� o   4 5�� 0 pagedate pageDate� l     ���� n      ��� 1   < >�
� 
pcnt� n   5 <��� 4   9 <��
� 
txtf� m   : ;�� ���  E d i t i o n   d a t e� 4   5 9��
� 
page� m   7 8�� �  �  �   Sets the date   � ���    S e t s   t h e   d a t e� ��� Q   @ p���� l  C g���� I  C g���
� .InESovrrobj         obj � l  C ^���� 6  C ^��� n   C K��� 2   I K�
� 
cobj� n   C I��� 1   G I�
� 
mpgs� 4   C G��
� 
page� m   E F�� � =  N ]��� n  O W��� 1   S W�
� 
pnam� 1   O S�

�
 
pilr� m   X \�� ���  W o r k�  �  � �	��
�	 
dPge� 4   _ c� 
� 
page  m   a b�� �  � o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items   � � �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s� R      ���
� .ascrerr ****      � ****�  �  �  � � Z   q ���  >  q v o   q r���� 0 
pagenumber 
pageNumber m   r u �   l  y �	
	 k   y �  I  y ���
�� .InESovrrobj         obj  n   y � 4   } ���
�� 
txtf m   ~ � �  P a g e   n u m b e r 4   y }��
�� 
mspr o   { |���� 0 	themaster 	theMaster ����
�� 
dPge 4   � ���
�� 
page m   � ����� ��   �� r   � � o   � ����� 0 
pagenumber 
pageNumber l     ���� n       1   � ���
�� 
pcnt n   � �  4   � ���!
�� 
txtf! m   � �"" �##  P a g e   n u m b e r  4   � ���$
�� 
page$ m   � ����� ��  ��  ��  
 G A Mostly to skip the front, which doesn't have a page number frame    �%% �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e�  �   �  � 6 0 The X-Blanks have no page number or date frames   � �&& `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s�%  �$  �&  � '(' =  � �)*) o   � ����� 0 pagetype pageType* m   � �++ �,,  s p r e a d( -��- k   ��.. /0/ l  � �1231 I  � �����4
�� .corecrel****      � null��  4 ��56
�� 
kocl5 m   � ���
�� 
sprd6 ��7��
�� 
prdt7 K   � �88 ��9��
�� 
pmas9 4   � ���:
�� 
mspr: o   � ����� 0 	themaster 	theMaster��  ��  2 G A Creates a two-page spread at pages 2 & 3 with the master applied   3 �;; �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e d0 <��< Z   ��=>����= H   � �?? E   � �@A@ o   � ����� 0 	themaster 	theMasterA m   � �BB �CC  X - B l a n k> k   ��DD EFE I  � ���GH
�� .InESovrrobj         obj G n   � �IJI 4   � ���K
�� 
txtfK m   � �LL �MM  L - E d i t i o n   d a t eJ 4   � ���N
�� 
msprN o   � ����� 0 	themaster 	theMasterH ��O��
�� 
dPgeO 4   � ���P
�� 
pageP m   � ����� ��  F QRQ I  � ���ST
�� .InESovrrobj         obj S n   � �UVU 4   � ���W
�� 
txtfW m   � �XX �YY  R - E d i t i o n   d a t eV 4   � ���Z
�� 
msprZ o   � ����� 0 	themaster 	theMasterT ��[��
�� 
dPge[ 4   � ���\
�� 
page\ m   � ����� ��  R ]^] l  � _`a_ r   � bcb o   � ����� 0 pagedate pageDatec l     d����d n      efe 1   � ���
�� 
pcntf n   � �ghg 4   � ���i
�� 
txtfi m   � �jj �kk  L - E d i t i o n   d a t eh 4   � ���l
�� 
pagel m   � ����� ��  ��  ` * $ Sets the date on the left-hand page   a �mm H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e^ non l pqrp r  sts o  ���� 0 pagedate pageDatet l     u����u n      vwv 1  ��
�� 
pcntw n  xyx 4  ��z
�� 
txtfz m  
{{ �||  R - E d i t i o n   d a t ey 4  ��}
�� 
page} m  ���� ��  ��  q + % Sets the date on the right-hand page   r �~~ J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g eo � Q  d����� k  [�� ��� I 6����
�� .InESovrrobj         obj � l -������ 6 -��� n  ��� 2  ��
�� 
cobj� n  ��� 1  ��
�� 
mpgs� 4  ���
�� 
page� m  ���� � = ,��� n &��� 1  "&��
�� 
pnam� 1  "��
�� 
pilr� m  '+�� ���  W o r k��  ��  � �����
�� 
dPge� 4  .2���
�� 
page� m  01���� ��  � ���� I 7[����
�� .InESovrrobj         obj � l 7R������ 6 7R��� n  7?��� 2  =?��
�� 
cobj� n  7=��� 1  ;=��
�� 
mpgs� 4  7;���
�� 
page� m  9:���� � = BQ��� n CK��� 1  GK��
�� 
pnam� 1  CG��
�� 
pilr� m  LP�� ���  W o r k��  ��  � �����
�� 
dPge� 4  SW���
�� 
page� m  UV���� ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� Z  e�������� > ej��� o  ef���� 0 
pagenumber 
pageNumber� m  fi�� ���  � k  m��� ��� I m����
�� .InESovrrobj         obj � n  mv��� 4  qv���
�� 
txtf� m  ru�� ���  L - P a g e   n u m b e r� 4  mq���
�� 
mspr� o  op���� 0 	themaster 	theMaster� �����
�� 
dPge� 4  w{���
�� 
page� m  yz���� ��  � ��� I ������
�� .InESovrrobj         obj � n  ����� 4  �����
�� 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  �����
�� 
mspr� o  ������ 0 	themaster 	theMaster� �����
�� 
dPge� 4  �����
�� 
page� m  ������ ��  � ��� r  ����� o  ������ 0 
pagenumber 
pageNumber� l     ������ n      ��� 1  ����
�� 
pcnt� n  ����� 4  �����
�� 
txtf� m  ���� ���  L - P a g e   n u m b e r� 4  �����
�� 
page� m  ������ ��  ��  � ���� r  ����� l �������� c  ����� l �������� [  ����� o  ������ 0 
pagenumber 
pageNumber� m  ������ ��  ��  � m  ���
� 
TEXT��  ��  � l     ��~�}� n      ��� 1  ���|
�| 
pcnt� n  ����� 4  ���{�
�{ 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  ���z�
�z 
page� m  ���y�y �~  �}  ��  ��  ��  ��  ��  ��  ��  ��  �-  � l   ��x�w� 1    �v
�v 
pacd�x  �w  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     �u�t�s�u  �t  �s  � ��� l     �r�q�p�r  �q  �p  � ��� l     �o���o  � X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List   � ��� �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t� ��� i    !��� I      �n��m�n "0 changelegaldate changeLegalDate� ��l� o      �k�k 0 	themaster 	theMaster�l  �m  � O     W��� O    V��� Z   
 U� �j� =  
  o   
 �i�i 0 	themaster 	theMaster m     �  F e a t - R e d L i s t  k    ,  I    �h	

�h .InESovrrobj         obj 	 n     4    �g
�g 
txtf m     �  L e g a l   d a t e 4    �f
�f 
mspr o    �e�e 0 	themaster 	theMaster
 �d�c
�d 
dPge 4    �b
�b 
page m    �a�a �c   �` r   ! , o   ! "�_�_ 0 pagedate pageDate l     �^�] n       1   ) +�\
�\ 
pcnt n   " ) 4   & )�[
�[ 
txtf m   ' ( �  L e g a l   d a t e 4   " &�Z
�Z 
page m   $ %�Y�Y �^  �]  �`     =  / 2!"! o   / 0�X�X 0 	themaster 	theMaster" m   0 1## �$$  F e a t - T V  %�W% k   5 Q&& '(' I  5 E�V)*
�V .InESovrrobj         obj ) n   5 <+,+ 4   9 <�U-
�U 
txtf- m   : ;.. �//  L e g a l   d a t e, 4   5 9�T0
�T 
mspr0 o   7 8�S�S 0 	themaster 	theMaster* �R1�Q
�R 
dPge1 4   = A�P2
�P 
page2 m   ? @�O�O �Q  ( 3�N3 r   F Q454 o   F G�M�M 0 pagedate pageDate5 l     6�L�K6 n      787 1   N P�J
�J 
pcnt8 n   G N9:9 4   K N�I;
�I 
txtf; m   L M<< �==  L e g a l   d a t e: 4   G K�H>
�H 
page> m   I J�G�G �L  �K  �N  �W  �j  � l   ?�F�E? 1    �D
�D 
pacd�F  �E  � m     @@�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ABA l     �C�B�A�C  �B  �A  B CDC l     �@�?�>�@  �?  �>  D EFE l     �=GH�=  G c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   H �II �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g eF JKJ i   " %LML I      �<N�;�<  0 drawembargobox drawEmbargoBoxN O�:O o      �9�9 0 pagetype pageType�:  �;  M O     �PQP O    �RSR Z    �TUV�8T =   WXW o    �7�7 0 pagetype pageTypeX m    YY �ZZ  s i n g l eU k    E[[ \]\ O    .^_^ r    -`a` I   +�6�5b
�6 .corecrel****      � null�5  b �4cd
�4 
koclc m    �3
�3 
txtfd �2e�1
�2 
prdte K    'ff �0gh
�0 
gbndg J    #ii jkj m    ll @,      k mnm m    oo �b�     n pqp m     rr @\�     q s�/s m     !tt �I      �/  h �.u�-
�. 
pcntu m   $ %vv �ww " E m b a r g o e d   s t o r i e s�-  �1  a o      �,�, 0 ebox eBox_ 4    �+x
�+ 
pagex m    �*�* ] yzy l  / ={|}{ r   / =~~ 4   / 7�)�
�) 
ObSt� m   3 6�� ��� " N e w s   N I B   b o x   t i n t l     ��(�'� n      ��� 1   8 <�&
�& 
aobs� o   7 8�%�% 0 ebox eBox�(  �'  | K E Set separately as it throws an error if you try to do it on creation   } ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o nz ��$� r   > E��� m   > ?�#
�# boovtrue� n      ��� 1   @ D�"
�" 
plck� o   ? @�!�! 0 ebox eBox�$  V ��� =  H M��� o   H I� �  0 pagetype pageType� m   I L�� ���  s p r e a d� ��� k   P ��� ��� O   P o��� r   W n��� I  W l���
� .corecrel****      � null�  � ���
� 
kocl� m   Y Z�
� 
txtf� ���
� 
prdt� K   [ h�� ���
� 
gbnd� J   \ b�� ��� m   \ ]�� @,      � ��� m   ] ^�� �b�     � ��� m   ^ _�� @\�     � ��� m   _ `�� �I      �  � ���
� 
pcnt� m   c f�� ��� " E m b a r g o e d   s t o r i e s�  �  � o      �� 0 ebox eBox� 4   P T��
� 
page� m   R S�� � ��� r   p ~��� 4   p x��
� 
ObSt� m   t w�� ��� " N e w s   N I B   b o x   t i n t� l     ���� n      ��� 1   y }�
� 
aobs� o   x y�� 0 ebox eBox�  �  � ��� r    ���� m    ��
� boovtrue� n      ��� 1   � ��

�
 
plck� o   � ��	�	 0 ebox eBox�  �  �8  S l   ���� 4   ��
� 
docu� m    �� �  �  Q m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  K ��� l     ����  �  �  � ��� l     �� ���  �   ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   & )��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
pagenumber 
pageNumber� ���� o      ���� 0 theslug theSlug��  ��  � O     _��� O    ^��� k   
 ]�� ��� r   
 ��� m   
 ��
�� boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    ��
�� boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     ��
�� 
pacl� ��� l  " "��������  ��  ��  � ��� Z   " I������ l  " '������ =  " '��� `   " %��� o   " #���� 0 
pagenumber 
pageNumber� m   # $���� � m   % &����  ��  ��  � l  * 2���� r   * 2	 		  J   * .		 			 m   * +		 @.      	 	��	 m   + ,		 @&      ��  	 l     	����	 1   . 1��
�� 
zero��  ��  � ( " For left-hand singles and spreads   � �				 D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s� 	
		
 l  5 :	����	 =  5 :			 `   5 8			 o   5 6���� 0 
pagenumber 
pageNumber	 m   6 7���� 	 m   8 9���� ��  ��  	 	��	 l  = E				 r   = E			 J   = A		 			 m   = >		 @"      	 	��	 m   > ?		 @&      ��  	 l     	����	 1   A D��
�� 
zero��  ��  	   For right-hand singles   	 �		 .   F o r   r i g h t - h a n d   s i n g l e s��  ��  � 		 	 l  J J��������  ��  ��  	  	!��	! I  J ]����	"
�� .CoResavedocu        obj ��  	" ��	#��
�� 
kfil	# b   L Y	$	%	$ b   L W	&	'	& b   L U	(	)	( b   L S	*	+	* o   L Q���� $0 freshpagesfolder freshPagesFolder	+ o   Q R���� 0 theslug theSlug	) m   S T	,	, �	-	-  _	' o   U V���� 0 filedate fileDate	% m   W X	.	. �	/	/ 
 . i n d d��  ��  � l   	0����	0 1    ��
�� 
pacd��  ��  � m     	1	1�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	2	3	2 l     ��������  ��  ��  	3 	4	5	4 l     ��������  ��  ��  	5 	6	7	6 l     ��	8	9��  	8 f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	9 �	:	: �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	7 	;	<	; i   * -	=	>	= I      �������� 0 customedition customEdition��  ��  	> k    �	?	? 	@	A	@ l     ��������  ��  ��  	A 	B	C	B l     ��	D	E��  	D | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	E �	F	F �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	C 	G	H	G l     ��	I	J��  	I a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	J �	K	K �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	H 	L	M	L l     ��	N	O��  	N [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	O �	P	P �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	M 	Q	R	Q l     ��������  ��  ��  	R 	S	T	S l     ��	U	V��  	U > 8 The human-friendly names used in the TextWrangler file	   	V �	W	W p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		T 	X	Y	X r     U	Z	[	Z J     S	\	\ 	]	^	] m     	_	_ �	`	` 
 F r o n t	^ 	a	b	a m    	c	c �	d	d  S a t F r o n t	b 	e	f	e m    	g	g �	h	h  H o m e _ S	f 	i	j	i m    	k	k �	l	l  H o m e _ L	j 	m	n	m m    	o	o �	p	p  H o m e _ R	n 	q	r	q m    	s	s �	t	t  F o r e i g n _ S	r 	u	v	u m    	w	w �	x	x  F o r e i g n _ L	v 	y	z	y m    	{	{ �	|	|  F o r e i g n _ R	z 	}	~	} m    			 �	�	�  S t r u g g l e _ S	~ 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   F I	�	� �	�	�  B l a n k _ S	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ L	� 	���	� m   L O	�	� �	�	�  B l a n k _ R��  	[ o      ���� 0 
human_list  	Y 	�	�	� l  V V��	�	���  	�    The InDesign master names   	� �	�	� 4   T h e   I n D e s i g n   m a s t e r   n a m e s	� 	�	�	� r   V �	�	�	� J   V �	�	� 	�	�	� m   V Y	�	� �	�	�  N e w s - F r o n t	� 	�	�	� m   Y \
 
  �

  N e w s - S a t F r o n t	� 


 m   \ _

 �

  N e w s - H o m e - S p l i t
 


 m   _ b

 �
	
	  N e w s - H o m e - L
 




 m   b e

 �

  N e w s - H o m e - R
 


 m   e h

 �

 $ N e w s - F o r e i g n - S p l i t
 


 m   h k

 �

  N e w s - F o r e i g n - L
 


 m   k n

 �

  N e w s - F o r e i g n - R
 


 m   n q

 �

 & F e a t - S t r u g g l e - S p l i t
 


 m   q t
 
  �
!
!  F e a t - S t r u g g l e - L
 
"
#
" m   t w
$
$ �
%
%  F e a t - S t r u g g l e - R
# 
&
'
& m   w z
(
( �
)
) * F e a t - N e w s R e v i e w - S p l i t
' 
*
+
* m   z }
,
, �
-
- " F e a t - N e w s R e v i e w - L
+ 
.
/
. m   } �
0
0 �
1
1 " F e a t - N e w s R e v i e w - R
/ 
2
3
2 m   � �
4
4 �
5
5  F e a t - S p r e a d
3 
6
7
6 m   � �
8
8 �
9
9  F e a t - T V
7 
:
;
: m   � �
<
< �
=
=  F e a t - S a t T V
; 
>
?
> m   � �
@
@ �
A
A $ F e a t - L e t t e r s - S p l i t
? 
B
C
B m   � �
D
D �
E
E  F e a t - L e t t e r s - L
C 
F
G
F m   � �
H
H �
I
I  F e a t - L e t t e r s - R
G 
J
K
J m   � �
L
L �
M
M  F e a t - R e d L i s t
K 
N
O
N m   � �
P
P �
Q
Q   F e a t - B l a n k - S p l i t
O 
R
S
R m   � �
T
T �
U
U  F e a t - B l a n k - L
S 
V
W
V m   � �
X
X �
Y
Y  F e a t - B l a n k - R
W 
Z
[
Z m   � �
\
\ �
]
]  A r t s - E n t s - S p l i t
[ 
^
_
^ m   � �
`
` �
a
a   A r t s - B l a n k - S p l i t
_ 
b
c
b m   � �
d
d �
e
e  A r t s - B l a n k - L
c 
f
g
f m   � �
h
h �
i
i  A r t s - B l a n k - R
g 
j
k
j m   � �
l
l �
m
m  S p r t - B a c k
k 
n
o
n m   � �
p
p �
q
q   S p r t - B l a n k - S p l i t
o 
r
s
r m   � �
t
t �
u
u  S p r t - B l a n k - L
s 
v
w
v m   � �
x
x �
y
y  S p r t - B l a n k - R
w 
z
{
z m   � �
|
| �
}
}  S p r t - R a c i n g - L
{ 
~

~ m   � �
�
� �
�
�  S p r t - R a c i n g - R
 
�
�
� m   � �
�
� �
�
�  X - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  X - B l a n k - L
� 
���
� m   � �
�
� �
�
�  X - B l a n k - R��  	� o      ���� 0 masters_list  	� 
�
�
� l  � ���
�
���  
� $  Slugs to use in the file name   
� �
�
� <   S l u g s   t o   u s e   i n   t h e   f i l e   n a m e
� 
�
�
� r   �A
�
�
� J   �?
�
� 
�
�
� m   � �
�
� �
�
� 
 F r o n t
� 
�
�
� m   � �
�
� �
�
� 
 F r o n t
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w s
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w
� 
�
�
� m   � �
�
� �
�
�  S p r e a d
� 
�
�
� m   � �
�
� �
�
�  T V
� 
�
�
� m   � �
�
� �
�
�  T V
� 
�
�
� m   �
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  R e d L i s t
� 
�
�
� m  
�
� �
�
�  F e a t u r e s
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m  
�
� �
�
�  A r t s - E n t s
� 
�
�
� m  
�
� �
�
�  A r t s
� 
� 
� m   �  A r t s   m    �  A r t s  m   #		 �

  B a c k  m  #& � 
 S p o r t  m  &) � 
 S p o r t  m  ), � 
 S p o r t  m  ,/ �  R a c i n g  m  /2 �  R a c i n g   m  25!! �"" 
 B L A N K  #$# m  58%% �&& 
 B L A N K$ '��' m  8;(( �)) 
 B L A N K��  
� o      ���� 0 
slugs_list  
� *+* l BB��������  ��  ��  + ,-, l BB��./��  . 1 + Single-page masters (used to set pageType)   / �00 V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )- 121 r  B�343 J  B�55 676 m  BE88 �99  N e w s - F r o n t7 :;: m  EH<< �==  N e w s - S a t F r o n t; >?> m  HK@@ �AA  N e w s - H o m e - L? BCB m  KNDD �EE  N e w s - H o m e - RC FGF m  NQHH �II  N e w s - F o r e i g n - LG JKJ m  QTLL �MM  N e w s - F o r e i g n - RK NON m  TWPP �QQ  F e a t - S t r u g g l e - LO RSR m  WZTT �UU  F e a t - S t r u g g l e - RS VWV m  Z]XX �YY " F e a t - N e w s R e v i e w - LW Z[Z m  ]`\\ �]] " F e a t - N e w s R e v i e w - R[ ^_^ m  `c`` �aa  F e a t - L e t t e r s - L_ bcb m  cfdd �ee  F e a t - L e t t e r s - Rc fgf m  fihh �ii  F e a t - R e d L i s tg jkj m  illl �mm  F e a t - B l a n k - Lk non m  lopp �qq  F e a t - B l a n k - Ro rsr m  ortt �uu  A r t s - B l a n k - Ls vwv m  ruxx �yy  A r t s - B l a n k - Rw z{z m  ux|| �}}  S p r t - B a c k{ ~~ m  x{�� ���  S p r t - B l a n k - L ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ���� m  ���� ���  X - B l a n k - R��  4 o      ���� 0 singles_list  2 ��� l ��������  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ���� m  ���� ���  X - B l a n k - S p l i t��  � o      ���� 0 spreads_list  � ��� l ����������  ��  ��  � ���� O  ����� O  ����� k  ���� ��� l ������ r  ����� l �������� I ������
�� .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �����
�� 
Opts� K  ���� ����
�� 
SMod� m  ����
�� SModGrep� �����
�� 
STop� m  ����
�� boovtrue��  ��  ��  ��  � o      ���� 0 hashline hashLine�   Finds the beginning line   � ��� 2   F i n d s   t h e   b e g i n n i n g   l i n e� ��� l ������ r  ����� l �������� [  ����� l �������� l �������� n  ����� 1  ����
�� 
SLin� l �������� n  ����� 1  ����
�� 
MSpc� o  ������ 0 hashline hashLine��  ��  ��  ��  ��  ��  � m  ������ ��  ��  � o      ���� 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � ��� h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e� ��� l �   r  � l ����� 1  ���
�� 
ELin��  ��   o      ���� 0 theend theEnd @ : The last instruction must be on the last line of the file    � t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e�  l ��������  ��  ��   	
	 Y  ����� l � k  �  l - r  - l +���� I +��
�� .R*chFindMtch���     TEXT m   �  ^ ( . + ) \ t ( . + ) $ �
� 
FnIn 4  �~ 
�~ 
clin  o  �}�} 0 x   �|!�{
�| 
Opts! K  %"" �z#�y
�z 
SMod# m   #�x
�x SModGrep�y  �{  ��  ��   o      �w�w 0 searchresult searchResult 9 3 Finds characters, then a tab, then more characters    �$$ f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s %&% l ..�v�u�t�v  �u  �t  & '(' l .;)*+) r  .;,-, l .9.�s�r. I .9�q�p/
�q .R*chGSubutxt    ��� null�p  / �o0�n
�o 
RplP0 m  2511 �22  \ 1�n  �s  �r  - o      �m�m 0 
pagenumber 
pageNumber* < 6 The page number (or a spread's left-hand page number)   + �33 l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )( 454 l <I6786 r  <I9:9 l <G;�l�k; I <G�j�i<
�j .R*chGSubutxt    ��� null�i  < �h=�g
�h 
RplP= m  @C>> �??  \ 2�g  �l  �k  : o      �f�f 0 hmaster hMaster7 = 7 Human-friendly master name, as contained in human_list   8 �@@ n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t5 ABA l JJ�e�d�c�e  �d  �c  B C�bC Z  J�DE�a�`D H  JTFF E  JSGHG l JOI�_�^I n  JOJKJ 1  KO�]
�] 
MTxtK o  JK�\�\ 0 searchresult searchResult�_  �^  H m  ORLL �MM  - 	 -E l W�NOPN k  W�QQ RSR l W`TUVT r  W`WXW l W^Y�[�ZY n W^Z[Z I  X^�Y\�X�Y 0 list_position  \ ]^] o  XY�W�W 0 hmaster hMaster^ _�V_ o  YZ�U�U 0 
human_list  �V  �X  [  f  WX�[  �Z  X o      �T�T 0 listpos listPosU Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   V �`` �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s tS aba l aicdec r  aifgf l agh�S�Rh n  agiji 4  bg�Qk
�Q 
cobjk o  ef�P�P 0 listpos listPosj o  ab�O�O 0 masters_list  �S  �R  g o      �N�N 0 	themaster 	theMasterd 1 + Sets theMaster to the InDesign master name   e �ll V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m eb mnm l jj�M�L�K�M  �L  �K  n opo Z  j�qrs�Jq E jmtut o  jk�I�I 0 singles_list  u o  kl�H�H 0 	themaster 	theMasterr r  puvwv m  psxx �yy  s i n g l ew o      �G�G 0 pagetype pageTypes z{z E x{|}| o  xy�F�F 0 spreads_list  } o  yz�E�E 0 	themaster 	theMaster{ ~�D~ r  ~�� m  ~��� ���  s p r e a d� o      �C�C 0 pagetype pageType�D  �J  p ��� l ���B�A�@�B  �A  �@  � ��� Z  ������?� = ����� o  ���>�> 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l ����=�<� b  ����� b  ����� o  ���;�; 0 
pagenumber 
pageNumber� m  ���� ���  _� l ����:�9� n  ����� 4  ���8�
�8 
cobj� o  ���7�7 0 listpos listPos� o  ���6�6 0 
slugs_list  �:  �9  �=  �<  � o      �5�5 0 theslug theSlug� 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l e� ��� = ����� o  ���4�4 0 pagetype pageType� m  ���� ���  s p r e a d� ��3� r  ����� l ����2�1� b  ����� b  ����� b  ����� b  ����� o  ���0�0 0 
pagenumber 
pageNumber� m  ���� ���  -� l ����/�.� [  ����� o  ���-�- 0 
pagenumber 
pageNumber� m  ���,�, �/  �.  � m  ���� ���  _� l ����+�*� n  ����� 4  ���)�
�) 
cobj� o  ���(�( 0 listpos listPos� o  ���'�' 0 
slugs_list  �+  �*  �2  �1  � o      �&�& 0 theslug theSlug�3  �?  � ��� l ���%�$�#�%  �$  �#  � ��� Z  �����"�!� G  ����� = ����� o  ��� �  0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ���� 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      �� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l�"  �!  � ��� l ������  �  �  � ��� l ������ n ����� I  ������ 0 pagegen pageGen� ��� o  ���� 0 pagetype pageType� ��� o  ���� 0 	themaster 	theMaster� ��� o  ���� 0 theslug theSlug� ��� o  ���� 0 
pagenumber 
pageNumber�  �  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ��� l ������  �  �  �  O : 4 Lines consisting of "hyphen tab hyphen" are skipped   P ��� h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�a  �`  �b   P J Goes through each line from the one after hashLine to the end of the file    ��� �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�� 0 x   o  �� 0 thestart theStart o  	�� 0 theend theEnd��  
 ��� l �����
�  �  �
  �  � n  ����� 4  ���	�
�	 
ctxt� m  ���� � 4  ����
� 
TxtW� m  ���� � m  �����                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                                ±	��u}        ����  	                Applications    �@��      ��gm    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  ��  	< ��� l     ����  �  �  � ��� l     ����  � , & newsGen: News-page generation routine   � ��� L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   . 1��� I      ��� � 0 newsgen newsGen� ��� o      ���� &0 masterstogenerate mastersToGenerate� ���� o      ���� 0 theday theDay��  �   � k    X�� � � Z     _���� E     o     ���� &0 masterstogenerate mastersToGenerate m     �  N e w s   p a g e s k    [ 	 Z    +
��
 >   	 o    ���� 0 theday theDay m     �  S a t u r d a y l    I    ������ 0 pagegen pageGen  m     �  s i n g l e  m     �  N e w s - F r o n t  m     �    1 _ F r o n t !��! m    "" �##  ��  ��   ; 5 If block to create the weekday or weekend front page    �$$ j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e %&% =   '(' o    ���� 0 theday theDay( m    )) �**  S a t u r d a y& +��+ I    '��,���� 0 pagegen pageGen, -.- m     // �00  s i n g l e. 121 m     !33 �44  N e w s - S a t F r o n t2 565 m   ! "77 �88  1 _ F r o n t6 9��9 m   " #:: �;;  ��  ��  ��  ��  	 <=< I   , 7��>���� 0 pagegen pageGen> ?@? m   - .AA �BB  s p r e a d@ CDC m   . /EE �FF  N e w s - H o m e - S p l i tD GHG m   / 0II �JJ  2 - 3 _ H o m eH K��K m   0 3LL �MM  2��  ��  = NON I   8 I��P���� 0 pagegen pageGenP QRQ m   9 <SS �TT  s p r e a dR UVU m   < ?WW �XX  N e w s - H o m e - S p l i tV YZY m   ? B[[ �\\  4 - 5 _ H o m eZ ]��] m   B E^^ �__  4��  ��  O `��` I   J [��a���� 0 pagegen pageGena bcb m   K Ndd �ee  s p r e a dc fgf m   N Qhh �ii $ N e w s - F o r e i g n - S p l i tg jkj m   Q Tll �mm  6 - 7 _ F o r e i g nk n��n m   T Woo �pp  6��  ��  ��  ��  ��    qrq l  ` `��������  ��  ��  r sts Z   ` �uv����u E  ` ewxw o   ` a���� &0 masterstogenerate mastersToGeneratex m   a dyy �zz  T Vv Z   h �{|}��{ >  h m~~ o   h i���� 0 theday theDay m   i l�� ���  S a t u r d a y| I   p �������� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���  F e a t - T V� ��� m   w z�� ���  1 2 - 1 3 _ T V� ���� m   z }�� ���  1 2��  ��  } ��� =  � ���� o   � ����� 0 theday theDay� m   � ��� ���  S a t u r d a y� ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  F e a t - S a t T V� ��� m   � ��� ���  1 8 - 1 9 _ T V� ���� m   � ��� ���  1 8��  ��  ��  ��  ��  ��  t ��� l  � ���������  ��  ��  � ��� Z   �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   ��� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ���� m   � ��� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   � ���� J   � ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ���� m   � ��� ���  F r i d a y��  � o      ���� 0 p14_days  � ��� l  � ���������  ��  ��  � ���� Z   ������� E  � ���� o   � ����� 0 p10_days  � o   � ����� 0 theday theDay� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - L e t t e r s - L� ��� m   � ��� ���  1 0 _ L e t t e r s� ���� m   � ��� ���  1 0��  ��  � ��� E  � ���� o   � ����� 0 p14_days  � o   � ����� 0 theday theDay� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - L e t t e r s - L� ��� m   � ��� ���  1 4 _ L e t t e r s� ���� m   � �   �  1 4��  ��  �  =  �  o   � ����� 0 theday theDay m   � � �  S a t u r d a y �� I  ��	���� 0 pagegen pageGen	 

 m   �  s p r e a d  m  
 � $ F e a t - L e t t e r s - S p l i t  m  
 �  1 0 - 1 1 _ L e t t e r s �� m   �  1 0��  ��  ��  ��  ��  ��  ��  �  l ��������  ��  ��    Z  :���� E "  o  ���� &0 masterstogenerate mastersToGenerate  m  !!! �""  S t r u g g l e I  %6��#���� 0 pagegen pageGen# $%$ m  &)&& �''  s i n g l e% ()( m  ),** �++  F e a t - S t r u g g l e - L) ,-, m  ,/.. �//  1 4 _ S t r u g g l e- 0��0 m  /211 �22  1 4��  ��  ��  ��   343 l ;;��������  ��  ��  4 5��5 Z  ;X67����6 E ;@898 o  ;<���� &0 masterstogenerate mastersToGenerate9 m  <?:: �;;  R e d   L i s t7 I  CT��<���� 0 pagegen pageGen< =>= m  DG?? �@@  s i n g l e> ABA m  GJCC �DD  F e a t - R e d L i s tB EFE m  JMGG �HH  2 0 _ R e d L i s tF I��I m  MPJJ �KK  2 0��  ��  ��  ��  ��  � LML l     ��������  ��  ��  M NON l     ��������  ��  ��  O PQP l     ��RS��  R 1 + featsGen: Features-page generation routine   S �TT V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n eQ UVU i   2 5WXW I      ��Y���� 0 featsgen featsGenY Z[Z o      ���� &0 masterstogenerate mastersToGenerate[ \��\ o      ���� 0 theday theDay��  ��  X k    �]] ^_^ Z     %`a����` E    bcb o     ���� &0 masterstogenerate mastersToGeneratec m    dd �ee  S p r e a da Z    !fg��hf =   	iji o    ���� 0 theday theDayj m    kk �ll  S a t u r d a yg I    ��m���� 0 pagegen pageGenm non m    pp �qq  s p r e a do rsr m    tt �uu  F e a t - S p r e a ds vwv m    xx �yy  1 2 - 1 3 _ F e a t u r e sw z��z m    {{ �||  1 2��  ��  ��  h I    !��}���� 0 pagegen pageGen} ~~ m    �� ���  s p r e a d ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ���� m    �� ���  8��  ��  ��  ��  _ ��� l  & &��������  ��  ��  � ��� Z   & ;������� E  & )��� o   & '���� &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7������� 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ���� m   0 3�� ���  1 0��  ��  ��  ��  � ��� l  < <��������  ��  ��  � ��� Z   < Y������� E  < A��� o   < =�� &0 masterstogenerate mastersToGenerate� m   = @�� ��� 
 1 2 - 1 3� I   D U�~��}�~ 0 pagegen pageGen� ��� m   E H�� ���  s p r e a d� ��� m   H K�� ���  F e a t - T V� ��� m   K N�� ���  1 2 - 1 3 _ T V� ��|� m   N Q�� ���  1 2�|  �}  ��  ��  � ��� l  Z Z�{�z�y�{  �z  �y  � ��� Z   Z w���x�w� E  Z _��� o   Z [�v�v &0 masterstogenerate mastersToGenerate� m   [ ^�� ��� ( N e w s   r e v i e w s      s p l i t� I   b s�u��t�u 0 pagegen pageGen� ��� m   c f�� ���  s p r e a d� ��� m   f i�� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m   i l�� ���  8 - 9 _ N e w s R e v i e w� ��s� m   l o�� ���  8�s  �t  �x  �w  � ��� Z   x ����r�q� E  x }��� o   x y�p�p &0 masterstogenerate mastersToGenerate� m   y |�� ��� , N e w s   r e v i e w s      s i n g l e s� k   � ��� ��� I   � ��o��n�o 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - L� ��� m   � ��� ���  8 _ N e w s R e v i e w� ��m� m   � ��� ���  8�m  �n  � ��l� I   � ��k��j�k 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - R�    m   � � �  9 _ N e w s R e v i e w �i m   � � �  9�i  �j  �l  �r  �q  �  l  � ��h�g�f�h  �g  �f   	
	 Z   � ��e�d E  � � o   � ��c�c &0 masterstogenerate mastersToGenerate m   � � �  1 5 I   � ��b�a�b 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �  F e a t - B l a n k - R  m   � � �  1 5 _ F e a t u r e s �` m   � � �    1 5�`  �a  �e  �d  
 !"! l  � ��_�^�]�_  �^  �]  " #$# Z   � �%&�\�[% E  � �'(' o   � ��Z�Z &0 masterstogenerate mastersToGenerate( m   � �)) �** 
 1 6 - 1 7& l  � �+,-+ I   � ��Y.�X�Y 0 pagegen pageGen. /0/ m   � �11 �22  s p r e a d0 343 m   � �55 �66  A r t s - E n t s - S p l i t4 787 m   � �99 �::  1 6 - 1 7 _ E n t s - A r t s8 ;�W; m   � �<< �==  1 6�W  �X  , ( " Create the weekend Ents/Arts page   - �>> D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�\  �[  $ ?@? l  � ��V�U�T�V  �U  �T  @ ABA Z   �]CD�S�RC E  � �EFE o   � ��Q�Q &0 masterstogenerate mastersToGenerateF m   � �GG �HH  L e t t e r sD k   �YII JKJ l  � �LMNL r   � �OPO J   � �QQ RSR m   � �TT �UU  M o n d a yS V�PV m   � �WW �XX  W e d n e s d a y�P  P o      �O�O 0 p10_days  M = 7 These two lists determine what the page number will be   N �YY n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b eK Z[Z r   �\]\ J   �^^ _`_ m   � �aa �bb  T u e s d a y` cdc m   � �ee �ff  T h u r s d a yd ghg m   � ii �jj  F r i d a yh k�Nk m   ll �mm , N o   d a y      w o r k i n g   a h e a d�N  ] o      �M�M 0 p14_days  [ non l �L�K�J�L  �K  �J  o p�Ip Z  Yqrs�Hq E tut o  	�G�G 0 p10_days  u o  	
�F�F 0 theday theDayr I  �Ev�D�E 0 pagegen pageGenv wxw m  yy �zz  s i n g l ex {|{ m  }} �~~  F e a t - L e t t e r s - L| � m  �� ���  1 0 _ L e t t e r s� ��C� m  �� ���  1 0�C  �D  s ��� E "%��� o  "#�B�B 0 p14_days  � o  #$�A�A 0 theday theDay� ��� I  (9�@��?�@ 0 pagegen pageGen� ��� m  ),�� ���  s i n g l e� ��� m  ,/�� ���  F e a t - L e t t e r s - L� ��� m  /2�� ���  1 4 _ L e t t e r s� ��>� m  25�� ���  1 4�>  �?  � ��� = <A��� o  <=�=�= 0 theday theDay� m  =@�� ���  S a t u r d a y� ��<� I  DU�;��:�; 0 pagegen pageGen� ��� m  EH�� ���  s p r e a d� ��� m  HK�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  KN�� ���  1 0 - 1 1 _ L e t t e r s� ��9� m  NQ�� ���  1 0�9  �:  �<  �H  �I  �S  �R  B ��� l ^^�8�7�6�8  �7  �6  � ��� Z  ^{���5�4� E ^c��� o  ^_�3�3 &0 masterstogenerate mastersToGenerate� m  _b�� ���  A r t s� l fw���� I  fw�2��1�2 0 pagegen pageGen� ��� m  gj�� ���  s i n g l e� ��� m  jm�� ���  A r t s - B l a n k - R� ��� m  mp�� ���  1 1 _ A r t s� ��0� m  ps�� ���  1 1�0  �1  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�5  �4  � ��� l ||�/�.�-�/  �.  �-  � ��,� Z  |����+�*� E |���� o  |}�)�) &0 masterstogenerate mastersToGenerate� m  }��� ���  A r t s   s p l i t� I  ���(��'�( 0 pagegen pageGen� ��� m  ���� ���  s p r e a d� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���  1 0 - 1 1 _ A r t s� ��&� m  ���� ���  1 0�&  �'  �+  �*  �,  V ��� l     �%�$�#�%  �$  �#  � ��� l     �"�!� �"  �!  �   � ��� l     ����  � , & artsGen: Arts-page generation routine   � ��� L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   6 9��� I      ���� 0 artsgen artsGen� ��� o      �� &0 masterstogenerate mastersToGenerate�  �  � k     =�� ��� Z     ����� E    ��� o     �� &0 masterstogenerate mastersToGenerate� m       �  1 6 - 1 7   ( w e e k e n d )� l    I    ��� 0 pagegen pageGen  m     �		  s p r e a d 

 m    	 �  A r t s - E n t s - S p l i t  m   	 
 �  1 6 - 1 7 _ E n t s - A r t s � m   
  �  1 6�  �   ( " Create the weekend Ents/Arts page    � D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�  �  �  l   ����  �  �    Z    '�� E    o    �� &0 masterstogenerate mastersToGenerate m     �  A r t s   ( p 1 1 ) l   # !"  I    #�#�� 0 pagegen pageGen# $%$ m    && �''  s i n g l e% ()( m    ** �++  A r t s - B l a n k - R) ,-, m    .. �//  1 1 _ A r t s- 0�0 m    11 �22  1 1�  �  ! ( " Create the weekday Arts page (11)   " �33 D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�  �   454 l  ( (��
�	�  �
  �	  5 6�6 Z   ( =78��7 E  ( +9:9 o   ( )�� &0 masterstogenerate mastersToGenerate: m   ) *;; �<<  A r t s   s p l i t8 l  . 9=>?= I   . 9�@�� 0 pagegen pageGen@ ABA m   / 0CC �DD  s p r e a dB EFE m   0 1GG �HH   A r t s - B l a n k - S p l i tF IJI m   1 2KK �LL  1 0 - 1 1 _ A r t sJ M�M m   2 5NN �OO  1 0�  �  > + % Creates an Arts split-spread (10-11)   ? �PP J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )�  �  �  � QRQ l     �� ���  �   ��  R STS l     ��������  ��  ��  T UVU l     ��WX��  W 0 * sportsGen: Sports-page generation routine   X �YY T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n eV Z��Z i   : =[\[ I      ��]���� 0 	sportsgen 	sportsGen] ^��^ o      ���� &0 masterstogenerate mastersToGenerate��  ��  \ k    �__ `a` Z     bc����b E    ded o     ���� &0 masterstogenerate mastersToGeneratee m    ff �gg  T w o   p a g e sc k    hh iji I    ��k���� 0 pagegen pageGenk lml m    nn �oo  s i n g l em pqp m    	rr �ss  S p r t - B a c kq tut m   	 
vv �ww  1 6 _ B a c ku x��x m   
 yy �zz  1 6��  ��  j {��{ I    ��|���� 0 pagegen pageGen| }~} m     ���  s i n g l e~ ��� m    �� ���  S p r t - B l a n k - R� ��� m    �� ���  1 5 _ S p o r t� ���� m    �� ���  1 5��  ��  ��  ��  ��  a ��� l   ��������  ��  ��  � ��� Z    U������� E   !��� o    ���� &0 masterstogenerate mastersToGenerate� m     �� ���  T h r e e   p a g e s� k   $ Q�� ��� I   $ -������� 0 pagegen pageGen� ��� m   % &�� ���  s i n g l e� ��� m   & '�� ���  S p r t - B a c k� ��� m   ' (�� ���  1 6 _ B a c k� ���� m   ( )�� ���  1 6��  ��  � ��� I   . ?������� 0 pagegen pageGen� ��� m   / 2�� ���  s i n g l e� ��� m   2 5�� ���  S p r t - B l a n k - R� ��� m   5 8�� ���  1 5 _ S p o r t� ���� m   8 ;�� ���  1 5��  ��  � ���� I   @ Q������� 0 pagegen pageGen� ��� m   A D�� ���  s i n g l e� ��� m   D G�� ���  S p r t - B l a n k - L� ��� m   G J�� ���  1 4 _ S p o r t� ���� m   J M�� ���  1 4��  ��  ��  ��  ��  � ��� l  V V��������  ��  ��  � ��� Z   V �������� E  V [��� o   V W���� &0 masterstogenerate mastersToGenerate� m   W Z�� ��� , T h r e e   p a g e s   w i t h   s p l i t� k   ^ ��� ��� I   ^ o������� 0 pagegen pageGen� ��� m   _ b�� ���  s i n g l e� ��� m   b e�� ���  S p r t - B a c k� ��� m   e h�� ���  1 6 _ B a c k� ���� m   h k�� ���  1 6��  ��  � ���� I   p �������� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���   S p r t - B l a n k - S p l i t� ��� m   w z�� ���  1 4 - 1 5 _ S p o r t� ���� m   z }�� ���  1 4��  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� Z   � �������� E  � �   o   � ����� &0 masterstogenerate mastersToGenerate m   � � �  F o u r   p a g e s� k   � �  I   � ������� 0 pagegen pageGen 	 m   � �

 �  s i n g l e	  m   � � �  S p r t - B a c k  m   � � �  2 4 _ B a c k �� m   � � �  2 4��  ��    I   � ������� 0 pagegen pageGen  m   � � �  s i n g l e  m   � �   �!!  S p r t - B l a n k - R "#" m   � �$$ �%%  2 3 _ S p o r t# &��& m   � �'' �((  2 3��  ��   )*) I   � ���+���� 0 pagegen pageGen+ ,-, m   � �.. �//  s i n g l e- 010 m   � �22 �33  S p r t - B l a n k - L1 454 m   � �66 �77  2 2 _ S p o r t5 8��8 m   � �99 �::  2 2��  ��  * ;��; I   � ���<���� 0 pagegen pageGen< =>= m   � �?? �@@  s i n g l e> ABA m   � �CC �DD  S p r t - R a c i n g - RB EFE m   � �GG �HH  2 1 _ R a c i n gF I��I m   � �JJ �KK  2 1��  ��  ��  ��  ��  � LML l  � ���������  ��  ��  M NON Z   �PQ����P E  � �RSR o   � ����� &0 masterstogenerate mastersToGenerateS m   � �TT �UU * F o u r   p a g e s   w i t h   s p l i tQ k   �VV WXW I   � ���Y���� 0 pagegen pageGenY Z[Z m   � �\\ �]]  s i n g l e[ ^_^ m   � �`` �aa  S p r t - B a c k_ bcb m   � �dd �ee  2 4 _ B a c kc f��f m   � �gg �hh  2 4��  ��  X iji I   ���k���� 0 pagegen pageGenk lml m   � �nn �oo  s p r e a dm pqp m   � �rr �ss   S p r t - B l a n k - S p l i tq tut m   � �vv �ww  2 2 - 2 3 _ S p o r tu x��x m   �yy �zz  2 2��  ��  j {��{ I  ��|���� 0 pagegen pageGen| }~} m  
 ���  s i n g l e~ ��� m  
�� ���  S p r t - R a c i n g - R� ��� m  �� ���  2 1 _ R a c i n g� ���� m  �� ���  2 1��  ��  ��  ��  ��  O ��� l ��������  ��  ��  � ��� Z  9������� E !��� o  ���� &0 masterstogenerate mastersToGenerate� m   �� ���  R a c i n g   o n l y� I  $5������� 0 pagegen pageGen� ��� m  %(�� ���  s i n g l e� ��� m  (+�� ���  S p r t - R a c i n g - R� ��� m  +.�� ���  2 1 _ R a c i n g� ���� m  .1�� ���  2 1��  ��  ��  ��  � ��� l ::��������  ��  ��  � ��� Z  :W������� E :?��� o  :;���� &0 masterstogenerate mastersToGenerate� m  ;>�� ���  E x t r a   l e f t   p a g e� I  BS������� 0 pagegen pageGen� ��� m  CF�� ���  s i n g l e� ��� m  FI�� ���  S p r t - B l a n k - L� ��� m  IL�� ���  L _ X X _ S p o r t� ���� m  LO�� ���  0 0��  ��  ��  ��  � ��� l XX��������  ��  ��  � ��� Z  Xu������� E X]��� o  XY���� &0 masterstogenerate mastersToGenerate� m  Y\�� ���   E x t r a   r i g h t   p a g e� I  `q������� 0 pagegen pageGen� ��� m  ad�� ���  s i n g l e� ��� m  dg�� ���  S p r t - B l a n k - R� ��� m  gj�� ���  R _ X X _ S p o r t� ���� m  jm�� ���  0 0��  ��  ��  ��  � ��� l vv��������  ��  ��  � ���� Z  v�������� E v{��� o  vw���� &0 masterstogenerate mastersToGenerate� m  wz�� ���  E x t r a   s p l i t� I  ~�������� 0 pagegen pageGen� ��� m  ��� ���  s p r e a d� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��� m  ���� ��� " S p l i t _ X X - X X _ S p o r t� ���� m  ���� ���  0 0��  ��  ��  ��  ��  ��       ��� K U������������ ��  � ��������������~�}�|�{�z�y�x�w�v�u�� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� 0 	genprompt 	genPrompt�� 0 list_position  �� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate� 0 pagegen pageGen�~ 0 applymaster applyMaster�} "0 changelegaldate changeLegalDate�|  0 drawembargobox drawEmbargoBox�{ 0 	cleansave 	cleanSave�z 0 customedition customEdition�y 0 newsgen newsGen�x 0 featsgen featsGen�w 0 artsgen artsGen�v 0 	sportsgen 	sportsGen
�u .aevtoappnull  �   � ****� �t ��s�r�q�t 0 	genprompt 	genPrompt�s �p�p   �o�o 0 desk  �r   �n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�n 0 desk  �m 0 months_list  �l 0 	days_list  �k 0 thetitle theTitle�j 0 weekday_pages  �i 0 weekend_pages  �h 0 ahead_pages  �g 0 tomorrow  �f 0 tmday tmDay�e 0 tmdate tmDate�d 0 tmmonth tmMonth�c 0 tmyear tmYear�b 0 theday theDay�a 0 themonth theMonth�` 0 thedate theDate�_ 0 theyear theYear�^ 0 
prompttext 
promptText�] &0 masterstogenerate mastersToGenerate � � � � � � ��\�[ ��Z ��Y�X�W � � � � � � � � � ��V!�U04�T8BLVZ]eimqtz����������������������
"&)159=AEIMQT�SZbknvz}�R�Q�P�O�N�M��L�K��J�I���H��G�
�F�E�D%5@�C�Bm�A��@���?������>�=�<!�;�\ 
�[ 
prmp
�Z 
appr�Y 
�X .gtqpchltns    @   @ ns  
�W 
TEXT�V �U 
�T 
bool�S 

�R .misccurdldt    ��� null�Q  Q�
�P 
wkdy
�O 
day 
�N 
mnth
�M 
year
�L 
inSL
�K 
rslt
�J 
errn�I���H 0 pagedate pageDate�G 0 filedate fileDate
�F 
dtxt
�E .sysodlogaskr        TEXT
�D 
ttxt�C "0 create_pagedate create_pageDate�B "0 create_filedate create_fileDate�A 0 customedition customEdition
�@ 
ret 
�? 
mlsl�> 0 newsgen newsGen�= 0 featsgen featsGen�< 0 	sportsgen 	sportsGen�; 0 artsgen artsGen�q��  ������v����� �&E�Y hO��a a a a a a a a a a a vE�Oa a a a a a  a !vE�O�a " 
 �a # a $&
 �a % a $& ��a &  ,a 'E�Oa (a )a *mvE�Oa +a ,a -a .a /�vE�Y U�a 0  <a 1E�Oa 2a 3a 4a 5a 6a 7a !vE�Oa 8a 9a :a ;a <a =a !vE�Y �a >  
a ?E�Y hY ��a @ 
 �a A a $& �a B�6FO�a C  aa DE�Oa Ea Fa Ga Ha Ia Ja !vE�Oa Ka La Ma Na Oa Pa !vE�Oa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [vE�Y ,�a \  #a ]E�Oa ^a _lvE�Oa `a aa bmvE�Y hY hO*j ca dE�O�a e,�&kvE�O�a f,E�O�a g,�&kvE�O�a h,E�O��a ia j��a ! �&E�O_ ka l  )a ma nlhY hO�a o  a pE` qOa rE` sY ���a ta j��a ! �&E�O_ ka u  )a ma nlhY hOa va w��� xa y,�&E�O_ ka z  )a ma nlhY hOa {a w��� xa y,�&E�O_ ka |  )a ma nlhY hO)������+ }O)������+ ~O�a   
)j+ �Y a �_ �%_ �%a �%E^ O�a �  1��] �a �ea ! E^ O_ kf  )a ma nlhY hY ��a � 1��] �a �ea ! E^ O_ kf  )a ma nlhY hY N�a �  E�a �  a �kvE^ Y .��] �a �ea ! E^ O_ kf  )a ma nlhY hY hO�a �  )] �l+ �Y =�a �  )] �l+ �Y )�a �  )] k+ �Y �a �  )] k+ �Y h� �:8�9�8�7�: 0 list_position  �9 �6�6   �5�4�5 0 	this_item  �4 0 	this_list  �8   �3�2�1�3 0 	this_item  �2 0 	this_list  �1 0 i   �0�/
�0 .corecnte****       ****
�/ 
cobj�7 # !k�j  kh ��/�  �Y h[OY��� �.U�-�,	
�+�. "0 create_pagedate create_pageDate�- �*�*   �)�(�'�&�%�) 0 theday theDay�( 0 themonth theMonth�' 0 thedate theDate�& 0 theyear theYear�% 0 months_list  �,  	 	�$�#�"�!� �����$ 0 theday theDay�# 0 themonth theMonth�" 0 thedate theDate�! 0 theyear theYear�  0 months_list  � (0 thirtyonedaymonths ThirtyOneDayMonths� "0 thirtydaymonths ThirtyDayMonths� 0 i  � 0 secondmonth secondMonth
 -hlptx{�������������������>@BNRVikw{�������� � � 0 pagedate pageDate
� 
bool
� .corecnte****       ****
� 
cobj�+��������vE�O�����vE�O�� ��%�%�%�%�%�%E` OPYa�a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a a &	 �a   a & a !�%a "%�%E` OPY c�a # 	 �a $ a &	 �a % a & a &�%a '%�k%E` OPY -�a (  $a )�%a *%�%a +%�k%a ,%�%E` OPY h� ������ "0 create_filedate create_fileDate� ��   ������ 0 theday theDay� 0 themonth theMonth� 0 thedate theDate� 0 theyear theYear� 0 months_list  �   	��
�	������� 0 theday theDay�
 0 themonth theMonth�	 0 thedate theDate� 0 theyear theYear� 0 months_list  � 0 numdate numDate� 0 i  � 0 raw_nummonth raw_numMonth� 0 nummonth numMonth 
����� ��������
� 
long
� .corecnte****       ****
�  
cobj�� 

�� 
ctxt�� �� 0 filedate fileDate� \��&� 
�%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�� ��D�������� 0 pagegen pageGen�� ����   ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber��   ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber �����e��y}��������������
�� .aevtodocnull  �    alis�� 0 applymaster applyMaster��  0 drawembargobox drawEmbargoBox
�� 
bool�� "0 changelegaldate changeLegalDate�� 0 	cleansave 	cleanSave
�� 
pacd
�� 
svop
�� savoyes 
�� .CoReclosnull���     obj �� Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UU� ����������� 0 applymaster applyMaster�� ����   �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber��   �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber ,������������������������������������"+����������BLXj{���������
�� 
pacd
�� 
mspr
�� 
page
�� 
pmas
�� 
txtf
�� 
dPge
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt
�� 
mpgs
�� 
cobj  
�� 
pilr
�� 
pnam��  ��  
�� 
kocl
�� 
sprd
�� 
prdt�� 
�� .corecrel****      � null
�� 
TEXT�����*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU� ����������� "0 changelegaldate changeLegalDate�� ����   ���� 0 	themaster 	theMaster��   ���� 0 	themaster 	theMaster @����������������#.<
�� 
pacd
�� 
mspr
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU� ��M��������  0 drawembargobox drawEmbargoBox�� ����   ���� 0 pagetype pageType��   ������ 0 pagetype pageType�� 0 ebox eBox ���Y����������lort����v������������
�� 
docu
�� 
page
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
plck�� �� �*�k/ ���  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY D�a   ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU� ����������� 0 	cleansave 	cleanSave�� ����   ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug��   ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug 	1�����������		��	��	,��	.��
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
kfil�� 0 filedate fileDate
�� .CoResavedocu        obj �� `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU� ��	>���� ���� 0 customedition customEdition��  ��   ����������������������������~�}�� 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart�� 0 theend theEnd�� 0 x  �� 0 searchresult searchResult�� 0 
pagenumber 
pageNumber�� 0 hmaster hMaster�� 0 listpos listPos� 0 	themaster 	theMaster�~ 0 pagetype pageType�} 0 theslug theSlug  �	_	c	g	k	o	s	w	{		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	��|	�
 







 
$
(
,
0
4
8
<
@
D
H
L
P
T
X
\
`
d
h
l
p
t
x
|
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�	!%(8<@DHLPTX\`dhlptx|�������{��������������z��y�x��w�v�u�t�s�r�q�p�o�n�m�l1�k>�jL�i�hx���������g��f�| %�{ �z 
�y 
TxtW
�x 
ctxt
�w 
Opts
�v 
SMod
�u SModGrep
�t 
STop�s 
�r .R*chFindMtch���     TEXT
�q 
MSpc
�p 
SLin
�o 
ELin
�n 
FnIn
�m 
clin
�l 
RplP
�k .R*chGSubutxt    ��� null
�j 
MTxt�i 0 list_position  
�h 
cobj
�g 
bool�f 0 pagegen pageGen�������������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �8*a �k/a �k/)a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�O �kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPY h[OY�OPUU� �e��d�c!"�b�e 0 newsgen newsGen�d �a#�a #  �`�_�` &0 masterstogenerate mastersToGenerate�_ 0 theday theDay�c  ! �^�]�\�[�^ &0 masterstogenerate mastersToGenerate�] 0 theday theDay�\ 0 p10_days  �[ 0 p14_days  " A"�Z�Y)/37:AEILSW[^dhloy����������������������� !&*.1:?CGJ�Z �Y 0 pagegen pageGen�bY�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y h� �XX�W�V$%�U�X 0 featsgen featsGen�W �T&�T &  �S�R�S &0 masterstogenerate mastersToGenerate�R 0 theday theDay�V  $ �Q�P�O�N�Q &0 masterstogenerate mastersToGenerate�P 0 theday theDay�O 0 p10_days  �N 0 p14_days  % Ldkptx{�M�L��������������������������)159<GTWaeily}����������������������M �L 0 pagegen pageGen�U���  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . ra /a 0lvE�Oa 1a 2a 3a 4�vE�O�� *a 5a 6a 7a 8�+ Y 9�� *a 9a :a ;a <�+ Y �a =  *a >a ?a @a A�+ Y hY hO�a B *a Ca Da Ea F�+ Y hO�a G *a Ha Ia Ja K�+ Y h  �K��J�I'(�H�K 0 artsgen artsGen�J �G)�G )  �F�F &0 masterstogenerate mastersToGenerate�I  ' �E�E &0 masterstogenerate mastersToGenerate(  �D�C&*.1;CGKN�D �C 0 pagegen pageGen�H >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h �B\�A�@*+�?�B 0 	sportsgen 	sportsGen�A �>,�> ,  �=�= &0 masterstogenerate mastersToGenerate�@  * �<�< &0 masterstogenerate mastersToGenerate+ Sfnrvy�;�:�������������������������
 $'.269?CGJT\`dgnrvy������������������������; �: 0 pagegen pageGen�?��� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h �9-�8�7./�6
�9 .aevtoappnull  �   � ****- k     500  `11  m22  w33  ��5�5  �8  �7  .  / 
 k�4�3�2 t�1�0 ��/�.
�4 elnteNvr
�3 
pScr
�2 
UIAc�1 0 	genprompt 	genPrompt
�0 elnteInA
�/ .miscactvnull��� ��� obj 
�. .aevtodocnull  �    alis�6 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U ascr  ��ޭ