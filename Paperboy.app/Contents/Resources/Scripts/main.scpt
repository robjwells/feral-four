FasdUAS 1.101.10   ��   ��    k             l     ��  ��    : 4	Paperboy, a better Morning Star news-page generator     � 	 	 h 	 P a p e r b o y ,   a   b e t t e r   M o r n i n g   S t a r   n e w s - p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    " 	Created on			June 15th 2012     �   8 	 C r e a t e d   o n 	 	 	 J u n e   1 5 t h   2 0 1 2      l     ��  ��    " 	Last updated		July 7th 2012     �   8 	 L a s t   u p d a t e d 	 	 J u l y   7 t h   2 0 1 2      l     ��������  ��  ��        l      ��   ��    � � Description: This generates the pages needed by the subs desk - news pages and a few others. It has a different name because it�s written in a very different way to previous scripts and isn�t finished.      � ! !�   D e s c r i p t i o n :   T h i s   g e n e r a t e s   t h e   p a g e s   n e e d e d   b y   t h e   s u b s   d e s k   -   n e w s   p a g e s   a n d   a   f e w   o t h e r s .   I t   h a s   a   d i f f e r e n t   n a m e   b e c a u s e   i t  s   w r i t t e n   i n   a   v e r y   d i f f e r e n t   w a y   t o   p r e v i o u s   s c r i p t s   a n d   i s n  t   f i n i s h e d .   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & � �	Status: Made changes to generation options, added an "embargo box" handler with calls in the generation blocks. Updated all handlers, now canonically stored in St Ann's.scpt	    ' � ( (^ 	 S t a t u s :   M a d e   c h a n g e s   t o   g e n e r a t i o n   o p t i o n s ,   a d d e d   a n   " e m b a r g o   b o x "   h a n d l e r   w i t h   c a l l s   i n   t h e   g e n e r a t i o n   b l o c k s .   U p d a t e d   a l l   h a n d l e r s ,   n o w   c a n o n i c a l l y   s t o r e d   i n   S t   A n n ' s . s c p t 	 %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   / D > Global variables that are needed in handlers at some point --    0 � 1 1 |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - .  2 3 2 p       4 4 ������ 0 theday theDay��   3  5 6 5 p       7 7 ������ 0 themonth theMonth��   6  8 9 8 p       : : ������ 0 thedate theDate��   9  ; < ; p       = = ������ 0 theyear theYear��   <  > ? > p       @ @ ������ 0 months_list  ��   ?  A B A l      C D E C p       F F ������ 0 fileslug fileSlug��   D > 8 The short code used at the start of the new file�s name    E � G G p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e B  H I H l      J K L J p       M M ������ 0 filedate fileDate��   K 5 / The short date used to name the InDesign files    L � N N ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s I  O P O l      Q R S Q p       T T ������ 0 pagedate pageDate��   R 6 0 The full date used in the InDesign page�s folio    S � U U `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o P  V W V l      X Y Z X p       [ [ ������ $0 freshpagesfolder freshPagesFolder��   Y . ( Where the newly created files are saved    Z � \ \ P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d W  ] ^ ] l      _ ` a _ p       b b ������  0 masterdocument masterDocument��   ` * $ The actual InDesign master document    a � c c H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t ^  d e d l      f g h f p       i i ������ 0 
mastername 
masterName��   g C = The name of the master page/spread to be applied in InDesign    h � j j z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n e  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q   Unchanging variables --    r � s s 0   U n c h a n g i n g   v a r i a b l e s   - - p  t u t l     v���� v r      w x w m      y y � z z j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : x o      ���� $0 freshpagesfolder freshPagesFolder��  ��   u  { | { l    }���� } r     ~  ~ m     � � � � � p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d  o      ����  0 masterdocument masterDocument��  ��   |  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � J     � �  � � � m    	 � � � � �  N e w s      s p l i t s �  � � � m   	 
 � � � � � * N e w s      2 - 3   a s   s i n g l e s �  � � � m   
  � � � � � * N e w s      4 - 5   a s   s i n g l e s �  � � � m     � � � � � * N e w s      6 - 7   a s   s i n g l e s �  � � � m     � � � � �  T V �  ��� � m     � � � � �  L e t t e r s��   � o      ���� 0 weekday_pages  ��  ��   �  � � � l   . ����� � r    . � � � J    * � �  � � � m     � � � � �  N e w s      s p l i t s �  � � � m     � � � � � * N e w s      2 - 3   a s   s i n g l e s �  � � � m     � � � � � * N e w s      4 - 5   a s   s i n g l e s �  � � � m     � � � � � * N e w s      6 - 7   a s   s i n g l e s �  � � � m     � � � � �  T V �  � � � m     � � � � �  L e t t e r s �  � � � m      � � � � �  S t r u g g l e �  � � � m     # � � � � �  S i n g l e   s t r u g g l e �  ��� � m   # & � � � � �  R e d   L i s t��   � o      ���� 0 weekend_pages  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  / G ����� � r   / G � � � J   / C � �  � � � m   / 2 � � � � �  M o n d a y �  � � � m   2 5 � � � � �  T u e s d a y �  � � � m   5 8 � � � � �  W e d n e s d a y �  � � � m   8 ; � � � � �  T h u r s d a y �  � � � m   ; > � � � � �  F r i d a y �  ��� � m   > A � � � � �  S a t u r d a y��   � o      ���� 0 	days_list  ��  ��   �  � � � l  H t ����� � r   H t � � � J   H p � �  � � � m   H K � � � � �  J a n u a r y �  � � � m   K N � � � � �  F e b r u a r y �  � � � m   N Q � � � � � 
 M a r c h �  � � � m   Q T � � � � � 
 A p r i l �  �  � m   T W �  M a y   m   W Z �  J u n e  m   Z ]		 �

  J u l y  m   ] ` �  A u g u s t  m   ` c �  S e p t e m b e r  m   c f �  O c t o b e r  m   f i �  N o v e m b e r �� m   i l �  D e c e m b e r��   � o      ���� 0 months_list  ��  ��   �  l     ��������  ��  ��    !  l     ��������  ��  ��  ! "#" l     ��$%��  $   User prompts --   % �&&     U s e r   p r o m p t s   - -# '(' l     ��������  ��  ��  ( )*) l      ��+,��  +  Get the date    , �--  G e t   t h e   d a t e  * ./. l  u �0����0 r   u �121 c   u �343 l  u �5����5 I  u ���67
