FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			15/12/2012     �   0 	 C r e a t e d   o n 	 	 	 1 5 / 1 2 / 2 0 1 2      l     ��  ��      	Last updated			09/02/2013     �   4 	 L a s t   u p d a t e d 	 	 	 0 9 / 0 2 / 2 0 1 3      l     ��  ��     	Version:			1.81     �     	 V e r s i o n : 	 	 	 1 . 8 1     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ]   Running code --    ^ � _ _     R u n n i n g   c o d e   - - \  ` a ` l     b c d b O     e f e r     g h g m    ��
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
�� .corecnte****       ****. o   � ����� 0 months_list  ��  �   /0/ r   � �121 l  � �3����3 b   � �454 b   � �676 b   � �898 b   � �:;: b   � �<=< m   � �>> �??   S a t u r d a y / S u n d a y  = o   � ����� 0 themonth theMonth; m   � �@@ �AA    3 1 -9 o   � ����� 0 secondmonth secondMonth7 m   � �BB �CC    1  5 o   � ����� 0 theyear theYear��  ��  2 o      ���� 0 pagedate pageDate0 D��D l  � ���������  ��  ��  ��   7 1 Deals with Saturdays at the end of 31-day months    �EE b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s FGF F   �HIH F   �JKJ =  � �LML o   � ����� 0 theday theDayM m   � �NN �OO  S a t u r d a yK ? PQP l R����R c  STS o  ���� 0 thedate theDateT m  ��
�� 
nmbr��  ��  Q m  
���� I = UVU o  ���� 0 themonth theMonthV m  WW �XX  F e b r u a r yG YZY l /[\][ k  /^^ _`_ r  -aba l )c����c b  )ded b  'fgf b  #hih m  !jj �kk 2 S a t u r d a y / S u n d a y   F e b r u a r y  i o  !"���� 0 thedate theDateg m  #&ll �mm  - M a r c h   1  e o  '(���� 0 theyear theYear��  ��  b o      ���� 0 pagedate pageDate` n��n l ..��������  ��  ��  ��  \ N H Deals with Saturdays at the end of February. Blunt but right until 2032   ] �oo �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   B l u n t   b u t   r i g h t   u n t i l   2 0 3 2Z pqp F  2Orsr F  2Ctut = 27vwv o  23���� 0 theday theDayw m  36xx �yy  S a t u r d a yu = :?z{z o  :;���� 0 thedate theDate{ m  ;>|| �}}  3 1s = FK~~ o  FG���� 0 themonth theMonth m  GJ�� ���  D e c e m b e rq ��� l Re���� k  Re�� ��� r  Rc��� l R_������ b  R_��� b  R[��� b  RW��� m  RU�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  UV���� 0 theyear theYear� m  WZ�� ���  -� l [^������ [  [^��� o  [\���� 0 theyear theYear� m  \]���� ��  ��  ��  ��  � o      ���� 0 pagedate pageDate� ���� l dd��������  ��  ��  ��  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = hm��� o  hi���� 0 theday theDay� m  il�� ���  S a t u r d a y� ���� l p����� k  p��� ��� r  p���� l p������� b  p���� b  p���� b  p���� b  p��� b  p{��� b  py��� b  pu��� m  ps�� ���   S a t u r d a y / S u n d a y  � o  st���� 0 themonth theMonth� m  ux�� ���   � o  yz���� 0 thedate theDate� m  {~�� ���  -� l ������� [  ���� o  ����� 0 thedate theDate� m  ������ ��  ��  � m  ���� ���   � o  ������ 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � Z T Does the page date for every normal Saturday. At the end to avoid the special cases   � ��� �   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y .   A t   t h e   e n d   t o   a v o i d   t h e   s p e c i a l   c a s e s��  �8  �9  S ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � J D create_fileDate: Assembles the date used in the InDesign file names   � ��� �   c r e a t e _ f i l e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   i n   t h e   I n D e s i g n   f i l e   n a m e s� ��� i    ��� I      ������� "0 create_filedate create_fileDate� ��� o      ���� 0 theday theDay� ��� o      ���� 0 themonth theMonth� ��� o      ���� 0 thedate theDate� ��� o      ���� 0 theyear theYear� ���� o      ���� 0 months_list  ��  ��  � k     [�� ��� Z     ������ A    ��� c     ��� o     ���� 0 thedate theDate� m    ��
�� 
long� m    �� ���  1 0� l   ���� r    ��� l   ������ b    ��� m    	�� ���  0� o   	 
���� 0 thedate theDate��  ��  � o      ���� 0 numdate numDate� J D If the date is 1-9 this adds a leading zero to use in the file name   � ��� �   I f   t h e   d a t e   i s   1 - 9   t h i s   a d d s   a   l e a d i n g   z e r o   t o   u s e   i n   t h e   f i l e   n a m e��  � r    ��� o    ���� 0 thedate theDate� o      ���� 0 numdate numDate� ��� l   ��������  ��  ��  � ��� Y    7�������� l  " 2�� � Z  " 2���� =  " ( n   " & 4   # &��
�� 
cobj o   $ %���� 0 i   o   " #���� 0 months_list   o   & '���� 0 themonth theMonth r   + .	 o   + ,���� 0 i  	 o      ���� 0 raw_nummonth raw_numMonth��  ��  � F @ Gets the month number and, if less than 10, adds a leading zero     �

 �   G e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a   l e a d i n g   z e r o�� 0 i  � m    ���� � I   ����
�� .corecnte****       **** o    ���� 0 months_list  ��  ��  �  Z   8 I�� A  8 ; o   8 9���� 0 raw_nummonth raw_numMonth m   9 :���� 
 r   > C l  > A���� b   > A m   > ? �  0 o   ? @���� 0 raw_nummonth raw_numMonth��  ��   o      ���� 0 nummonth numMonth��   r   F I o   F G���� 0 raw_nummonth raw_numMonth o      ���� 0 nummonth numMonth  l  J J��������  ��  ��   �� l  J [ ! r   J ["#" l  J Y$���$ b   J Y%&% b   J M'(' o   J K�~�~ 0 numdate numDate( o   K L�}�} 0 nummonth numMonth& l  M X)�|�{) n   M X*+* 7 N X�z,-
�z 
ctxt, m   R T�y�y - m   U W�x�x + o   M N�w�w 0 theyear theYear�|  �{  ��  �  # o      �v�v 0 filedate fileDate  ? 9 Combines the date, month and last two digits of the year   ! �.. r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r��  � /0/ l     �u�t�s�u  �t  �s  0 121 l     �r�q�p�r  �q  �p  2 343 l     �o56�o  5 Y S pageGen: Opens the master file and calls functions to construct the requested page   6 �77 �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g e4 898 l     �n:;�n  : ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   ; �<< �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e r9 =>= l     �m?@�m  ? @ : The page number is that of the left-hand page for spreads   @ �AA t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s> BCB i    DED I      �lF�k�l 0 pagegen pageGenF GHG o      �j�j 0 pagetype pageTypeH IJI o      �i�i 0 	themaster 	theMasterJ KLK o      �h�h 0 theslug theSlugL M�gM o      �f�f 0 
pagenumber 
pageNumber�g  �k  E O     XNON k    WPP QRQ I   �eS�d
�e .aevtodocnull  �    alisS o    	�c�c  0 masterdocument masterDocument�d  R TUT n   VWV I    �bX�a�b 0 applymaster applyMasterX YZY o    �`�` 0 	themaster 	theMasterZ [\[ o    �_�_ 0 pagetype pageType\ ]�^] o    �]�] 0 
pagenumber 
pageNumber�^  �a  W  f    U ^_^ l   �\�[�Z�\  �[  �Z  _ `a` Z    'bc�Y�Xb E    ded o    �W�W 0 	themaster 	theMastere m    ff �gg 
 N e w s -c l   #hijh n   #klk I    #�Vm�U�V  0 drawembargobox drawEmbargoBoxm n�Tn o    �S�S 0 pagetype pageType�T  �U  l  f    i 2 , Hyphen needed to exclude Feat-NewsReviews-*   j �oo X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *�Y  �X  a pqp l  ( (�R�Q�P�R  �Q  �P  q rsr Z   ( @tu�O�Nt G   ( 3vwv =  ( +xyx o   ( )�M�M 0 	themaster 	theMastery m   ) *zz �{{  F e a t - T Vw =  . 1|}| o   . /�L�L 0 	themaster 	theMaster} m   / 0~~ �  F e a t - R e d L i s tu n  6 <��� I   7 <�K��J�K "0 changelegaldate changeLegalDate� ��I� o   7 8�H�H 0 	themaster 	theMaster�I  �J  �  f   6 7�O  �N  s ��� l  A A�G�F�E�G  �F  �E  � ��� n  A H��� I   B H�D��C�D 0 	cleansave 	cleanSave� ��� o   B C�B�B 0 
pagenumber 
pageNumber� ��A� o   C D�@�@ 0 theslug theSlug�A  �C  �  f   A B� ��?� O  I W��� I  O V�>�=�
�> .CoReclosnull���     obj �=  � �<��;
�< 
svop� m   Q R�:
�: savoyes �;  � l  I L��9�8� 1   I L�7
�7 
pacd�9  �8  �?  O m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  C ��� l     �6�5�4�6  �5  �4  � ��� l     �3�2�1�3  �2  �1  � ��� l     �0���0  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    ��� I      �/��.�/ 0 applymaster applyMaster� ��� o      �-�- 0 	themaster 	theMaster� ��� o      �,�, 0 pagetype pageType� ��+� o      �*�* 0 
pagenumber 
pageNumber�+  �.  � O    ���� O   ���� Z   
�����)� =  
 ��� o   
 �(�( 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    �'�
�' 
mspr� o    �&�& 0 	themaster 	theMaster� n      ��� 1    �%
�% 
pmas� 4    �$�
�$ 
page� m    �#�# � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ��"� Z    ����!� � H     �� E    ��� o    �� 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3���
� .InESovrrobj         obj � n   # *��� 4   ' *��
� 
txtf� m   ( )�� ���  E d i t i o n   d a t e� 4   # '��
� 
mspr� o   % &�� 0 	themaster 	theMaster� ���
� 
dPge� 4   + /��
� 
page� m   - .�� �  � ��� l  4 ?���� r   4 ?��� o   4 5�� 0 pagedate pageDate� l     ���� n      ��� 1   < >�
� 
pcnt� n   5 <��� 4   9 <��
� 
txtf� m   : ;�� ���  E d i t i o n   d a t e� 4   5 9��
� 
page� m   7 8�� �  �  �   Sets the date   � ���    S e t s   t h e   d a t e� ��� Q   @ p���� l  C g���� I  C g���
� .InESovrrobj         obj � l  C ^���� 6  C ^��� n   C K��� 2   I K�
� 
cobj� n   C I��� 1   G I�

�
 
mpgs� 4   C G�	�
�	 
page� m   E F�� � =  N ]��� n  O W��� 1   S W�
� 
pnam� 1   O S�
� 
pilr� m   X \�� ���  W o r k�  �  � � �
� 
dPge  4   _ c�
� 
page m   a b�� �  � o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items   � � �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s� R      �� ��
� .ascrerr ****      � ****�   ��  �  � �� Z   q ����� >  q v o   q r���� 0 
pagenumber 
pageNumber m   r u �		   l  y �

 k   y �  I  y ���
�� .InESovrrobj         obj  n   y � 4   } ���
�� 
txtf m   ~ � �  P a g e   n u m b e r 4   y }��
�� 
mspr o   { |���� 0 	themaster 	theMaster ����
�� 
dPge 4   � ���
�� 
page m   � ����� ��   �� r   � � o   � ����� 0 
pagenumber 
pageNumber l     ���� n       1   � ���
�� 
pcnt n   � � !  4   � ���"
�� 
txtf" m   � �## �$$  P a g e   n u m b e r! 4   � ���%
�� 
page% m   � ����� ��  ��  ��   G A Mostly to skip the front, which doesn't have a page number frame    �&& �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��  � 6 0 The X-Blanks have no page number or date frames   � �'' `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s�!  �   �"  � ()( =  � �*+* o   � ����� 0 pagetype pageType+ m   � �,, �--  s p r e a d) .��. k   ��// 010 l  � �2342 I  � �����5
�� .corecrel****      � null��  5 ��67
�� 
kocl6 m   � ���
�� 
sprd7 ��8��
�� 
prdt8 K   � �99 ��:��
�� 
pmas: 4   � ���;
�� 
mspr; o   � ����� 0 	themaster 	theMaster��  ��  3 G A Creates a two-page spread at pages 2 & 3 with the master applied   4 �<< �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e d1 =��= Z   ��>?����> H   � �@@ E   � �ABA o   � ����� 0 	themaster 	theMasterB m   � �CC �DD  X - B l a n k? k   ��EE FGF I  � ���HI
�� .InESovrrobj         obj H n   � �JKJ 4   � ���L
�� 
txtfL m   � �MM �NN  L - E d i t i o n   d a t eK 4   � ���O
�� 
msprO o   � ����� 0 	themaster 	theMasterI ��P��
�� 
dPgeP 4   � ���Q
�� 
pageQ m   � ����� ��  G RSR I  � ���TU
�� .InESovrrobj         obj T n   � �VWV 4   � ���X
�� 
txtfX m   � �YY �ZZ  R - E d i t i o n   d a t eW 4   � ���[
�� 
mspr[ o   � ����� 0 	themaster 	theMasterU ��\��
�� 
dPge\ 4   � ���]
�� 
page] m   � ����� ��  S ^_^ l  � `ab` r   � cdc o   � ����� 0 pagedate pageDated l     e����e n      fgf 1   � ���
�� 
pcntg n   � �hih 4   � ���j
�� 
txtfj m   � �kk �ll  L - E d i t i o n   d a t ei 4   � ���m
�� 
pagem m   � ����� ��  ��  a * $ Sets the date on the left-hand page   b �nn H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e_ opo l qrsq r  tut o  ���� 0 pagedate pageDateu l     v����v n      wxw 1  ��
�� 
pcntx n  yzy 4  ��{
�� 
txtf{ m  
|| �}}  R - E d i t i o n   d a t ez 4  ��~
�� 
page~ m  ���� ��  ��  r + % Sets the date on the right-hand page   s � J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g ep ��� Q  d����� k  [�� ��� I 6����
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
page� m  ������ ��  ��  � ���� r  ����� l �������� c  ����� l �����~� [  ����� o  ���}�} 0 
pagenumber 
pageNumber� m  ���|�| �  �~  � m  ���{
�{ 
TEXT��  ��  � l     ��z�y� n      ��� 1  ���x
�x 
pcnt� n  ����� 4  ���w�
�w 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  ���v�
�v 
page� m  ���u�u �z  �y  ��  ��  ��  ��  ��  ��  ��  ��  �)  � l   ��t�s� 1    �r
�r 
pacd�t  �s  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     �q�p�o�q  �p  �o  � ��� l     �n�m�l�n  �m  �l  � ��� l     �k���k  � X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List   � ��� �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t� ��� i    !��� I      �j��i�j "0 changelegaldate changeLegalDate� ��h� o      �g�g 0 	themaster 	theMaster�h  �i  � O     W��� O    V��� Z   
 U �f  =  
  o   
 �e�e 0 	themaster 	theMaster m     �  F e a t - R e d L i s t k    , 	 I    �d

�d .InESovrrobj         obj 
 n     4    �c
�c 
txtf m     �  L e g a l   d a t e 4    �b
�b 
mspr o    �a�a 0 	themaster 	theMaster �`�_
�` 
dPge 4    �^
�^ 
page m    �]�] �_  	 �\ r   ! , o   ! "�[�[ 0 pagedate pageDate l     �Z�Y n       1   ) +�X
�X 
pcnt n   " ) 4   & )�W
�W 
txtf m   ' ( �  L e g a l   d a t e 4   " &�V
�V 
page m   $ %�U�U �Z  �Y  �\    !  =  / 2"#" o   / 0�T�T 0 	themaster 	theMaster# m   0 1$$ �%%  F e a t - T V! &�S& k   5 Q'' ()( I  5 E�R*+
�R .InESovrrobj         obj * n   5 <,-, 4   9 <�Q.
�Q 
txtf. m   : ;// �00  L e g a l   d a t e- 4   5 9�P1
�P 
mspr1 o   7 8�O�O 0 	themaster 	theMaster+ �N2�M
�N 
dPge2 4   = A�L3
�L 
page3 m   ? @�K�K �M  ) 4�J4 r   F Q565 o   F G�I�I 0 pagedate pageDate6 l     7�H�G7 n      898 1   N P�F
�F 
pcnt9 n   G N:;: 4   K N�E<
�E 
txtf< m   L M== �>>  L e g a l   d a t e; 4   G K�D?
�D 
page? m   I J�C�C �H  �G  �J  �S  �f  � l   @�B�A@ 1    �@
�@ 
pacd�B  �A  � m     AA�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � BCB l     �?�>�=�?  �>  �=  C DED l     �<�;�:�<  �;  �:  E FGF l     �9HI�9  H c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   I �JJ �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g eG KLK i   " %MNM I      �8O�7�8  0 drawembargobox drawEmbargoBoxO P�6P o      �5�5 0 pagetype pageType�6  �7  N O     �QRQ O    �STS Z    �UVW�4U =   XYX o    �3�3 0 pagetype pageTypeY m    ZZ �[[  s i n g l eV k    E\\ ]^] O    ._`_ r    -aba I   +�2�1c
�2 .corecrel****      � null�1  c �0de
�0 
kocld m    �/
�/ 
txtfe �.f�-
�. 
prdtf K    'gg �,hi
�, 
gbndh J    #jj klk m    mm @,      l non m    pp �b�     o qrq m     ss @\�     r t�+t m     !uu �I      �+  i �*v�)
�* 
pcntv m   $ %ww �xx " E m b a r g o e d   s t o r i e s�)  �-  b o      �(�( 0 ebox eBox` 4    �'y
�' 
pagey m    �&�& ^ z{z l  / =|}~| r   / =� 4   / 7�%�
�% 
ObSt� m   3 6�� ��� " N e w s   N I B   b o x   t i n t� l     ��$�#� n      ��� 1   8 <�"
�" 
aobs� o   7 8�!�! 0 ebox eBox�$  �#  } K E Set separately as it throws an error if you try to do it on creation   ~ ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n{ �� � r   > E��� m   > ?�
� boovtrue� n      ��� 1   @ D�
� 
plck� o   ? @�� 0 ebox eBox�   W ��� =  H M��� o   H I�� 0 pagetype pageType� m   I L�� ���  s p r e a d� ��� k   P ��� ��� O   P o��� r   W n��� I  W l���
� .corecrel****      � null�  � ���
� 
kocl� m   Y Z�
� 
txtf� ���
� 
prdt� K   [ h�� ���
� 
gbnd� J   \ b�� ��� m   \ ]�� @,      � ��� m   ] ^�� �b�     � ��� m   ^ _�� @\�     � ��� m   _ `�� �I      �  � ���
� 
pcnt� m   c f�� ��� " E m b a r g o e d   s t o r i e s�  �  � o      �� 0 ebox eBox� 4   P T��
� 
page� m   R S�� � ��� r   p ~��� 4   p x��
� 
ObSt� m   t w�� ��� " N e w s   N I B   b o x   t i n t� l     ���� n      ��� 1   y }�

�
 
aobs� o   x y�	�	 0 ebox eBox�  �  � ��� r    ���� m    ��
� boovtrue� n      ��� 1   � ��
� 
plck� o   � ��� 0 ebox eBox�  �  �4  T l   ���� 4   ��
� 
docu� m    �� �  �  R m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  L ��� l     � �����   ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   & )��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
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
pageNumber� m   # $���� � m   % &����  ��  ��  � l  * 2��	 � r   * 2			 J   * .		 			 m   * +		 @.      	 	��	 m   + ,		 @&      ��  	 l     		����		 1   . 1��
�� 
zero��  ��  � ( " For left-hand singles and spreads   	  �	
	
 D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s� 			 l  5 :	����	 =  5 :			 `   5 8			 o   5 6���� 0 
pagenumber 
pageNumber	 m   6 7���� 	 m   8 9���� ��  ��  	 	��	 l  = E				 r   = E			 J   = A		 			 m   = >		 @"      	 	��	 m   > ?		 @&      ��  	 l     	����	 1   A D��
�� 
zero��  ��  	   For right-hand singles   	 �		 .   F o r   r i g h t - h a n d   s i n g l e s��  ��  � 	 	!	  l  J J��������  ��  ��  	! 	"��	" I  J ]����	#
�� .CoResavedocu        obj ��  	# ��	$��
�� 
kfil	$ b   L Y	%	&	% b   L W	'	(	' b   L U	)	*	) b   L S	+	,	+ o   L Q���� $0 freshpagesfolder freshPagesFolder	, o   Q R���� 0 theslug theSlug	* m   S T	-	- �	.	.  _	( o   U V���� 0 filedate fileDate	& m   W X	/	/ �	0	0 
 . i n d d��  ��  � l   	1����	1 1    ��
�� 
pacd��  ��  � m     	2	2�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	3	4	3 l     ��������  ��  ��  	4 	5	6	5 l     ��������  ��  ��  	6 	7	8	7 l     ��	9	:��  	9 f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	: �	;	; �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	8 	<	=	< i   * -	>	?	> I      �������� 0 customedition customEdition��  ��  	? k    �	@	@ 	A	B	A l     ��������  ��  ��  	B 	C	D	C l     ��	E	F��  	E | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	F �	G	G �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	D 	H	I	H l     ��	J	K��  	J a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	K �	L	L �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	I 	M	N	M l     ��	O	P��  	O [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	P �	Q	Q �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	N 	R	S	R l     ��������  ��  ��  	S 	T	U	T l     ��	V	W��  	V > 8 The human-friendly names used in the TextWrangler file	   	W �	X	X p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		U 	Y	Z	Y r     U	[	\	[ J     S	]	] 	^	_	^ m     	`	` �	a	a 
 F r o n t	_ 	b	c	b m    	d	d �	e	e  S a t F r o n t	c 	f	g	f m    	h	h �	i	i  H o m e _ S	g 	j	k	j m    	l	l �	m	m  H o m e _ L	k 	n	o	n m    	p	p �	q	q  H o m e _ R	o 	r	s	r m    	t	t �	u	u  F o r e i g n _ S	s 	v	w	v m    	x	x �	y	y  F o r e i g n _ L	w 	z	{	z m    	|	| �	}	}  F o r e i g n _ R	{ 	~		~ m    		�	� �	�	�  S t r u g g l e _ S	 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   F I	�	� �	�	�  B l a n k _ S	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ L	� 	���	� m   L O	�	� �	�	�  B l a n k _ R��  	\ o      ���� 0 
human_list  	Z 	�	�	� l  V V��	�	���  	�    The InDesign master names   	� �	�	� 4   T h e   I n D e s i g n   m a s t e r   n a m e s	� 	�	�	� r   V �	�	�	� J   V �	�	� 	�	�	� m   V Y	�	� �	�	�  N e w s - F r o n t	� 	�
 	� m   Y \

 �

  N e w s - S a t F r o n t
  


 m   \ _

 �

  N e w s - H o m e - S p l i t
 


 m   _ b
	
	 �



  N e w s - H o m e - L
 


 m   b e

 �

  N e w s - H o m e - R
 


 m   e h

 �

 $ N e w s - F o r e i g n - S p l i t
 


 m   h k

 �

  N e w s - F o r e i g n - L
 


 m   k n

 �

  N e w s - F o r e i g n - R
 


 m   n q

 �

 & F e a t - S t r u g g l e - S p l i t
 

 
 m   q t
!
! �
"
"  F e a t - S t r u g g l e - L
  
#
$
# m   t w
%
% �
&
&  F e a t - S t r u g g l e - R
$ 
'
(
' m   w z
)
) �
*
* * F e a t - N e w s R e v i e w - S p l i t
( 
+
,
+ m   z }
-
- �
.
. " F e a t - N e w s R e v i e w - L
, 
/
0
/ m   } �
1
1 �
2
2 " F e a t - N e w s R e v i e w - R
0 
3
4
3 m   � �
5
5 �
6
6  F e a t - S p r e a d
4 
7
8
7 m   � �
9
9 �
:
:  F e a t - T V
8 
;
<
; m   � �
=
= �
>
>  F e a t - S a t T V
< 
?
@
? m   � �
A
A �
B
B $ F e a t - L e t t e r s - S p l i t
@ 
C
D
C m   � �
E
E �
F
F  F e a t - L e t t e r s - L
D 
G
H
G m   � �
I
I �
J
J  F e a t - L e t t e r s - R
H 
K
L
K m   � �
M
M �
N
N  F e a t - R e d L i s t
L 
O
P
O m   � �
Q
Q �
R
R   F e a t - B l a n k - S p l i t
P 
S
T
S m   � �
U
U �
V
V  F e a t - B l a n k - L
T 
W
X
W m   � �
Y
Y �
Z
Z  F e a t - B l a n k - R
X 
[
\
[ m   � �
]
] �
^
^  A r t s - E n t s - S p l i t
\ 
_
`
_ m   � �
a
a �
b
b   A r t s - B l a n k - S p l i t
` 
c
d
c m   � �
e
e �
f
f  A r t s - B l a n k - L
d 
g
h
g m   � �
i
i �
j
j  A r t s - B l a n k - R
h 
k
l
k m   � �
m
m �
n
n  S p r t - B a c k
l 
o
p
o m   � �
q
q �
r
r   S p r t - B l a n k - S p l i t
p 
s
t
s m   � �
u
u �
v
v  S p r t - B l a n k - L
t 
w
x
w m   � �
y
y �
z
z  S p r t - B l a n k - R
x 
{
|
{ m   � �
}
} �
~
~  S p r t - R a c i n g - L
| 

�
 m   � �
�
� �
�
�  S p r t - R a c i n g - R
� 
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
�    m   �  A r t s  m    �  A r t s 	 m   #

 �  B a c k	  m  #& � 
 S p o r t  m  &) � 
 S p o r t  m  ), � 
 S p o r t  m  ,/ �  R a c i n g  m  /2 �  R a c i n g  !  m  25"" �## 
 B L A N K! $%$ m  58&& �'' 
 B L A N K% (��( m  8;)) �** 
 B L A N K��  