�� .gtqpchltns    @   @ ns  6 o   u x���� 0 	days_list  7 ��89
�� 
prmp8 m   { ~:: �;; 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :9 ��<��
�� 
appr< m   � �== �>> ( N e w s   p a g e s   g e n e r a t o r��  ��  ��  4 m   � ���
�� 
TEXT2 o      ���� 0 theday theDay��  ��  / ?@? l  � �A����A Z  � �BC����B =  � �DED 1   � ���
�� 
rsltE m   � �FF �GG 
 f a l s eC R   � �����H
�� .ascrerr ****      � ****��  H ��I��
�� 
errnI m   � ���������  ��  ��  ��  ��  @ JKJ l  � �L����L r   � �MNM c   � �OPO l  � �Q����Q I  � ���RS
�� .gtqpchltns    @   @ ns  R o   � ����� 0 months_list  S ��TU
�� 
prmpT m   � �VV �WW , P l e a s e   p i c k   t h e   m o n t h :U ��X��
�� 
apprX m   � �YY �ZZ ( N e w s   p a g e s   g e n e r a t o r��  ��  ��  P m   � ���
�� 
TEXTN o      ���� 0 themonth theMonth��  ��  K [\[ l  � �]����] Z  � �^_����^ =  � �`a` 1   � ���
�� 
rslta m   � �bb �cc 
 f a l s e_ R   � ���~d
� .ascrerr ****      � ****�~  d �}e�|
�} 
errne m   � ��{�{���|  ��  ��  ��  ��  \ fgf l  �h�z�yh r   �iji c   � klk l  � �m�x�wm n   � �non 1   � ��v
�v 
ttxto l  � �p�u�tp I  � ��sqr
�s .sysodlogaskr        TEXTq m   � �ss �tt * P l e a s e   t y p e   t h e   d a t e :r �ruv
�r 
dtxtu m   � �ww �xx  v �qy�p
�q 
appry m   � �zz �{{ ( N e w s   p a g e s   g e n e r a t o r�p  �u  �t  �x  �w  l m   � ��o
�o 
TEXTj o      �n�n 0 thedate theDate�z  �y  g |}| l ~�m�l~ Z ��k�j = ��� 1  �i
�i 
rslt� m  �� ��� 
 f a l s e� R  �h�g�
�h .ascrerr ****      � ****�g  � �f��e
�f 
errn� m  �d�d���e  �k  �j  �m  �l  } ��� l ?��c�b� r  ?��� c  ;��� l 7��a�`� n  7��� 1  37�_
�_ 
ttxt� l 3��^�]� I 3�\��
�\ .sysodlogaskr        TEXT� m  !�� ��� * P l e a s e   t y p e   t h e   y e a r :� �[��
�[ 
dtxt� m  $'�� ���  � �Z��Y
�Z 
appr� m  *-�� ��� ( N e w s   p a g e s   g e n e r a t o r�Y  �^  �]  �a  �`  � m  7:�X
�X 
TEXT� o      �W�W 0 theyear theYear�c  �b  � ��� l @X��V�U� Z @X���T�S� = @G��� 1  @C�R
�R 
rslt� m  CF�� ��� 
 f a l s e� R  JT�Q�P�
�Q .ascrerr ****      � ****�P  � �O��N
�O 
errn� m  NQ�M�M���N  �T  �S  �V  �U  � ��� l     �L�K�J�L  �K  �J  � ��� l      �I���I  �  Get the pages to create   � ��� . G e t   t h e   p a g e s   t o   c r e a t e� ��� l Y���H�G� Z  Y�����F� > Y`��� o  Y\�E�E 0 theday theDay� m  \_�� ���  S a t u r d a y� k  c��� ��� r  c���� l c���D�C� I c��B��
�B .gtqpchltns    @   @ ns  � o  cd�A�A 0 weekday_pages  � �@��
�@ 
prmp� l gv��?�>� b  gv��� b  gr��� b  gn��� m  gj�� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  jm�=
�= 
ret � o  nq�<
�< 
ret � m  ru�� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�?  �>  � �;��
�; 
appr� m  y|�� ��� ( N e w s   p a g e s   g e n e r a t o r� �:��9
�: 
mlsl� m  ��8
�8 boovtrue�9  �D  �C  � o      �7�7 &0 masterstogenerate mastersToGenerate� ��6� Z �����5�4� = ����� 1  ���3
�3 
rslt� m  ���2
�2 boovfals� R  ���1�0�
�1 .ascrerr ****      � ****�0  � �/��.
�/ 
errn� m  ���-�-���.  �5  �4  �6  � ��� = ����� o  ���,�, 0 theday theDay� m  ���� ���  S a t u r d a y� ��+� k  ���� ��� r  ����� l ����*�)� I ���(��
�( .gtqpchltns    @   @ ns  � o  ���'�' 0 weekend_pages  � �&��
�& 
prmp� l ����%�$� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���#
�# 
ret � o  ���"
�" 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�%  �$  � �!��
�! 
appr� m  ���� ��� ( N e w s   p a g e s   g e n e r a t o r� � ��
�  
mlsl� m  ���
� boovtrue�  �*  �)  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z ������� = ����� 1  ���
� 
rslt� m  ���
� boovfals� R  ���� 
� .ascrerr ****      � ****�    ��
� 
errn m  �������  �  �  �  �+  �F  �H  �G  �  l     ����  �  �    l     ����  �  �    l     �	�     Create the date --   	 �

 &   C r e a t e   t h e   d a t e   - -  l     ��
�	�  �
  �	    l ���� I  ������ "0 create_pagedate create_pageDate�  �  �  �    l     ����  �  �    l ��� �� I  ���������� "0 create_filedate create_fileDate��  ��  �   ��    l     ��������  ��  ��    l     ��������  ��  ��    l     ����     Generate the pages --    � ,   G e n e r a t e   t h e   p a g e s   - -  l     ��������  ��  ��    !  l �"����" O �#$# r  %&% m  ��
�� elnteNvr& n      '(' 1  	��
�� 
UIAc( 1  	��
�� 
pScr$ m  ��))�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ! *+* l     ��������  ��  ��  + ,-, l �.����. Z  �/0����/ E 121 o  ���� &0 masterstogenerate mastersToGenerate2 m  33 �44  N e w s      s p l i t s0 k  �55 676 l ��������  ��  ��  7 898 Z  �:;<��: > !=>= o  ���� 0 theday theDay> m   ?? �@@  S a t u r d a y; l $gABCA k  $gDD EFE r  $+GHG m  $'II �JJ  N e w s - F r o n tH o      ���� 0 
mastername 
masterNameF KLK r  ,3MNM m  ,/OO �PP  1 _ F r o n tN o      ���� 0 fileslug fileSlugL Q��Q O  4gRSR k  :fTT UVU I :?��W��
�� .aevtodocnull  �    alisW o  :;����  0 masterdocument masterDocument��  V XYX n @EZ[Z I  AE�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  [  f  @AY \]\ n FK^_^ I  GK��������  0 drawembargobox drawEmbargoBox��  ��  _  f  FG] `a` n LQbcb I  MQ�������� 0 clean_save_r clean_save_R��  ��  c  f  LMa d��d O Rfefe I Ze����g
�� .CoReclosnull���     obj ��  g ��h��
�� 
svoph m  ^a��
�� savoyes ��  f l RWi����i 1  RW��
�� 
pacd��  ��  ��  S m  47jj�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  B ; 5 If block to create the weekday or weekend front page   C �kk j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e< lml = jqnon o  jm���� 0 theday theDayo m  mppp �qq  S a t u r d a ym r��r k  t�ss tut r  t{vwv m  twxx �yy $ N e w s - W e e k e n d   f r o n tw o      ���� 0 
mastername 
masterNameu z{z r  |�|}| m  |~~ �  1 _ F r o n t} o      ���� 0 fileslug fileSlug{ ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ����������  0 drawembargobox drawEmbargoBox��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �������� 1  ����
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  9 ��� l ����������  ��  ��  � ��� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� * N e w s      2 - 3   a s   s i n g l e s� l �_���� k  �_�� ��� r  ����� m  ���� ���  N e w s - H o m e - L S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 _ H o m e� o      ���� 0 fileslug fileSlug� ��� O  ���� k  ��� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ��������� 20 changepagenumber_single changePageNumber_single� ���� m  ���� ���  2��  ��  �  f  ��� ��� n ����� I  ����������  0 drawembargobox drawEmbargoBox��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ���� I �����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  	��
�� savoyes ��  � l ������� 1  ���
�� 
pacd��  ��  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l ��������  ��  ��  � ��� r  ��� m  �� ���  N e w s - H o m e - R S� o      ���� 0 
mastername 
masterName� ��� r  "��� m  �� ���  3 _ H o m e� o      ���� 0 fileslug fileSlug� ���� O  #_��� k  )^�� ��� I ).�����
�� .aevtodocnull  �    alis� o  )*����  0 masterdocument masterDocument��  � ��� n /4��� I  04�������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  /0� ��� n 5=��� I  6=������� 20 changepagenumber_single changePageNumber_single� ���� m  69�� ���  3��  ��  �  f  56� ��� n >C��� I  ?C��~�}�  0 drawembargobox drawEmbargoBox�~  �}  �  f  >?� ��� n DI� � I  EI�|�{�z�| 0 clean_save_r clean_save_R�{  �z     f  DE� �y O J^ I R]�x�w
�x .CoReclosnull���     obj �w   �v�u
�v 
svop m  VY�t
�t savoyes �u   l JO�s�r 1  JO�q
�q 
pacd�s  �r  �y  � m  #&�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � 3 - If block to create 2-3 as singles or a split   � � Z   I f   b l o c k   t o   c r e a t e   2 - 3   a s   s i n g l e s   o r   a   s p l i t��  � k  b�		 

 r  bi m  be �  N e w s - H o m e - S p l i t o      �p�p 0 
mastername 
masterName  r  jq m  jm �  2 - 3 _ H o m e o      �o�o 0 fileslug fileSlug �n O  r� k  x�  I x}�m�l
�m .aevtodocnull  �    alis o  xy�k�k  0 masterdocument masterDocument�l    n ~�  I  ��j�i�h�j >0 applymaster_changedate_spread applyMaster_changeDate_spread�i  �h     f  ~ !"! n ��#$# I  ���g%�f�g 20 changepagenumber_spread changePageNumber_spread% &�e& m  ��'' �((  2�e  �f  $  f  ��" )*) n ��+,+ I  ���d�c�b�d  0 drawembargobox drawEmbargoBox�c  �b  ,  f  ��* -.- n ��/0/ I  ���a�`�_�a 0 clean_save_l clean_save_L�`  �_  0  f  ��. 1�^1 O ��232 I ���]�\4
�] .CoReclosnull���     obj �\  4 �[5�Z
�[ 
svop5 m  ���Y
�Y savoyes �Z  3 l ��6�X�W6 1  ���V
�V 
pacd�X  �W  �^   m  ru77�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �n  � 898 l ���U�T�S�U  �T  �S  9 :;: Z  ��<=�R>< E ��?@? o  ���Q�Q &0 masterstogenerate mastersToGenerate@ m  ��AA �BB * N e w s      4 - 5   a s   s i n g l e s= l �RCDEC k  �RFF GHG r  ��IJI m  ��KK �LL  N e w s - H o m e - L SJ o      �P�P 0 
mastername 
masterNameH MNM r  ��OPO m  ��QQ �RR  4 _ H o m eP o      �O�O 0 fileslug fileSlugN STS O  �UVU k  �WW XYX I ���NZ�M
�N .aevtodocnull  �    alisZ o  ���L�L  0 masterdocument masterDocument�M  Y [\[ n ��]^] I  ���K�J�I�K >0 applymaster_changedate_single applyMaster_changeDate_single�J  �I  ^  f  ��\ _`_ n ��aba I  ���Hc�G�H 20 changepagenumber_single changePageNumber_singlec d�Fd m  ��ee �ff  4�F  �G  b  f  ��` ghg n ��iji I  ���E�D�C�E  0 drawembargobox drawEmbargoBox�D  �C  j  f  ��h klk n ��mnm I  ���B�A�@�B 0 clean_save_l clean_save_L�A  �@  n  f  ��l o�?o O �pqp I ��>�=r
�> .CoReclosnull���     obj �=  r �<s�;
�< 
svops m  ���:
�: savoyes �;  q l ��t�9�8t 1  ���7
�7 
pacd�9  �8  �?  V m  ��uu�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  T vwv l �6�5�4�6  �5  �4  w xyx r  z{z m  	|| �}}  N e w s - H o m e - R S{ o      �3�3 0 
mastername 
masterNamey ~~ r  ��� m  �� ���  5 _ H o m e� o      �2�2 0 fileslug fileSlug ��1� O  R��� k  Q�� ��� I !�0��/
�0 .aevtodocnull  �    alis� o  �.�.  0 masterdocument masterDocument�/  � ��� n "'��� I  #'�-�,�+�- >0 applymaster_changedate_single applyMaster_changeDate_single�,  �+  �  f  "#� ��� n (0��� I  )0�*��)�* 20 changepagenumber_single changePageNumber_single� ��(� m  ),�� ���  5�(  �)  �  f  ()� ��� n 16��� I  26�'�&�%�'  0 drawembargobox drawEmbargoBox�&  �%  �  f  12� ��� n 7<��� I  8<�$�#�"�$ 0 clean_save_r clean_save_R�#  �"  �  f  78� ��!� O =Q��� I EP� ��
�  .CoReclosnull���     obj �  � ���
� 
svop� m  IL�
� savoyes �  � l =B���� 1  =B�
� 
pacd�  �  �!  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �1  D 3 - If block to create 4-5 as singles or a split   E ��� Z   I f   b l o c k   t o   c r e a t e   4 - 5   a s   s i n g l e s   o r   a   s p l i t�R  > k  U��� ��� r  U\��� m  UX�� ���  N e w s - H o m e - S p l i t� o      �� 0 
mastername 
masterName� ��� r  ]d��� m  ]`�� ���  4 - 5 _ H o m e� o      �� 0 fileslug fileSlug� ��� O  e���� k  k��� ��� I kp���
� .aevtodocnull  �    alis� o  kl��  0 masterdocument masterDocument�  � ��� n qv��� I  rv���� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  qr� ��� n w��� I  x���� 20 changepagenumber_spread changePageNumber_spread� ��� m  x{�� ���  4�  �  �  f  wx� ��� n ����� I  �����
�  0 drawembargobox drawEmbargoBox�  �
  �  f  ��� ��� n ����� I  ���	���	 0 clean_save_l clean_save_L�  �  �  f  ��� ��� O ����� I �����
� .CoReclosnull���     obj �  � ���
� 
svop� m  ���
� savoyes �  � l ���� ��� 1  ����
�� 
pacd�   ��  �  � m  eh���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  ; ��� l ����������  ��  ��  � ��� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� & N e w s      6 - 7   a s   s p l i t� l �E���� k  �E�� ��� r  ����� m  ���� ���  N e w s - F o r e i g n - L S� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  6 _ F o r e i g n� o      ���� 0 fileslug fileSlug� ��� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ��� � I  �������� 20 changepagenumber_single changePageNumber_single �� m  �� �  6��  ��     f  ���  n �� I  ����������  0 drawembargobox drawEmbargoBox��  ��    f  �� 	
	 n �� I  ���������� 0 clean_save_l clean_save_L��  ��    f  ��
 �� O �� I ������
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ����
�� savoyes ��   l ������ 1  ����
�� 
pacd��  ��  ��  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l ����������  ��  ��    r  �  m  �� �  N e w s - F o r e i g n - R S o      ���� 0 
mastername 
masterName  r   m     �!!  7 _ F o r e i g n o      ���� 0 fileslug fileSlug "��" O  	E#$# k  D%% &'& I ��(��
�� .aevtodocnull  �    alis( o  ����  0 masterdocument masterDocument��  ' )*) n +,+ I  �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  ,  f  * -.- n #/0/ I  #��1���� 20 changepagenumber_single changePageNumber_single1 2��2 m  33 �44  7��  ��  0  f  . 565 n $)787 I  %)��������  0 drawembargobox drawEmbargoBox��  ��  8  f  $%6 9:9 n */;<; I  +/�������� 0 clean_save_r clean_save_R��  ��  <  f  *+: =��= O 0D>?> I 8C����@
�� .CoReclosnull���     obj ��  @ ��A��
�� 
svopA m  <?��
�� savoyes ��  ? l 05B����B 1  05��
�� 
pacd��  ��  ��  $ m  	CC�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � 3 - If block to create 6-7 as singles or a split   � �DD Z   I f   b l o c k   t o   c r e a t e   6 - 7   a s   s i n g l e s   o r   a   s p l i t��  � k  H�EE FGF r  HOHIH m  HKJJ �KK $ N e w s - F o r e i g n - S p l i tI o      ���� 0 
mastername 
masterNameG LML r  PWNON m  PSPP �QQ  6 - 7 _ F o r e i g nO o      ���� 0 fileslug fileSlugM R��R O  X�STS k  ^�UU VWV I ^c��X��
�� .aevtodocnull  �    alisX o  ^_����  0 masterdocument masterDocument��  W YZY n di[\[ I  ei�������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  \  f  deZ ]^] n jr_`_ I  kr��a���� 20 changepagenumber_spread changePageNumber_spreada b��b m  kncc �dd  6��  ��  `  f  jk^ efe n sxghg I  tx��������  0 drawembargobox drawEmbargoBox��  ��  h  f  stf iji n y~klk I  z~�������� 0 clean_save_l clean_save_L��  ��  l  f  yzj m��m O �non I ������p
�� .CoReclosnull���     obj ��  p ��q��
�� 
svopq m  ����
�� savoyes ��  o l �r����r 1  ���
�� 
pacd��  ��  ��  T m  X[ss�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � t��t l ����������  ��  ��  ��  ��  ��  ��  ��  - uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy l �D{����{ Z  �D|}����| E ��~~ o  ������ &0 masterstogenerate mastersToGenerate m  ���� ���  T V} Z  �@������ > ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� k  ���� ��� l ������ r  ����� m  ���� ���  F e a t - 1 2 - 1 3� o      ���� 0 
mastername 
masterName� * $ Create the weekday TV/features page   � ��� H   C r e a t e   t h e   w e e k d a y   T V / f e a t u r e s   p a g e� ��� r  ����� m  ���� ���  1 2 - 1 3 _ T V� o      ���� 0 fileslug fileSlug� ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  �  f  ��� ��� n ����� I  ���������� (0 changelegaldate_12 changeLegalDate_12��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_l clean_save_L��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � l �����~� 1  ���}
�} 
pacd�  �~  ��  � m  �����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  � ��� = ����� o  ���|�| 0 theday theDay� m  ���� ���  S a t u r d a y� ��{� k  �<�� ��� l ����� r  ���� m  ��� ���  T V - W e e k e n d� o      �z�z 0 
mastername 
masterName� !  Create the weekend TV page   � ��� 6   C r e a t e   t h e   w e e k e n d   T V   p a g e� ��� r  ��� m  
�� ���  1 8 - 1 9 _ T V� o      �y�y 0 fileslug fileSlug� ��x� O  <��� k  ;�� ��� I �w��v
�w .aevtodocnull  �    alis� o  �u�u  0 masterdocument masterDocument�v  � ��� n  ��� I   �t�s�r�t >0 applymaster_changedate_spread applyMaster_changeDate_spread�s  �r  �  f  � ��� n !&��� I  "&�q�p�o�q 0 clean_save_l clean_save_L�p  �o  �  f  !"� ��n� O ';��� I /:�m�l�
�m .CoReclosnull���     obj �l  � �k��j
�k 
svop� m  36�i
�i savoyes �j  � l ',��h�g� 1  ',�f
�f 
pacd�h  �g  �n  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �x  �{  ��  ��  ��  ��  ��  z ��� l     �e�d�c�e  �d  �c  � ��� l     �b�a�`�b  �a  �`  � ��� l E��_�^� Z  E���]�\� E EL��� o  EH�[�[ &0 masterstogenerate mastersToGenerate� m  HK�� ���  L e t t e r s� k  O�� ��� r  OV��� m  OR�� ���  F e a t - L e t t e r s� o      �Z�Z 0 
mastername 
masterName� ��� l Wc���� r  Wc��� J  W_�� ��� m  WZ   �  M o n d a y� �Y m  Z] �  W e d n e s d a y�Y  � o      �X�X 0 p10_days  � = 7 These two lists determine what the page number will be   � � n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e�  r  dx	 J  dt

  m  dg �  T u e s d a y  m  gj �  T h u r s d a y  m  jm �  F r i d a y �W m  mp �  S a t u r d a y�W  	 o      �V�V 0 p14_days    l yy�U�T�S�U  �T  �S   �R Z  y�Q E y� !  o  y|�P�P 0 p10_days  ! o  |�O�O 0 theday theDay k  ��"" #$# r  ��%&% m  ��'' �((  1 0 _ L e t t e r s& l     )�N�M) o      �L�L 0 fileslug fileSlug�N  �M  $ *+* O  ��,-, k  ��.. /0/ I ���K1�J
�K .aevtodocnull  �    alis1 o  ���I�I  0 masterdocument masterDocument�J  0 232 n ��454 I  ���H�G�F�H >0 applymaster_changedate_single applyMaster_changeDate_single�G  �F  5  f  ��3 676 n ��898 I  ���E:�D�E 20 changepagenumber_single changePageNumber_single: ;�C; m  ��<< �==  1 0�C  �D  9  f  ��7 >?> n ��@A@ I  ���B�A�@�B 0 clean_save_l clean_save_L�A  �@  A  f  ��? B�?B O ��CDC I ���>�=E
�> .CoReclosnull���     obj �=  E �<F�;
�< 
svopF m  ���:
�: savoyes �;  D 1  ���9
�9 
pacd�?  - m  ��GG�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  + H�8H l ���7�6�5�7  �6  �5  �8   IJI E ��KLK o  ���4�4 0 p14_days  L o  ���3�3 0 theday theDayJ M�2M k  �NN OPO r  ��QRQ m  ��SS �TT  1 4 _ L e t t e r sR l     U�1�0U o      �/�/ 0 fileslug fileSlug�1  �0  P V�.V O  �WXW k  �YY Z[Z I ���-\�,
�- .aevtodocnull  �    alis\ o  ���+�+  0 masterdocument masterDocument�,  [ ]^] n ��_`_ I  ���*�)�(�* >0 applymaster_changedate_single applyMaster_changeDate_single�)  �(  `  f  ��^ aba n ��cdc I  ���'e�&�' 20 changepagenumber_single changePageNumber_singlee f�%f m  ��gg �hh  1 4�%  �&  d  f  ��b iji n ��klk I  ���$�#�"�$ 0 clean_save_l clean_save_L�#  �"  l  f  ��j m�!m O �non I � �p
�  .CoReclosnull���     obj �  p �q�
� 
svopq m  �
� savoyes �  o 1  ���
� 
pacd�!  X m  ��rr�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �.  �2  �Q  �R  �]  �\  �_  �^  � sts l     ����  �  �  t uvu l     ����  �  �  v wxw l by��y Z  bz{��z E |}| o  �� &0 masterstogenerate mastersToGenerate} m  ~~ �  S t r u g g l e{ k  !^�� ��� r  !(��� m  !$�� ���  N e w s - S t r u g g l e� o      �� 0 
mastername 
masterName� ��� r  )0��� m  ),�� ���  1 0 - 1 1 _ S t r u g g l e� l     ���� o      �� 0 fileslug fileSlug�  �  � ��� O  1^��� k  7]�� ��� I 7<�
��	
�
 .aevtodocnull  �    alis� o  78��  0 masterdocument masterDocument�	  � ��� n =B��� I  >B���� >0 applymaster_changedate_spread applyMaster_changeDate_spread�  �  �  f  =>� ��� n CH��� I  DH���� 0 clean_save_l clean_save_L�  �  �  f  CD� ��� O I]��� I Q\� ���
�  .CoReclosnull���     obj ��  � �����
�� 
svop� m  UX��
�� savoyes ��  � 1  IN��
�� 
pacd�  � m  14���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  �  �  �  �  x ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l c������� Z  c�������� E cj��� o  cf���� &0 masterstogenerate mastersToGenerate� m  fi�� ���  S i n g l e   s t r u g g l e� k  m��� ��� r  mt��� m  mp�� ��� ( N e w s - S t r u g g l e   s i n g l e� o      ���� 0 
mastername 
masterName� ��� r  u|��� m  ux�� ���  1 1 _ S t r u g g l e� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  }���� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� 0 clean_save_r clean_save_R��  ��  �  f  ��� ���� O ����� I �������
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m  ����
�� savoyes ��  � 1  ����
�� 
pacd��  � m  }����                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l � ������ Z  � ������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  R e d   L i s t� k  ���� ��� r  ����� m  ���� ���  F e a t - R e d   L i s t� o      ���� 0 
mastername 
masterName� ��� r  ����� m  ���� ���  2 0 _ R e d L i s t� l     ������ o      ���� 0 fileslug fileSlug��  ��  � ���� O  ����� k  ���� ��� I �������
�� .aevtodocnull  �    alis� o  ������  0 masterdocument masterDocument��  � ��� n ����� I  ���������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��  �  f  ��� ��� n ����� I  ���������� (0 changelegaldate_20 changeLegalDate_20��  ��  �  f  ��� ��� n ��� � I  ���������� 0 clean_save_l clean_save_L��  ��     f  ��� �� O �� I ������
�� .CoReclosnull���     obj ��   ����
�� 
svop m  ����
�� savoyes ��   1  ����
�� 
pacd��  � m  ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  ��  ��  ��  �  l     ��������  ��  ��   	
	 l ���� O  r   m  
��
�� elnteInA n       1  ��
�� 
UIAc 1  
��
�� 
pScr m  �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��  
  l     ��������  ��  ��    l (���� O  ( k  '  I !������
�� .miscactvnull��� ��� obj ��  ��   �� I "'����
�� .aevtodocnull  �    alis o  "#���� $0 freshpagesfolder freshPagesFolder��  ��   m  �                                                                                  MACS  alis    Z  SSD                        �@��H+     <
Finder.app                                                       ���(��        ����  	                CoreServices    �@��      �(��       <   /   .  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��    !  l     ��������  ��  ��  ! "#" l     ��������  ��  ��  # $%$ l     ��&'��  &   Handler definitions --   ' �(( .   H a n d l e r   d e f i n i t i o n s   - -% )*) l     ��������  ��  ��  * +,+ l     ��������  ��  ��  , -.- l      ��/0��  / X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	   0 �11 � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	. 232 i     454 I      �������� "0 create_pagedate create_pageDate��  ��  5 k    �66 787 r     
9:9 J     ;; <=< m     >> �??  J a n u a r y= @A@ m    BB �CC 
 M a r c hA DED m    FF �GG  M a yE HIH m    JJ �KK  J u l yI LML m    NN �OO  A u g u s tM P��P m    QQ �RR  O c t o b e r��  : o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths8 STS r    UVU J    WW XYX m    ZZ �[[ 
 A p r i lY \]\ m    ^^ �__  J u n e] `a` m    bb �cc  S e p t e m b e ra d��d m    ee �ff  N o v e m b e r��  V o      ���� "0 thirtydaymonths ThirtyDayMonthsT ghg l   ��������  ��  ��  h i��i Z   �jkl��j >   mnm o    ���� 0 theday theDayn m    oo �pp  S a t u r d a yk l   5qrsq k    5tt uvu r    3wxw l   /y����y b    /z{z b    +|}| b    '~~ b    #��� b    ��� b    ��� o    ���� 0 theday theDay� m    �� ���   � o    ���� 0 themonth theMonth� m    "�� ���    o   # &���� 0 thedate theDate} m   ' *�� ���   { o   + .���� 0 theyear theYear��  ��  x o      ���� 0 pagedate pageDatev ���� l  4 4����~��  �  �~  ��  r + % Does the page date for every weekday   s ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a yl ��� F   8 U��� F   8 K��� =  8 =��� o   8 9�}�} 0 theday theDay� m   9 <�� ���  S a t u r d a y� =  @ G��� o   @ C�|�| 0 thedate theDate� m   C F�� ���  3 0� E  N Q��� o   N O�{�{ "0 thirtydaymonths ThirtyDayMonths� o   O P�z�z 0 themonth theMonth� ��� l  X ����� k   X ��� ��� Y   X ���y���x� l  h ����� Z  h ����w�v� =  h r��� n   h p��� 4   k p�u�
�u 
cobj� o   n o�t�t 0 i  � o   h k�s�s 0 months_list  � o   p q�r�r 0 themonth theMonth� r   u ���� l  u ��q�p� n   u ��� 4   x �o�
�o 
cobj� l  { ~��n�m� [   { ~��� o   { |�l�l 0 i  � m   | }�k�k �n  �m  � o   u x�j�j 0 months_list  �q  �p  � o      �i�i 0 secondmonth secondMonth�w  �v  � V P This repeat block here grabs the name of the next month to use in the page date   � ��� �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�y 0 i  � m   [ \�h�h � I  \ c�g��f
�g .corecnte****       ****� o   \ _�e�e 0 months_list  �f  �x  � ��� l  � ����� r   � ���� l  � ���d�c� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���   S a t u r d a y / S u n d a y  � o   � ��b�b 0 themonth theMonth� m   � ��� ���    3 0 -� o   � ��a�a 0 secondmonth secondMonth� m   � ��� ���    1  � o   � ��`�` 0 theyear theYear�d  �c  � o      �_�_ 0 pagedate pageDate� P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   � ��� �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "� ��^� l  � ��]�\�[�]  �\  �[  �^  � I C Deals with Saturdays at the end of 30-day months (uses list above)   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )� ��� F   � ���� F   � ���� =  � ���� o   � ��Z�Z 0 theday theDay� m   � ��� ���  S a t u r d a y� =  � ���� o   � ��Y�Y 0 thedate theDate� m   � ��� ���  3 1� E  � ���� o   � ��X�X (0 thirtyonedaymonths ThirtyOneDayMonths� o   � ��W�W 0 themonth theMonth� ��� l  ����� k   ��� ��� Y   � ���V���U� Z  � ����T�S� =  � ���� n   � ���� 4   � ��R�
�R 
cobj� o   � ��Q�Q 0 i  � o   � ��P�P 0 months_list  � o   � ��O�O 0 themonth theMonth� r   � ���� l  � ���N�M� n   � ���� 4   � ��L 
�L 
cobj  l  � ��K�J [   � � o   � ��I�I 0 i   m   � ��H�H �K  �J  � o   � ��G�G 0 months_list  �N  �M  � o      �F�F 0 secondmonth secondMonth�T  �S  �V 0 i  � m   � ��E�E � I  � ��D�C
�D .corecnte****       **** o   � ��B�B 0 months_list  �C  �U  �  r   � l  �	�A�@	 b   �

 b   �	 b   � b   � b   � � m   � � �   S a t u r d a y / S u n d a y   o   � ��?�? 0 themonth theMonth m   � �    3 1 - o  �>�> 0 secondmonth secondMonth m   �    1   o  	�=�= 0 theyear theYear�A  �@   o      �<�< 0 pagedate pageDate �; l �:�9�8�:  �9  �8  �;  � I C Deals with Saturdays at the end of 31-day months (uses list above)   � � �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e )�  F  5 F  ) !  = "#" o  �7�7 0 theday theDay# m  $$ �%%  S a t u r d a y! ? %&'& o  !�6�6 0 thedate theDate' m  !$(( �))  2 7 = ,1*+* o  ,-�5�5 0 themonth theMonth+ m  -0,, �--  F e b r u a r y ./. l 8M0120 k  8M33 454 r  8K676 l 8G8�4�38 b  8G9:9 b  8C;<; b  8?=>= m  8;?? �@@ 2 S a t u r d a y / S u n d a y   F e b r u a r y  > o  ;>�2�2 0 thedate theDate< m  ?BAA �BB  - M a r c h   1  : o  CF�1�1 0 theyear theYear�4  �3  7 o      �0�0 0 pagedate pageDate5 C�/C l LL�.�-�,�.  �-  �,  �/  1 { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   2 �DD �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 ./ EFE F  PoGHG F  PcIJI = PUKLK o  PQ�+�+ 0 theday theDayL m  QTMM �NN  S a t u r d a yJ = X_OPO o  X[�*�* 0 thedate theDateP m  [^QQ �RR  3 1H = fkSTS o  fg�)�) 0 themonth theMonthT m  gjUU �VV  D e c e m b e rF WXW l r�YZ[Y k  r�\\ ]^] r  r�_`_ l r�a�(�'a b  r�bcb b  r}ded b  ryfgf m  ruhh �ii L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  g o  ux�&�& 0 theyear theYeare m  y|jj �kk  -c l }�l�%�$l [  }�mnm o  }��#�# 0 theyear theYearn m  ���"�" �%  �$  �(  �'  ` o      �!�! 0 pagedate pageDate^ o� o l ������  �  �  �   Z 2 , Deals with Saturdays at the end of December   [ �pp X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e rX qrq = ��sts o  ���� 0 theday theDayt m  ��uu �vv  S a t u r d a yr w�w l ��xyzx k  ��{{ |}| r  ��~~ l ������ b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ���� 0 themonth theMonth� m  ���� ���   � o  ���� 0 thedate theDate� m  ���� ���  -� l ������ [  ����� o  ���� 0 thedate theDate� m  ���� �  �  � m  ���� ���   � o  ���� 0 theyear theYear�  �   o      �� 0 pagedate pageDate} ��� l ������  �  �  �  y 3 - Does the page date for every normal Saturday   z ��� Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�  ��  ��  3 ��� l     ���
�  �  �
  � ��� l     �	���	  �  �  � ��� l      ����  � @ :	Create the short date to name the created InDesign files	   � ��� t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	� ��� i    ��� I      ���� "0 create_filedate create_fileDate�  �  � k     [�� ��� Z     ����� A    ��� c     ��� o     �� 0 thedate theDate� m    � 
�  
long� m    �� ���  1 0� l   ���� r    ��� l   ������ b    ��� m    	�� ���  0� o   	 
���� 0 thedate theDate��  ��  � o      ���� 0 numdate numDate� L F If the date is 1-10 this adds an initial zero to use in the file name   � ��� �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�  � r    ��� o    ���� 0 thedate theDate� o      ���� 0 numdate numDate� ��� l   ��������  ��  ��  � ��� Y    7�������� l  " 2���� Z  " 2������� =  " (��� n   " &��� 4   # &���
�� 
cobj� o   $ %���� 0 i  � o   " #���� 0 months_list  � o   & '���� 0 themonth theMonth� r   + .��� o   + ,���� 0 i  � o      ���� 0 raw_nummonth raw_numMonth��  ��  � d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name   � ��� �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 months_list  ��  ��  � ��� Z   8 I������ A  8 ;��� o   8 9���� 0 raw_nummonth raw_numMonth� m   9 :���� 
� r   > C��� l  > A������ b   > A��� m   > ?�� ���  0� o   ? @���� 0 raw_nummonth raw_numMonth��  ��  � o      ���� 0 nummonth numMonth��  � r   F I��� o   F G���� 0 raw_nummonth raw_numMonth� o      ���� 0 nummonth numMonth� ��� l  J J��������  ��  ��  � ���� l  J [���� r   J [��� l  J Y������ b   J Y��� b   J M��� o   J K���� 0 numdate numDate� o   K L���� 0 nummonth numMonth� l  M X������ n   M X��� 7 N X����
�� 
ctxt� m   R T���� � m   U W���� � o   M N���� 0 theyear theYear��  ��  ��  ��  � o      ���� 0 filedate fileDate� Z T This combines the date, month and last two digits of the year to create a file name   � ��� �   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r   t o   c r e a t e   a   f i l e   n a m e��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      �� ��    ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	    � � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	�  i     I      �������� >0 applymaster_changedate_single applyMaster_changeDate_single��  ��   O     c O    b	
	 k   
 a  r   
  4   
 ��
�� 
mspr o    ���� 0 
mastername 
masterName n       1    ��
�� 
pmas 4    ��
�� 
page m    ����   I   &��
�� .InESovrrobj         obj  n     4    ��
�� 
txtf m     �  E d i t i o n   d a t e 4    ��
�� 
mspr o    ���� 0 
mastername 
masterName ����
�� 
dPge 4    "��
�� 
page m     !���� ��    !  r   ' 2"#" o   ' (���� 0 pagedate pageDate# l     $����$ n      %&% 1   / 1��
�� 
pcnt& n   ( /'(' 4   , /��)
�� 
txtf) m   - .** �++  E d i t i o n   d a t e( 4   ( ,��,
�� 
page, m   * +���� ��  ��  ! -��- Q   3 a./��. I  6 X��01
�� .InESovrrobj         obj 0 l  6 O2����2 6  6 O343 n   6 >565 2   < >��
�� 
cobj6 n   6 <787 1   : <��
�� 
mpgs8 4   6 :��9
�� 
page9 m   8 9���� 4 =  ? N:;: n  @ H<=< 1   D H��
�� 
pnam= 1   @ D��
�� 
pilr; m   I M>> �??  W o r k��  ��  1 ��@��
�� 
dPge@ 4   P T��A
�� 
pageA m   R S���� ��  / R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  
 l   B����B 1    ��
�� 
pacd��  ��   m     CC�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   DED l     ��������  ��  ��  E FGF l     ��������  ��  ��  G HIH l      ��JK��  J } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   K �LL � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	I MNM i    OPO I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  P O     �QRQ O    �STS k   
 �UU VWV I  
 ����X
�� .corecrel****      � null��  X ��YZ
�� 
koclY m    ��
�� 
sprdZ ��[��
�� 
prdt[ K    \\ ��]��
�� 
pmas] 4    ��^
�� 
mspr^ o    ���� 0 
mastername 
masterName��  ��  W _`_ I   *��ab
�� .InESovrrobj         obj a n    !cdc 4    !��e
�� 
txtfe m     ff �gg  L - E d i t i o n   d a t ed 4    ��h
�� 
msprh o    ���� 0 
mastername 
masterNameb ��i��
�� 
dPgei 4   " &��j
�� 
pagej m   $ %���� ��  ` klk I  + ;��mn
�� .InESovrrobj         obj m n   + 2opo 4   / 2��q
�� 
txtfq m   0 1rr �ss  R - E d i t i o n   d a t ep 4   + /�t
� 
msprt o   - .�~�~ 0 
mastername 
masterNamen �}u�|
�} 
dPgeu 4   3 7�{v
�{ 
pagev m   5 6�z�z �|  l wxw r   < Myzy o   < ?�y�y 0 pagedate pageDatez l     {�x�w{ n      |}| 1   H L�v
�v 
pcnt} n   ? H~~ 4   C H�u�
�u 
txtf� m   D G�� ���  L - E d i t i o n   d a t e 4   ? C�t�
�t 
page� m   A B�s�s �x  �w  x ��� r   N _��� o   N Q�r�r 0 pagedate pageDate� l     ��q�p� n      ��� 1   Z ^�o
�o 
pcnt� n   Q Z��� 4   U Z�n�
�n 
txtf� m   V Y�� ���  R - E d i t i o n   d a t e� 4   Q U�m�
�m 
page� m   S T�l�l �q  �p  � ��k� Q   ` ����j� k   c ��� ��� I  c ��i��
�i .InESovrrobj         obj � l  c ���h�g� 6  c ���� n   c o��� 2   k o�f
�f 
cobj� n   c k��� 1   g k�e
�e 
mpgs� 4   c g�d�
�d 
page� m   e f�c�c � =  r ���� n  s {��� 1   w {�b
�b 
pnam� 1   s w�a
�a 
pilr� m   | ��� ���  W o r k�h  �g  � �`��_
�` 
dPge� 4   � ��^�
�^ 
page� m   � ��]�] �_  � ��\� I  � ��[��
�[ .InESovrrobj         obj � l  � ���Z�Y� 6  � ���� n   � ���� 2   � ��X
�X 
cobj� n   � ���� 1   � ��W
�W 
mpgs� 4   � ��V�
�V 
page� m   � ��U�U � =  � ���� n  � ���� 1   � ��T
�T 
pnam� 1   � ��S
�S 
pilr� m   � ��� ���  W o r k�Z  �Y  � �R��Q
�R 
dPge� 4   � ��P�
�P 
page� m   � ��O�O �Q  �\  � R      �N�M�L
�N .ascrerr ****      � ****�M  �L  �j  �k  T l   ��K�J� 1    �I
�I 
pacd�K  �J  R m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  N ��� l     �H�G�F�H  �G  �F  � ��� l     �E�D�C�E  �D  �C  � ��� l      �B���B  � � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	   � ��� � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	� ��� i    ��� I      �A��@�A 20 changepagenumber_single changePageNumber_single� ��?� o      �>�> 0 
pagenumber 
pageNumber�?  �@  � O     (��� O    '��� k   
 &�� ��� I  
 �=��
�= .InESovrrobj         obj � n   
 ��� 4    �<�
�< 
txtf� m    �� ���  P a g e   n u m b e r� 4   
 �;�
�; 
mspr� o    �:�: 0 
mastername 
masterName� �9��8
�9 
dPge� 4    �7�
�7 
page� m    �6�6 �8  � ��5� r    &��� o    �4�4 0 
pagenumber 
pageNumber� l     ��3�2� n      ��� 1   # %�1
�1 
pcnt� n    #��� 4     #�0�
�0 
txtf� m   ! "�� ���  P a g e   n u m b e r� 4     �/�
�/ 
page� m    �.�. �3  �2  �5  � l   ��-�,� 1    �+
�+ 
pacd�-  �,  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     �*�)�(�*  �)  �(  � ��� l     �'�&�%�'  �&  �%  � ��� l      �$���$  � � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   � ���8 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	� ��� i    ��� I      �#��"�# 20 changepagenumber_spread changePageNumber_spread� ��!� o      � �   0 leftpagenumber leftPageNumber�!  �"  � O     I��� O    H��� k   
 G�� 	 		  I  
 �		
� .InESovrrobj         obj 	 n   
 			 4    �	
� 
txtf	 m    		 �		  L - P a g e   n u m b e r	 4   
 �		
� 
mspr		 o    �� 0 
mastername 
masterName	 �	
�
� 
dPge	
 4    �	
� 
page	 m    �� �  	 			 I   +�		
� .InESovrrobj         obj 	 n    "			 4    "�	
� 
txtf	 m     !		 �		  R - P a g e   n u m b e r	 4    �	
� 
mspr	 o    �� 0 
mastername 
masterName	 �	�
� 
dPge	 4   # '�	
� 
page	 m   % &�� �  	 			 r   , 7			 o   , -��  0 leftpagenumber leftPageNumber	 l     	��	 n      			 1   4 6�
� 
pcnt	 n   - 4		 	 4   1 4�	!
� 
txtf	! m   2 3	"	" �	#	#  L - P a g e   n u m b e r	  4   - 1�
	$
�
 
page	$ m   / 0�	�	 �  �  	 	%�	% r   8 G	&	'	& l  8 =	(��	( c   8 =	)	*	) l  8 ;	+��	+ [   8 ;	,	-	, o   8 9��  0 leftpagenumber leftPageNumber	- m   9 :�� �  �  	* m   ; <�
� 
TEXT�  �  	' l     	.� ��	. n      	/	0	/ 1   D F��
�� 
pcnt	0 n   = D	1	2	1 4   A D��	3
�� 
txtf	3 m   B C	4	4 �	5	5  R - P a g e   n u m b e r	2 4   = A��	6
�� 
page	6 m   ? @���� �   ��  �  � l   	7����	7 1    ��
�� 
pacd��  ��  � m     	8	8�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	9	:	9 l     ��������  ��  ��  	: 	;	<	; l      ��	=	>��  	= � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	> �	?	?� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		< 	@	A	@ i    	B	C	B I      �������� 0 clean_save_l clean_save_L��  ��  	C O     >	D	E	D O    =	F	G	F k   
 <	H	H 	I	J	I r   
 	K	L	K m   
 ��
�� boovtrue	L n      	M	N	M 1    ��
�� 
plck	N 4    ��	O
�� 
layr	O m    	P	P �	Q	Q ( D a t e   a n d   p a g e   n u m b e r	J 	R	S	R r    	T	U	T m    ��
�� boovtrue	U n      	V	W	V 1    ��
�� 
plck	W 4    ��	X
�� 
layr	X m    	Y	Y �	Z	Z  F u r n i t u r e	S 	[	\	[ r    !	]	^	] m    	_	_ �	`	`  W o r k	^ 1     ��
�� 
pacl	\ 	a	b	a r   " *	c	d	c J   " &	e	e 	f	g	f m   " #	h	h @.      	g 	i��	i m   # $	j	j @&      ��  	d l     	k����	k 1   & )��
�� 
zero��  ��  	b 	l��	l I  + <����	m
�� .CoResavedocu        obj ��  	m ��	n��
�� 
kfil	n b   - 8	o	p	o b   - 4	q	r	q b   - 2	s	t	s b   - 0	u	v	u o   - .���� $0 freshpagesfolder freshPagesFolder	v o   . /���� 0 fileslug fileSlug	t m   0 1	w	w �	x	x  _	r o   2 3���� 0 filedate fileDate	p m   4 7	y	y �	z	z 
 . i n d d��  ��  	G l   	{����	{ 1    ��
�� 
pacd��  ��  	E m     	|	|�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	A 	}	~	} l     ��������  ��  ��  	~ 		�	 l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   	� �	�	�z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 		� 	�	�	� i    	�	�	� I      �������� 0 clean_save_r clean_save_R��  ��  	� O     >	�	�	� O    =	�	�	� k   
 <	�	� 	�	�	� r   
 	�	�	� m   
 ��
�� boovtrue	� n      	�	�	� 1    ��
�� 
plck	� 4    ��	�
�� 
layr	� m    	�	� �	�	� ( D a t e   a n d   p a g e   n u m b e r	� 	�	�	� r    	�	�	� m    ��
�� boovtrue	� n      	�	�	� 1    ��
�� 
plck	� 4    ��	�
�� 
layr	� m    	�	� �	�	�  F u r n i t u r e	� 	�	�	� r    !	�	�	� m    	�	� �	�	�  W o r k	� 1     ��
�� 
pacl	� 	�	�	� r   " *	�	�	� J   " &	�	� 	�	�	� m   " #	�	� @"      	� 	���	� m   # $	�	� @&      ��  	� l     	�����	� 1   & )��
�� 
zero��  ��  	� 	���	� I  + <����	�
�� .CoResavedocu        obj ��  	� ��	���
�� 
kfil	� b   - 8	�	�	� b   - 4	�	�	� b   - 2	�	�	� b   - 0	�	�	� o   - .���� $0 freshpagesfolder freshPagesFolder	� o   . /���� 0 fileslug fileSlug	� m   0 1	�	� �	�	�  _	� o   2 3���� 0 filedate fileDate	� m   4 7	�	� �	�	� 
 . i n d d��  ��  	� l   	�����	� 1    ��
�� 
pacd��  ��  	� m     	�	��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13 (TV), which have the legal date on weekdays.	   	� �	�	� 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3   ( T V ) ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s . 		� 	�	�	� i     #	�	�	� I      �������� (0 changelegaldate_12 changeLegalDate_12��  ��  	� O     (	�	�	� O    '	�	�	� k   
 &	�	� 	�	�	� I  
 ��	�	�
�� .InESovrrobj         obj 	� n   
 	�	�	� 4    ��	�
�� 
txtf	� m    	�	� �	�	�  L e g a l   d a t e	� 4   
 ��	�
�� 
mspr	� o    ���� 0 
mastername 
masterName	� ��	���
�� 
dPge	� 4    ��	�
�� 
page	� m    ���� ��  	� 	���	� r    &	�	�	� o    ���� 0 pagedate pageDate	� l     	�����	� n      	�	�	� 1   # %��
�� 
pcnt	� n    #	�	�	� 4     #��	�
�� 
txtf	� m   ! "	�	� �	�	�  L e g a l   d a t e	� 4     ��	�
�� 
page	� m    ���� ��  ��  ��  	� l   	�����	� 1    ��
�� 
pacd��  ��  	� m     	�	��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l      ��	�	���  	� � �	Changes the legal date on a left-hand single page - it�s designed for the Red List page (20), which has the legal date at weekends.	   	� �	�	�
 	 C h a n g e s   t h e   l e g a l   d a t e   o n   a   l e f t - h a n d   s i n g l e   p a g e   -   i t  s   d e s i g n e d   f o r   t h e   R e d   L i s t   p a g e   ( 2 0 ) ,   w h i c h   h a s   t h e   l e g a l   d a t e   a t   w e e k e n d s . 		� 	�	�	� i   $ '	�	�	� I      �������� (0 changelegaldate_20 changeLegalDate_20��  ��  	� O     (	�	�	� O    '	�	�	� k   
 &	�	� 	�
 	� I  
 ��


�� .InESovrrobj         obj 
 n   
 


 4    ��

�� 
txtf
 m    

 �

  L e g a l   d a t e
 4   
 ��

�� 
mspr
 o    ���� 0 
mastername 
masterName
 ��
	��
�� 
dPge
	 4    ��


�� 
page

 m    ���� ��  
  
��
 r    &


 o    ���� 0 pagedate pageDate
 l     
����
 n      


 1   # %��
�� 
pcnt
 n    #


 4     #��

�� 
txtf
 m   ! "

 �

  L e g a l   d a t e
 4     ��

�� 
page
 m    ���� ��  ��  ��  	� l   
����
 1    ��
�� 
pacd��  ��  	� m     

�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	� 


 l     ��������  ��  ��  
 


 l     ����~��  �  �~  
 


 l      �}

 �}  
 t n	Creates an embargoed stories text frame to the left-hand side of the working page (1 if single, 2 if spread)	   
  �
!
! � 	 C r e a t e s   a n   e m b a r g o e d   s t o r i e s   t e x t   f r a m e   t o   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e   ( 1   i f   s i n g l e ,   2   i f   s p r e a d ) 	
 
"�|
" i   ( +
#
$
# I      �{�z�y�{  0 drawembargobox drawEmbargoBox�z  �y  
$ O     �
%
&
% O    �
'
(
' Z    �
)
*
+�x
) =   
,
-
, l   
.�w�v
. I   �u
/�t
�u .corecnte****       ****
/ 2   �s
�s 
page�t  �w  �v  
- m    �r�r 
* k    K
0
0 
1
2
1 O    4
3
4
3 r    3
5
6
5 I   1�q�p
7
�q .corecrel****      � null�p  
7 �o
8
9
�o 
kocl
8 m     !�n
�n 
txtf
9 �m
:�l
�m 
prdt
: K   " -
;
; �k
<
=
�k 
gbnd
< J   # )
>
> 
?
@
? m   # $
A
A @,      
@ 
B
C
B m   $ %
D
D �b�     
C 
E
F
E m   % &
G
G @\�     
F 
H�j
H m   & '
I
I �I      �j  
= �i
J�h
�i 
pcnt
J m   * +
K
K �
L
L " E m b a r g o e d   s t o r i e s�h  �l  
6 o      �g�g 0 ebox eBox
4 4    �f
M
�f 
page
M m    �e�e 
2 
N
O
N l  5 C
P
Q
R
P r   5 C
S
T
S 4   5 =�d
U
�d 
ObSt
U m   9 <
V
V �
W
W " N e w s   N I B   b o x   t i n t
T l     
X�c�b
X n      
Y
Z
Y 1   > B�a
�a 
aobs
Z o   = >�`�` 0 ebox eBox�c  �b  
Q K E This causes an error if you try to set it when the frame is created.   
R �
[
[ �   T h i s   c a u s e s   a n   e r r o r   i f   y o u   t r y   t o   s e t   i t   w h e n   t h e   f r a m e   i s   c r e a t e d .
O 
\�_
\ r   D K
]
^
] m   D E�^
�^ boovtrue
^ n      
_
`
_ 1   F J�]
�] 
plck
` o   E F�\�\ 0 ebox eBox�_  
+ 
a
b
a =  N W
c
d
c l  N U
e�[�Z
e I  N U�Y
f�X
�Y .corecnte****       ****
f 2  N Q�W
�W 
page�X  �[  �Z  
d m   U V�V�V 
b 
g�U
g k   Z �
h
h 
i
j
i O   Z y
k
l
k r   a x
m
n
m I  a v�T�S
o
�T .corecrel****      � null�S  
o �R
p
q
�R 
kocl
p m   c d�Q
�Q 
txtf
q �P
r�O
�P 
prdt
r K   e r
s
s �N
t
u
�N 
gbnd
t J   f l
v
v 
w
x
w m   f g
y
y @,      
x 
z
{
z m   g h
|
| �b�     
{ 
}
~
} m   h i

 @\�     
~ 
��M
� m   i j
�
� �I      �M  
u �L
��K
�L 
pcnt
� m   m p
�
� �
�
� " E m b a r g o e d   s t o r i e s�K  �O  
n o      �J�J 0 ebox eBox
l 4   Z ^�I
�
�I 
page
� m   \ ]�H�H 
j 
�
�
� r   z �
�
�
� 4   z ��G
�
�G 
ObSt
� m   ~ �
�
� �
�
� " N e w s   N I B   b o x   t i n t
� l     
��F�E
� n      
�
�
� 1   � ��D
�D 
aobs
� o   � ��C�C 0 ebox eBox�F  �E  
� 
��B
� r   � �
�
�
� m   � ��A
�A boovtrue
� n      
�
�
� 1   � ��@
�@ 
plck
� o   � ��?�? 0 ebox eBox�B  �U  �x  
( l   
��>�=
� 4   �<
�
�< 
docu
� m    �;�; �>  �=  
& m     
�
��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �|       �:
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
��:  
� �9�8�7�6�5�4�3�2�1�0�/�.�9 "0 create_pagedate create_pageDate�8 "0 create_filedate create_fileDate�7 >0 applymaster_changedate_single applyMaster_changeDate_single�6 >0 applymaster_changedate_spread applyMaster_changeDate_spread�5 20 changepagenumber_single changePageNumber_single�4 20 changepagenumber_spread changePageNumber_spread�3 0 clean_save_l clean_save_L�2 0 clean_save_r clean_save_R�1 (0 changelegaldate_12 changeLegalDate_12�0 (0 changelegaldate_20 changeLegalDate_20�/  0 drawembargobox drawEmbargoBox
�. .aevtoappnull  �   � ****
� �-5�,�+
�
��*�- "0 create_pagedate create_pageDate�,  �+  
� �)�(�'�&�) (0 thirtyonedaymonths ThirtyOneDayMonths�( "0 thirtydaymonths ThirtyDayMonths�' 0 i  �& 0 secondmonth secondMonth
� 2>BFJNQ�%Z^be�$�#o��"��!�� ������������$(,?AMQUhju�����% �$ �# 0 theday theDay�" 0 themonth theMonth�! 0 thedate theDate�  0 theyear theYear� 0 pagedate pageDate
� 
bool� 0 months_list  
� .corecnte****       ****
� 
cobj�*��������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h
� ����
�
��� "0 create_filedate create_fileDate�  �  
� ����� 0 numdate numDate� 0 i  � 0 raw_nummonth raw_numMonth� 0 nummonth numMonth
� ������������
�	�� 0 thedate theDate
� 
long� 0 months_list  
� .corecnte****       ****
� 
cobj� 0 themonth theMonth� 
� 0 theyear theYear
�
 
ctxt�	 � 0 filedate fileDate� \��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�
� ���
�
��� >0 applymaster_changedate_single applyMaster_changeDate_single�  �  
�  
� C���� ����������*������
�����>����
� 
pacd
� 
mspr� 0 
mastername 
masterName
�  
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
cobj
�  
�� 
pilr
�� 
pnam��  ��  � d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU
� ��P����
�
����� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  
�  
� ���������������������f������r����������
�����������
�� 
pacd
�� 
kocl
�� 
sprd
�� 
prdt
�� 
pmas
�� 
mspr�� 0 
mastername 
masterName�� 
�� .corecrel****      � null
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt
�� 
mpgs
�� 
cobj
�� 
pilr
�� 
pnam��  ��  �� �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU
� �������
�
����� 20 changepagenumber_single changePageNumber_single�� ��
��� 
�  ���� 0 
pagenumber 
pageNumber��  
� ���� 0 
pagenumber 
pageNumber
� �������������������
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
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU
� �������
�
����� 20 changepagenumber_spread changePageNumber_spread�� ��
��� 
�  ����  0 leftpagenumber leftPageNumber��  
� ����  0 leftpagenumber leftPageNumber
� 	8��������	������		"����	4
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
TEXT�� J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU
� ��	C����
�
����� 0 clean_save_l clean_save_L��  ��  
�  
� 	|����	P��	Y	_��	h	j��������	w��	y��
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
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU
� ��	�����
�
����� 0 clean_save_r clean_save_R��  ��  
�  
� 	�����	���	�	���	�	���������	���	���
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
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU
� ��	�����
�
����� (0 changelegaldate_12 changeLegalDate_12��  ��  
�  
� 	���������	���������	���
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
pcnt�� )� %*�, *��/��/�*�l/l O�*�l/��/�,FUU
� ��	�����
�
����� (0 changelegaldate_20 changeLegalDate_20��  ��  
�  
� 
��������
��������
��
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
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU
� ��
$����
�
�����  0 drawembargobox drawEmbargoBox��  ��  
� ���� 0 ebox eBox
� 
�����~�}�|�{�z
A
D
G
I�y�x
K�w�v
V�u�t
�
�
�� 
docu
� 
page
�~ .corecnte****       ****
�} 
kocl
�| 
txtf
�{ 
prdt
�z 
gbnd�y 
�x 
pcnt
�w .corecrel****      � null
�v 
ObSt
�u 
aobs
�t 
plck�� �� �*�k/ �*�-j k  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY H*�-j m  ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU
� �s
��r�q
�
��p
�s .aevtoappnull  �   � ****
� k    (
�
�  t
�
�  {
�
�  �
�
�  �
�
�  �
�
�  �
�
� .
�
� ?
�
� J
�
� [
�
� f
�
� |
�
� �
�
� �
�
� �
�
� 
�
� 
�
�  
�
� ,
�
� y
�
� �
�
� w
�
� �
�
� �
�
� 	
�
� �o�o  �r  �q  
�  
� � y�n ��m � � � � � ��l�k � � � � � � � � ��j�i � � � � � ��h � � � �	�g�f�e:�d=�c�b�a�`�_F�^�]VY�\bs�[wz�Z�Y�X�����W����V���U�T�����S�R)�Q�P�O3?I�NO�M�L�K�J�I�H�G�F�Epx~�����D�C����B'�AAKQe|�������� 3JPc�����@����� �?�>'<Sg~���������=�<�;�n $0 freshpagesfolder freshPagesFolder�m  0 masterdocument masterDocument�l �k 0 weekday_pages  �j 	�i 0 weekend_pages  �h 0 	days_list  �g �f 0 months_list  
�e 
prmp
�d 
appr�c 
�b .gtqpchltns    @   @ ns  
�a 
TEXT�` 0 theday theDay
�_ 
rslt
�^ 
errn�]���\ 0 themonth theMonth
�[ 
dtxt
�Z .sysodlogaskr        TEXT
�Y 
ttxt�X 0 thedate theDate�W 0 theyear theYear
�V 
ret 
�U 
mlsl�T &0 masterstogenerate mastersToGenerate�S "0 create_pagedate create_pageDate�R "0 create_filedate create_fileDate
�Q elnteNvr
�P 
pScr
�O 
UIAc�N 0 
mastername 
masterName�M 0 fileslug fileSlug
�L .aevtodocnull  �    alis�K >0 applymaster_changedate_single applyMaster_changeDate_single�J  0 drawembargobox drawEmbargoBox�I 0 clean_save_r clean_save_R
�H 
pacd
�G 
svop
�F savoyes 
�E .CoReclosnull���     obj �D 20 changepagenumber_single changePageNumber_single�C 0 clean_save_l clean_save_L�B >0 applymaster_changedate_spread applyMaster_changeDate_spread�A 20 changepagenumber_spread changePageNumber_spread�@ (0 changelegaldate_12 changeLegalDate_12�? 0 p10_days  �> 0 p14_days  �= (0 changelegaldate_20 changeLegalDate_20
�< elnteInA
�; .miscactvnull��� ��� obj �p)�E�O�E�O�������vE�O����a a a a a a vE` Oa a a a a a �vE` Oa a a  a !a "a #a $a %a &a 'a (a )a *vE` +O_ a ,a -a .a /a 0 1a 2&E` 3O_ 4a 5  )a 6a 7lhY hO_ +a ,a 8a .a 9a 0 1a 2&E` :O_ 4a ;  )a 6a 7lhY hOa <a =a >a .a ?a 0 @a A,a 2&E` BO_ 4a C  )a 6a 7lhY hOa Da =a Ea .a Fa 0 @a A,a 2&E` GO_ 4a H  )a 6a 7lhY hO_ 3a I A�a ,a J_ K%_ K%a L%a .a Ma Ne� 1E` OO_ 4f  )a 6a 7lhY hY N_ 3a P  C_ a ,a Q_ K%_ K%a R%a .a Sa Ne� 1E` OO_ 4f  )a 6a 7lhY hY hO*j+ TO*j+ UOa V a W*a X,a Y,FUO_ Oa Z�_ 3a [ Ha \E` ]Oa ^E` _Oa V .�j `O)j+ aO)j+ bO)j+ cO*a d, *a ea fl gUUY S_ 3a h  Ha iE` ]Oa jE` _Oa V .�j `O)j+ aO)j+ bO)j+ cO*a d, *a ea fl gUUY hO_ Oa k �a lE` ]Oa mE` _Oa V 7�j `O)j+ aO)a nk+ oO)j+ bO)j+ pO*a d, *a ea fl gUUOa qE` ]Oa rE` _Oa V 7�j `O)j+ aO)a sk+ oO)j+ bO)j+ cO*a d, *a ea fl gUUY Na tE` ]Oa uE` _Oa V 7�j `O)j+ vO)a wk+ xO)j+ bO)j+ pO*a d, *a ea fl gUUO_ Oa y �a zE` ]Oa {E` _Oa V 7�j `O)j+ aO)a |k+ oO)j+ bO)j+ pO*a d, *a ea fl gUUOa }E` ]Oa ~E` _Oa V 7�j `O)j+ aO)a k+ oO)j+ bO)j+ cO*a d, *a ea fl gUUY Na �E` ]Oa �E` _Oa V 7�j `O)j+ vO)a �k+ xO)j+ bO)j+ pO*a d, *a ea fl gUUO_ Oa � �a �E` ]Oa �E` _Oa V 7�j `O)j+ aO)a �k+ oO)j+ bO)j+ pO*a d, *a ea fl gUUOa �E` ]Oa �E` _Oa V 7�j `O)j+ aO)a �k+ oO)j+ bO)j+ cO*a d, *a ea fl gUUY Na �E` ]Oa �E` _Oa V 7�j `O)j+ vO)a �k+ xO)j+ bO)j+ pO*a d, *a ea fl gUUOPY hO_ Oa � �_ 3a � Ha �E` ]Oa �E` _Oa V .�j `O)j+ vO)j+ �O)j+ pO*a d, *a ea fl gUUY M_ 3a �  Ba �E` ]Oa �E` _Oa V (�j `O)j+ vO)j+ pO*a d, *a ea fl gUUY hY hO_ Oa � �a �E` ]Oa �a �lvE` �Oa �a �a �a �a 0vE` �O_ �_ 3 Ea �E` _Oa V 1�j `O)j+ aO)a �k+ oO)j+ pO*a d, *a ea fl gUUOPY N_ �_ 3 Ca �E` _Oa V 1�j `O)j+ aO)a �k+ oO)j+ pO*a d, *a ea fl gUUY hY hO_ Oa � Ba �E` ]Oa �E` _Oa V (�j `O)j+ vO)j+ pO*a d, *a ea fl gUUY hO_ Oa � Ba �E` ]Oa �E` _Oa V (�j `O)j+ aO)j+ cO*a d, *a ea fl gUUY hO_ Oa � Ha �E` ]Oa �E` _Oa V .�j `O)j+ aO)j+ �O)j+ pO*a d, *a ea fl gUUY hOa V a �*a X,a Y,FUOa � *j �O�j `Uascr  ��ޭ