� o      ���� 0 
slugs_list  
� +,+ l BB��������  ��  ��  , -.- l BB��/0��  / 1 + Single-page masters (used to set pageType)   0 �11 V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e ). 232 r  B�454 J  B�66 787 m  BE99 �::  N e w s - F r o n t8 ;<; m  EH== �>>  N e w s - S a t F r o n t< ?@? m  HKAA �BB  N e w s - H o m e - L@ CDC m  KNEE �FF  N e w s - H o m e - RD GHG m  NQII �JJ  N e w s - F o r e i g n - LH KLK m  QTMM �NN  N e w s - F o r e i g n - RL OPO m  TWQQ �RR  F e a t - S t r u g g l e - LP STS m  WZUU �VV  F e a t - S t r u g g l e - RT WXW m  Z]YY �ZZ " F e a t - N e w s R e v i e w - LX [\[ m  ]`]] �^^ " F e a t - N e w s R e v i e w - R\ _`_ m  `caa �bb  F e a t - L e t t e r s - L` cdc m  cfee �ff  F e a t - L e t t e r s - Rd ghg m  fiii �jj  F e a t - R e d L i s th klk m  ilmm �nn  F e a t - B l a n k - Ll opo m  loqq �rr  F e a t - B l a n k - Rp sts m  oruu �vv  A r t s - B l a n k - Lt wxw m  ruyy �zz  A r t s - B l a n k - Rx {|{ m  ux}} �~~  S p r t - B a c k| � m  x{�� ���  S p r t - B l a n k - L� ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ���� m  ���� ���  X - B l a n k - R��  5 o      ���� 0 singles_list  3 ��� l ��������  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ���� m  ���� ���  X - B l a n k - S p l i t��  � o      ���� 0 spreads_list  � ��� l ����������  ��  ��  � ���� O  ����� O  ����� k  ���� ��� l ������ r  ����� l �������� I ������
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
MSpc� o  ������ 0 hashline hashLine��  ��  ��  ��  ��  ��  � m  ������ ��  ��  � o      ���� 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � ��� h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e� � � l � r  � l ����� 1  ���
�� 
ELin��  ��   o      ���� 0 theend theEnd @ : The last instruction must be on the last line of the file    � t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e  	 l ��������  ��  ��  	 

 Y  ���� l � k  �  l - r  - l +�~�} I +�|
�| .R*chFindMtch���     TEXT m   �  ^ ( . + ) \ t ( . + ) $ �{ 
�{ 
FnIn 4  �z!
�z 
clin! o  �y�y 0 x    �x"�w
�x 
Opts" K  %## �v$�u
�v 
SMod$ m   #�t
�t SModGrep�u  �w  �~  �}   o      �s�s 0 searchresult searchResult 9 3 Finds characters, then a tab, then more characters    �%% f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s &'& l ..�r�q�p�r  �q  �p  ' ()( l .;*+,* r  .;-.- l .9/�o�n/ I .9�m�l0
�m .R*chGSubutxt    ��� null�l  0 �k1�j
�k 
RplP1 m  2522 �33  \ 1�j  �o  �n  . o      �i�i 0 
pagenumber 
pageNumber+ < 6 The page number (or a spread's left-hand page number)   , �44 l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )) 565 l <I7897 r  <I:;: l <G<�h�g< I <G�f�e=
�f .R*chGSubutxt    ��� null�e  = �d>�c
�d 
RplP> m  @C?? �@@  \ 2�c  �h  �g  ; o      �b�b 0 hmaster hMaster8 = 7 Human-friendly master name, as contained in human_list   9 �AA n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t6 BCB l JJ�a�`�_�a  �`  �_  C D�^D Z  J�EF�]�\E H  JTGG E  JSHIH l JOJ�[�ZJ n  JOKLK 1  KO�Y
�Y 
MTxtL o  JK�X�X 0 searchresult searchResult�[  �Z  I m  ORMM �NN  - 	 -F l W�OPQO k  W�RR STS l W`UVWU r  W`XYX l W^Z�W�VZ n W^[\[ I  X^�U]�T�U 0 list_position  ] ^_^ o  XY�S�S 0 hmaster hMaster_ `�R` o  YZ�Q�Q 0 
human_list  �R  �T  \  f  WX�W  �V  Y o      �P�P 0 listpos listPosV Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   W �aa �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s tT bcb l aidefd r  aighg l agi�O�Ni n  agjkj 4  bg�Ml
�M 
cobjl o  ef�L�L 0 listpos listPosk o  ab�K�K 0 masters_list  �O  �N  h o      �J�J 0 	themaster 	theMastere 1 + Sets theMaster to the InDesign master name   f �mm V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m ec non l jj�I�H�G�I  �H  �G  o pqp Z  j�rst�Fr E jmuvu o  jk�E�E 0 singles_list  v o  kl�D�D 0 	themaster 	theMasters r  puwxw m  psyy �zz  s i n g l ex o      �C�C 0 pagetype pageTypet {|{ E x{}~} o  xy�B�B 0 spreads_list  ~ o  yz�A�A 0 	themaster 	theMaster| �@ r  ~���� m  ~��� ���  s p r e a d� o      �?�? 0 pagetype pageType�@  �F  q ��� l ���>�=�<�>  �=  �<  � ��� Z  ������;� = ����� o  ���:�: 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l ����9�8� b  ����� b  ����� o  ���7�7 0 
pagenumber 
pageNumber� m  ���� ���  _� l ����6�5� n  ����� 4  ���4�
�4 
cobj� o  ���3�3 0 listpos listPos� o  ���2�2 0 
slugs_list  �6  �5  �9  �8  � o      �1�1 0 theslug theSlug� 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l e� ��� = ����� o  ���0�0 0 pagetype pageType� m  ���� ���  s p r e a d� ��/� r  ����� l ����.�-� b  ����� b  ����� b  ����� b  ����� o  ���,�, 0 
pagenumber 
pageNumber� m  ���� ���  -� l ����+�*� [  ����� o  ���)�) 0 
pagenumber 
pageNumber� m  ���(�( �+  �*  � m  ���� ���  _� l ����'�&� n  ����� 4  ���%�
�% 
cobj� o  ���$�$ 0 listpos listPos� o  ���#�# 0 
slugs_list  �'  �&  �.  �-  � o      �"�" 0 theslug theSlug�/  �;  � ��� l ���!� ��!  �   �  � ��� Z  ������� G  ����� = ����� o  ���� 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ���� 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      �� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l�  �  � ��� l ������  �  �  � ��� l ������ n ����� I  ������ 0 pagegen pageGen� ��� o  ���� 0 pagetype pageType� ��� o  ���� 0 	themaster 	theMaster� ��� o  ���� 0 theslug theSlug� ��� o  ���� 0 
pagenumber 
pageNumber�  �  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ��� l ������  �  �  �  P : 4 Lines consisting of "hyphen tab hyphen" are skipped   Q ��� h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�]  �\  �^   P J Goes through each line from the one after hashLine to the end of the file    ��� �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�� 0 x   o  �� 0 thestart theStart o  	�
�
 0 theend theEnd�   ��	� l ������  �  �  �	  � n  ����� 4  ����
� 
ctxt� m  ���� � 4  ����
� 
TxtW� m  ���� � m  �����                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                                ±	��u}        ����  	                Applications    �@��      ��gm    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  ��  	= ��� l     �� ���  �   ��  � ��� l     ������  � , & newsGen: News-page generation routine   � ��� L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   . 1��� I      ������� 0 newsgen newsGen� ��� o      ���� &0 masterstogenerate mastersToGenerate� ���� o      ���� 0 theday theDay��  ��  � k    X��    Z     _���� E     o     ���� &0 masterstogenerate mastersToGenerate m     �  N e w s   p a g e s k    [ 	
	 Z    +�� >   	 o    ���� 0 theday theDay m     �  S a t u r d a y l    I    ������ 0 pagegen pageGen  m     �  s i n g l e  m     �  N e w s - F r o n t  m       �!!  1 _ F r o n t "��" m    ## �$$  ��  ��   ; 5 If block to create the weekday or weekend front page    �%% j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e &'& =   ()( o    ���� 0 theday theDay) m    ** �++  S a t u r d a y' ,��, I    '��-���� 0 pagegen pageGen- ./. m     00 �11  s i n g l e/ 232 m     !44 �55  N e w s - S a t F r o n t3 676 m   ! "88 �99  1 _ F r o n t7 :��: m   " #;; �<<  ��  ��  ��  ��  
 =>= I   , 7��?���� 0 pagegen pageGen? @A@ m   - .BB �CC  s p r e a dA DED m   . /FF �GG  N e w s - H o m e - S p l i tE HIH m   / 0JJ �KK  2 - 3 _ H o m eI L��L m   0 3MM �NN  2��  ��  > OPO I   8 I��Q���� 0 pagegen pageGenQ RSR m   9 <TT �UU  s p r e a dS VWV m   < ?XX �YY  N e w s - H o m e - S p l i tW Z[Z m   ? B\\ �]]  4 - 5 _ H o m e[ ^��^ m   B E__ �``  4��  ��  P a��a I   J [��b���� 0 pagegen pageGenb cdc m   K Nee �ff  s p r e a dd ghg m   N Qii �jj $ N e w s - F o r e i g n - S p l i th klk m   Q Tmm �nn  6 - 7 _ F o r e i g nl o��o m   T Wpp �qq  6��  ��  ��  ��  ��   rsr l  ` `��������  ��  ��  s tut Z   ` �vw����v E  ` exyx o   ` a���� &0 masterstogenerate mastersToGeneratey m   a dzz �{{  T Vw Z   h �|}~��| >  h m� o   h i���� 0 theday theDay� m   i l�� ���  S a t u r d a y} I   p �������� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���  F e a t - T V� ��� m   w z�� ���  1 2 - 1 3 _ T V� ���� m   z }�� ���  1 2��  ��  ~ ��� =  � ���� o   � ����� 0 theday theDay� m   � ��� ���  S a t u r d a y� ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  F e a t - S a t T V� ��� m   � ��� ���  1 8 - 1 9 _ T V� ���� m   � ��� ���  1 8��  ��  ��  ��  ��  ��  u ��� l  � ���������  ��  ��  � ��� Z   �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   ��� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ���� m   � ��� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   � ���� J   � ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ���� m   � ��� ���  F r i d a y��  � o      ���� 0 p14_days  � ��� l  � ���������  ��  ��  � ���� Z   ������� E  � ���� o   � ����� 0 p10_days  � o   � ����� 0 theday theDay� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - L e t t e r s - L� ��� m   � ��� ���  1 0 _ L e t t e r s� ���� m   � ��� ���  1 0��  ��  � ��� E  � ���� o   � ����� 0 p14_days  � o   � ����� 0 theday theDay� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - L e t t e r s - L� ��� m   � ��� ���  1 4 _ L e t t e r s�  ��  m   � � �  1 4��  ��  �  =  �  o   � ����� 0 theday theDay m   � � �  S a t u r d a y 	��	 I  ��
���� 0 pagegen pageGen
  m   �  s p r e a d  m  
 � $ F e a t - L e t t e r s - S p l i t  m  
 �  1 0 - 1 1 _ L e t t e r s �� m   �  1 0��  ��  ��  ��  ��  ��  ��  �  l ��������  ��  ��    Z  :���� E " !  o  ���� &0 masterstogenerate mastersToGenerate! m  !"" �##  S t r u g g l e I  %6��$���� 0 pagegen pageGen$ %&% m  &)'' �((  s i n g l e& )*) m  ),++ �,,  F e a t - S t r u g g l e - L* -.- m  ,/// �00  1 4 _ S t r u g g l e. 1��1 m  /222 �33  1 4��  ��  ��  ��   454 l ;;��������  ��  ��  5 6��6 Z  ;X78����7 E ;@9:9 o  ;<���� &0 masterstogenerate mastersToGenerate: m  <?;; �<<  R e d   L i s t8 I  CT��=���� 0 pagegen pageGen= >?> m  DG@@ �AA  s i n g l e? BCB m  GJDD �EE  F e a t - R e d L i s tC FGF m  JMHH �II  2 0 _ R e d L i s tG J��J m  MPKK �LL  2 0��  ��  ��  ��  ��  � MNM l     ��������  ��  ��  N OPO l     ��������  ��  ��  P QRQ l     ��ST��  S 1 + featsGen: Features-page generation routine   T �UU V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n eR VWV i   2 5XYX I      ��Z���� 0 featsgen featsGenZ [\[ o      ���� &0 masterstogenerate mastersToGenerate\ ]��] o      ���� 0 theday theDay��  ��  Y k    �^^ _`_ Z     %ab����a E    cdc o     ���� &0 masterstogenerate mastersToGenerated m    ee �ff  S p r e a db Z    !gh��ig =   	jkj o    ���� 0 theday theDayk m    ll �mm  S a t u r d a yh I    ��n���� 0 pagegen pageGenn opo m    qq �rr  s p r e a dp sts m    uu �vv  F e a t - S p r e a dt wxw m    yy �zz  1 2 - 1 3 _ F e a t u r e sx {��{ m    || �}}  1 2��  ��  ��  i I    !��~���� 0 pagegen pageGen~ � m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ���� m    �� ���  8��  ��  ��  ��  ` ��� l  & &��������  ��  ��  � ��� Z   & ;������� E  & )��� o   & '���� &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7������� 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ���� m   0 3�� ���  1 0��  ��  ��  ��  � ��� l  < <����~��  �  �~  � ��� Z   < Y���}�|� E  < A��� o   < =�{�{ &0 masterstogenerate mastersToGenerate� m   = @�� ��� 
 1 2 - 1 3� I   D U�z��y�z 0 pagegen pageGen� ��� m   E H�� ���  s p r e a d� ��� m   H K�� ���  F e a t - T V� ��� m   K N�� ���  1 2 - 1 3 _ T V� ��x� m   N Q�� ���  1 2�x  �y  �}  �|  � ��� l  Z Z�w�v�u�w  �v  �u  � ��� Z   Z w���t�s� E  Z _��� o   Z [�r�r &0 masterstogenerate mastersToGenerate� m   [ ^�� ��� ( N e w s   r e v i e w s      s p l i t� I   b s�q��p�q 0 pagegen pageGen� ��� m   c f�� ���  s p r e a d� ��� m   f i�� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m   i l�� ���  8 - 9 _ N e w s R e v i e w� ��o� m   l o�� ���  8�o  �p  �t  �s  � ��� Z   x ����n�m� E  x }��� o   x y�l�l &0 masterstogenerate mastersToGenerate� m   y |�� ��� , N e w s   r e v i e w s      s i n g l e s� k   � ��� ��� I   � ��k��j�k 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - L� ��� m   � ��� ���  8 _ N e w s R e v i e w� ��i� m   � ��� ���  8�i  �j  � ��h� I   � ��g��f�g 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� �   " F e a t - N e w s R e v i e w - R�  m   � � �  9 _ N e w s R e v i e w �e m   � � �  9�e  �f  �h  �n  �m  � 	 l  � ��d�c�b�d  �c  �b  	 

 Z   � ��a�` E  � � o   � ��_�_ &0 masterstogenerate mastersToGenerate m   � � �  1 5 I   � ��^�]�^ 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �  F e a t - B l a n k - R  m   � � �  1 5 _ F e a t u r e s �\ m   � �   �!!  1 5�\  �]  �a  �`   "#" l  � ��[�Z�Y�[  �Z  �Y  # $%$ Z   � �&'�X�W& E  � �()( o   � ��V�V &0 masterstogenerate mastersToGenerate) m   � �** �++ 
 1 6 - 1 7' l  � �,-., I   � ��U/�T�U 0 pagegen pageGen/ 010 m   � �22 �33  s p r e a d1 454 m   � �66 �77  A r t s - E n t s - S p l i t5 898 m   � �:: �;;  1 6 - 1 7 _ E n t s - A r t s9 <�S< m   � �== �>>  1 6�S  �T  - ( " Create the weekend Ents/Arts page   . �?? D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�X  �W  % @A@ l  � ��R�Q�P�R  �Q  �P  A BCB Z   �]DE�O�ND E  � �FGF o   � ��M�M &0 masterstogenerate mastersToGenerateG m   � �HH �II  L e t t e r sE k   �YJJ KLK l  � �MNOM r   � �PQP J   � �RR STS m   � �UU �VV  M o n d a yT W�LW m   � �XX �YY  W e d n e s d a y�L  Q o      �K�K 0 p10_days  N = 7 These two lists determine what the page number will be   O �ZZ n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b eL [\[ r   �]^] J   �__ `a` m   � �bb �cc  T u e s d a ya ded m   � �ff �gg  T h u r s d a ye hih m   � jj �kk  F r i d a yi l�Jl m   mm �nn , N o   d a y      w o r k i n g   a h e a d�J  ^ o      �I�I 0 p14_days  \ opo l �H�G�F�H  �G  �F  p q�Eq Z  Yrst�Dr E uvu o  	�C�C 0 p10_days  v o  	
�B�B 0 theday theDays I  �Aw�@�A 0 pagegen pageGenw xyx m  zz �{{  s i n g l ey |}| m  ~~ �  F e a t - L e t t e r s - L} ��� m  �� ���  1 0 _ L e t t e r s� ��?� m  �� ���  1 0�?  �@  t ��� E "%��� o  "#�>�> 0 p14_days  � o  #$�=�= 0 theday theDay� ��� I  (9�<��;�< 0 pagegen pageGen� ��� m  ),�� ���  s i n g l e� ��� m  ,/�� ���  F e a t - L e t t e r s - L� ��� m  /2�� ���  1 4 _ L e t t e r s� ��:� m  25�� ���  1 4�:  �;  � ��� = <A��� o  <=�9�9 0 theday theDay� m  =@�� ���  S a t u r d a y� ��8� I  DU�7��6�7 0 pagegen pageGen� ��� m  EH�� ���  s p r e a d� ��� m  HK�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  KN�� ���  1 0 - 1 1 _ L e t t e r s� ��5� m  NQ�� ���  1 0�5  �6  �8  �D  �E  �O  �N  C ��� l ^^�4�3�2�4  �3  �2  � ��� Z  ^{���1�0� E ^c��� o  ^_�/�/ &0 masterstogenerate mastersToGenerate� m  _b�� ���  A r t s� l fw���� I  fw�.��-�. 0 pagegen pageGen� ��� m  gj�� ���  s i n g l e� ��� m  jm�� ���  A r t s - B l a n k - R� ��� m  mp�� ���  1 1 _ A r t s� ��,� m  ps�� ���  1 1�,  �-  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�1  �0  � ��� l ||�+�*�)�+  �*  �)  � ��(� Z  |����'�&� E |���� o  |}�%�% &0 masterstogenerate mastersToGenerate� m  }��� ���  A r t s   s p l i t� I  ���$��#�$ 0 pagegen pageGen� ��� m  ���� ���  s p r e a d� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���  1 0 - 1 1 _ A r t s� ��"� m  ���� ���  1 0�"  �#  �'  �&  �(  W ��� l     �!� ��!  �   �  � ��� l     ����  �  �  � ��� l     ����  � , & artsGen: Arts-page generation routine   � ��� L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   6 9��� I      ���� 0 artsgen artsGen� ��� o      �� &0 masterstogenerate mastersToGenerate�  �  � k     =�� ��� Z     ����� E    � � o     �� &0 masterstogenerate mastersToGenerate  m     �  1 6 - 1 7   ( w e e k e n d )� l    I    ��� 0 pagegen pageGen  m    		 �

  s p r e a d  m    	 �  A r t s - E n t s - S p l i t  m   	 
 �  1 6 - 1 7 _ E n t s - A r t s � m   
  �  1 6�  �   ( " Create the weekend Ents/Arts page    � D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�  �  �  l   ����  �  �    Z    '�� E    o    �� &0 masterstogenerate mastersToGenerate m     �    A r t s   ( p 1 1 ) l   #!"#! I    #�
$�	�
 0 pagegen pageGen$ %&% m    '' �((  s i n g l e& )*) m    ++ �,,  A r t s - B l a n k - R* -.- m    // �00  1 1 _ A r t s. 1�1 m    22 �33  1 1�  �	  " ( " Create the weekday Arts page (11)   # �44 D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�  �   565 l  ( (����  �  �  6 7�7 Z   ( =89��8 E  ( +:;: o   ( )�� &0 masterstogenerate mastersToGenerate; m   ) *<< �==  A r t s   s p l i t9 l  . 9>?@> I   . 9� A���  0 pagegen pageGenA BCB m   / 0DD �EE  s p r e a dC FGF m   0 1HH �II   A r t s - B l a n k - S p l i tG JKJ m   1 2LL �MM  1 0 - 1 1 _ A r t sK N��N m   2 5OO �PP  1 0��  ��  ? + % Creates an Arts split-spread (10-11)   @ �QQ J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )�  �  �  � RSR l     ��������  ��  ��  S TUT l     ��������  ��  ��  U VWV l     ��XY��  X 0 * sportsGen: Sports-page generation routine   Y �ZZ T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n eW [��[ i   : =\]\ I      ��^���� 0 	sportsgen 	sportsGen^ _��_ o      ���� &0 masterstogenerate mastersToGenerate��  ��  ] k    �`` aba Z     cd����c E    efe o     ���� &0 masterstogenerate mastersToGeneratef m    gg �hh  T w o   p a g e sd k    ii jkj I    ��l���� 0 pagegen pageGenl mnm m    oo �pp  s i n g l en qrq m    	ss �tt  S p r t - B a c kr uvu m   	 
ww �xx  1 6 _ B a c kv y��y m   
 zz �{{  1 6��  ��  k |��| I    ��}���� 0 pagegen pageGen} ~~ m    �� ���  s i n g l e ��� m    �� ���  S p r t - B l a n k - R� ��� m    �� ���  1 5 _ S p o r t� ���� m    �� ���  1 5��  ��  ��  ��  ��  b ��� l   ��������  ��  ��  � ��� Z    U������� E   !��� o    ���� &0 masterstogenerate mastersToGenerate� m     �� ���  T h r e e   p a g e s� k   $ Q�� ��� I   $ -������� 0 pagegen pageGen� ��� m   % &�� ���  s i n g l e� ��� m   & '�� ���  S p r t - B a c k� ��� m   ' (�� ���  1 6 _ B a c k� ���� m   ( )�� ���  1 6��  ��  � ��� I   . ?������� 0 pagegen pageGen� ��� m   / 2�� ���  s i n g l e� ��� m   2 5�� ���  S p r t - B l a n k - R� ��� m   5 8�� ���  1 5 _ S p o r t� ���� m   8 ;�� ���  1 5��  ��  � ���� I   @ Q������� 0 pagegen pageGen� ��� m   A D�� ���  s i n g l e� ��� m   D G�� ���  S p r t - B l a n k - L� ��� m   G J�� ���  1 4 _ S p o r t� ���� m   J M�� ���  1 4��  ��  ��  ��  ��  � ��� l  V V��������  ��  ��  � ��� Z   V �������� E  V [��� o   V W���� &0 masterstogenerate mastersToGenerate� m   W Z�� ��� , T h r e e   p a g e s   w i t h   s p l i t� k   ^ ��� ��� I   ^ o������� 0 pagegen pageGen� ��� m   _ b�� ���  s i n g l e� ��� m   b e�� ���  S p r t - B a c k� ��� m   e h�� ���  1 6 _ B a c k� ���� m   h k�� ���  1 6��  ��  � ���� I   p �������� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���   S p r t - B l a n k - S p l i t� ��� m   w z�� ���  1 4 - 1 5 _ S p o r t� ���� m   z }�� ���  1 4��  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� Z   � �� ����� E  � � o   � ����� &0 masterstogenerate mastersToGenerate m   � � �  F o u r   p a g e s  k   � �  I   � ������� 0 pagegen pageGen 	
	 m   � � �  s i n g l e
  m   � � �  S p r t - B a c k  m   � � �  2 4 _ B a c k �� m   � � �  2 4��  ��    I   � ������� 0 pagegen pageGen  m   � � �  s i n g l e   m   � �!! �""  S p r t - B l a n k - R  #$# m   � �%% �&&  2 3 _ S p o r t$ '��' m   � �(( �))  2 3��  ��   *+* I   � ���,���� 0 pagegen pageGen, -.- m   � �// �00  s i n g l e. 121 m   � �33 �44  S p r t - B l a n k - L2 565 m   � �77 �88  2 2 _ S p o r t6 9��9 m   � �:: �;;  2 2��  ��  + <��< I   � ���=���� 0 pagegen pageGen= >?> m   � �@@ �AA  s i n g l e? BCB m   � �DD �EE  S p r t - R a c i n g - RC FGF m   � �HH �II  2 1 _ R a c i n gG J��J m   � �KK �LL  2 1��  ��  ��  ��  ��  � MNM l  � ���������  ��  ��  N OPO Z   �QR����Q E  � �STS o   � ����� &0 masterstogenerate mastersToGenerateT m   � �UU �VV * F o u r   p a g e s   w i t h   s p l i tR k   �WW XYX I   � ���Z���� 0 pagegen pageGenZ [\[ m   � �]] �^^  s i n g l e\ _`_ m   � �aa �bb  S p r t - B a c k` cdc m   � �ee �ff  2 4 _ B a c kd g��g m   � �hh �ii  2 4��  ��  Y jkj I   ���l���� 0 pagegen pageGenl mnm m   � �oo �pp  s p r e a dn qrq m   � �ss �tt   S p r t - B l a n k - S p l i tr uvu m   � �ww �xx  2 2 - 2 3 _ S p o r tv y��y m   �zz �{{  2 2��  ��  k |��| I  ��}���� 0 pagegen pageGen} ~~ m  
�� ���  s i n g l e ��� m  
�� ���  S p r t - R a c i n g - R� ��� m  �� ���  2 1 _ R a c i n g� ���� m  �� ���  2 1��  ��  ��  ��  ��  P ��� l ��������  ��  ��  � ��� Z  9������� E !��� o  ���� &0 masterstogenerate mastersToGenerate� m   �� ���  R a c i n g   o n l y� I  $5������� 0 pagegen pageGen� ��� m  %(�� ���  s i n g l e� ��� m  (+�� ���  S p r t - R a c i n g - R� ��� m  +.�� ���  2 1 _ R a c i n g� ���� m  .1�� ���  2 1��  ��  ��  ��  � ��� l ::��������  ��  ��  � ��� Z  :W������� E :?��� o  :;���� &0 masterstogenerate mastersToGenerate� m  ;>�� ���  E x t r a   l e f t   p a g e� I  BS������� 0 pagegen pageGen� ��� m  CF�� ���  s i n g l e� ��� m  FI�� ���  S p r t - B l a n k - L� ��� m  IL�� ���  L _ X X _ S p o r t� ���� m  LO�� ���  0 0��  ��  ��  ��  � ��� l XX��������  ��  ��  � ��� Z  Xu������� E X]��� o  XY���� &0 masterstogenerate mastersToGenerate� m  Y\�� ���   E x t r a   r i g h t   p a g e� I  `q������� 0 pagegen pageGen� ��� m  ad�� ���  s i n g l e� ��� m  dg�� ���  S p r t - B l a n k - R� ��� m  gj�� ���  R _ X X _ S p o r t� ���� m  jm�� ���  0 0��  ��  ��  ��  � ��� l vv��������  ��  ��  � ���� Z  v�������� E v{��� o  vw���� &0 masterstogenerate mastersToGenerate� m  wz�� ���  E x t r a   s p l i t� I  ~�������� 0 pagegen pageGen� ��� m  ��� ���  s p r e a d� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��� m  ���� ��� " S p l i t _ X X - X X _ S p o r t� ���� m  ���� ���  0 0��  ��  ��  ��  ��  ��       ��� K U����������� ��  � ������~�}�|�{�z�y�x�w�v�u�t�s�r�q�� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument� 0 	genprompt 	genPrompt�~ 0 list_position  �} "0 create_pagedate create_pageDate�| "0 create_filedate create_fileDate�{ 0 pagegen pageGen�z 0 applymaster applyMaster�y "0 changelegaldate changeLegalDate�x  0 drawembargobox drawEmbargoBox�w 0 	cleansave 	cleanSave�v 0 customedition customEdition�u 0 newsgen newsGen�t 0 featsgen featsGen�s 0 artsgen artsGen�r 0 	sportsgen 	sportsGen
�q .aevtoappnull  �   � ****� �p ��o�n�m�p 0 	genprompt 	genPrompt�o �l�l   �k�k 0 desk  �n   �j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�j 0 desk  �i 0 months_list  �h 0 	days_list  �g 0 thetitle theTitle�f 0 weekday_pages  �e 0 weekend_pages  �d 0 ahead_pages  �c 0 tomorrow  �b 0 tmday tmDay�a 0 tmdate tmDate�` 0 tmmonth tmMonth�_ 0 tmyear tmYear�^ 0 theday theDay�] 0 themonth theMonth�\ 0 thedate theDate�[ 0 theyear theYear�Z 0 
prompttext 
promptText�Y &0 masterstogenerate mastersToGenerate � � � � � � ��X�W ��V ��U�T�S � � � � � � � � � ��R!�Q04�P8BLVZ]eimqtz����������������������
"&)159=AEIMQT�OZbknvz}�N�M�L�K�J�I��H�G��F�E���D��C�
�B�A�@%5@�?�>m�=��<���;������:�9�8!�7�X 
�W 
prmp
�V 
appr�U 
�T .gtqpchltns    @   @ ns  
�S 
TEXT�R �Q 
�P 
bool�O 

�N .misccurdldt    ��� null�M  Q�
�L 
wkdy
�K 
day 
�J 
mnth
�I 
year
�H 
inSL
�G 
rslt
�F 
errn�E���D 0 pagedate pageDate�C 0 filedate fileDate
�B 
dtxt
�A .sysodlogaskr        TEXT
�@ 
ttxt�? "0 create_pagedate create_pageDate�> "0 create_filedate create_fileDate�= 0 customedition customEdition
�< 
ret 
�; 
mlsl�: 0 newsgen newsGen�9 0 featsgen featsGen�8 0 	sportsgen 	sportsGen�7 0 artsgen artsGen�m��  ������v����� �&E�Y hO��a a a a a a a a a a a vE�Oa a a a a a  a !vE�O�a " 
 �a # a $&
 �a % a $& ��a &  ,a 'E�Oa (a )a *mvE�Oa +a ,a -a .a /�vE�Y U�a 0  <a 1E�Oa 2a 3a 4a 5a 6a 7a !vE�Oa 8a 9a :a ;a <a =a !vE�Y �a >  
a ?E�Y hY ��a @ 
 �a A a $& �a B�6FO�a C  aa DE�Oa Ea Fa Ga Ha Ia Ja !vE�Oa Ka La Ma Na Oa Pa !vE�Oa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [vE�Y ,�a \  #a ]E�Oa ^a _lvE�Oa `a aa bmvE�Y hY hO*j ca dE�O�a e,�&kvE�O�a f,E�O�a g,�&kvE�O�a h,E�O��a ia j��a ! �&E�O_ ka l  )a ma nlhY hO�a o  a pE` qOa rE` sY ���a ta j��a ! �&E�O_ ka u  )a ma nlhY hOa va w��� xa y,�&E�O_ ka z  )a ma nlhY hOa {a w��� xa y,�&E�O_ ka |  )a ma nlhY hO)������+ }O)������+ ~O�a   
)j+ �Y a �_ �%_ �%a �%E^ O�a �  1��] �a �ea ! E^ O_ kf  )a ma nlhY hY ��a � 1��] �a �ea ! E^ O_ kf  )a ma nlhY hY N�a �  E�a �  a �kvE^ Y .��] �a �ea ! E^ O_ kf  )a ma nlhY hY hO�a �  )] �l+ �Y =�a �  )] �l+ �Y )�a �  )] k+ �Y �a �  )] k+ �Y h� �68�5�4�3�6 0 list_position  �5 �2	�2 	  �1�0�1 0 	this_item  �0 0 	this_list  �4   �/�.�-�/ 0 	this_item  �. 0 	this_list  �- 0 i   �,�+
�, .corecnte****       ****
�+ 
cobj�3 # !k�j  kh ��/�  �Y h[OY��� �*U�)�(
�'�* "0 create_pagedate create_pageDate�) �&�&   �%�$�#�"�!�% 0 theday theDay�$ 0 themonth theMonth�# 0 thedate theDate�" 0 theyear theYear�! 0 months_list  �(  
 	� ���������  0 theday theDay� 0 themonth theMonth� 0 thedate theDate� 0 theyear theYear� 0 months_list  � (0 thirtyonedaymonths ThirtyOneDayMonths� "0 thirtydaymonths ThirtyDayMonths� 0 i  � 0 secondmonth secondMonth .hlptx{�������������������>@BN��Wjlx|��������� � � 0 pagedate pageDate
� 
bool
� .corecnte****       ****
� 
cobj
� 
nmbr� �'��������vE�O�����vE�O�� ��%�%�%�%�%�%E` OPYe�a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY �a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a &a  a &	 �a ! a & a "�%a #%�%E` OPY c�a $ 	 �a % a &	 �a & a & a '�%a (%�k%E` OPY -�a )  $a *�%a +%�%a ,%�k%a -%�%E` OPY h� ������ "0 create_filedate create_fileDate� ��   �
�	����
 0 theday theDay�	 0 themonth theMonth� 0 thedate theDate� 0 theyear theYear� 0 months_list  �   	������ ������� 0 theday theDay� 0 themonth theMonth� 0 thedate theDate� 0 theyear theYear� 0 months_list  �  0 numdate numDate�� 0 i  �� 0 raw_nummonth raw_numMonth�� 0 nummonth numMonth 
����������������
�� 
long
�� .corecnte****       ****
�� 
cobj�� 

�� 
ctxt�� �� 0 filedate fileDate� \��&� 
�%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�� ��E�������� 0 pagegen pageGen�� ����   ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber��   ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber �����f��z~��������������
�� .aevtodocnull  �    alis�� 0 applymaster applyMaster��  0 drawembargobox drawEmbargoBox
�� 
bool�� "0 changelegaldate changeLegalDate�� 0 	cleansave 	cleanSave
�� 
pacd
�� 
svop
�� savoyes 
�� .CoReclosnull���     obj �� Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UU� ����������� 0 applymaster applyMaster�� ����   �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber��   �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber ,������������������������������������#,����������CMYk|���������
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
cobj  
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
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU� ����������� "0 changelegaldate changeLegalDate�� ����   ���� 0 	themaster 	theMaster��   ���� 0 	themaster 	theMaster A����������������$/=
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
pcnt�� X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU� ��N��������  0 drawembargobox drawEmbargoBox�� ����   ���� 0 pagetype pageType��   ������ 0 pagetype pageType�� 0 ebox eBox ���Z����������mpsu����w������������
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
plck�� �� �*�k/ ���  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY D�a   ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU� ����������� 0 	cleansave 	cleanSave�� ����   ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug��   ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug 	2�����������		��	��	-��	/��
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
�� .CoResavedocu        obj �� `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU� ��	?���� !���� 0 customedition customEdition��  ��    ����������������~�}�|�{�z�y�x�w�� 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart� 0 theend theEnd�~ 0 x  �} 0 searchresult searchResult�| 0 
pagenumber 
pageNumber�{ 0 hmaster hMaster�z 0 listpos listPos�y 0 	themaster 	theMaster�x 0 pagetype pageType�w 0 theslug theSlug! �	`	d	h	l	p	t	x	|	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	��v	�


	





!
%
)
-
1
5
9
=
A
E
I
M
Q
U
Y
]
a
e
i
m
q
u
y
}
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
�
"&)9=AEIMQUY]aeimquy}�������u��������������t��s�r��q�p�o�n�m�l�k�j�i�h�g�f2�e?�dM�c�by���������a��`�v %�u �t 
�s 
TxtW
�r 
ctxt
�q 
Opts
�p 
SMod
�o SModGrep
�n 
STop�m 
�l .R*chFindMtch���     TEXT
�k 
MSpc
�j 
SLin
�i 
ELin
�h 
FnIn
�g 
clin
�f 
RplP
�e .R*chGSubutxt    ��� null
�d 
MTxt�c 0 list_position  
�b 
cobj
�a 
bool�` 0 pagegen pageGen�������������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �8*a �k/a �k/)a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�O �kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPY h[OY�OPUU� �_��^�]"#�\�_ 0 newsgen newsGen�^ �[$�[ $  �Z�Y�Z &0 masterstogenerate mastersToGenerate�Y 0 theday theDay�]  " �X�W�V�U�X &0 masterstogenerate mastersToGenerate�W 0 theday theDay�V 0 p10_days  �U 0 p14_days  # A #�T�S*048;BFJMTX\_eimpz�����������������������"'+/2;@DHK�T �S 0 pagegen pageGen�\Y�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y h  �RY�Q�P%&�O�R 0 featsgen featsGen�Q �N'�N '  �M�L�M &0 masterstogenerate mastersToGenerate�L 0 theday theDay�P  % �K�J�I�H�K &0 masterstogenerate mastersToGenerate�J 0 theday theDay�I 0 p10_days  �H 0 p14_days  & Lelquy|�G�F�������������������������� *26:=HUXbfjmz~����������������������G �F 0 pagegen pageGen�O���  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . ra /a 0lvE�Oa 1a 2a 3a 4�vE�O�� *a 5a 6a 7a 8�+ Y 9�� *a 9a :a ;a <�+ Y �a =  *a >a ?a @a A�+ Y hY hO�a B *a Ca Da Ea F�+ Y hO�a G *a Ha Ia Ja K�+ Y h �E��D�C()�B�E 0 artsgen artsGen�D �A*�A *  �@�@ &0 masterstogenerate mastersToGenerate�C  ( �?�? &0 masterstogenerate mastersToGenerate) 	�>�='+/2<DHLO�> �= 0 pagegen pageGen�B >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h �<]�;�:+,�9�< 0 	sportsgen 	sportsGen�; �8-�8 -  �7�7 &0 masterstogenerate mastersToGenerate�:  + �6�6 &0 masterstogenerate mastersToGenerate, Sgoswz�5�4��������������������������!%(/37:@DHKU]aehoswz�������������������������5 �4 0 pagegen pageGen�9��� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h �3.�2�1/0�0
�3 .aevtoappnull  �   � ****. k     511  `22  m33  w44  ��/�/  �2  �1  /  0 
 k�.�-�, t�+�* ��)�(
�. elnteNvr
�- 
pScr
�, 
UIAc�+ 0 	genprompt 	genPrompt
�* elnteInA
�) .miscactvnull��� ��� obj 
�( .aevtodocnull  �    alis�0 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U ascr  ��ޭ