FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			2012-12-15     �   0 	 C r e a t e d   o n 	 	 	 2 0 1 2 - 1 2 - 1 5      l     ��  ��      	Last updated			2013-10-13     �   4 	 L a s t   u p d a t e d 	 	 	 2 0 1 3 - 1 0 - 1 3      l     ��  ��     	Version:			1.86     �     	 V e r s i o n : 	 	 	 1 . 8 6     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [   Running code --    \ � ] ]     R u n n i n g   c o d e   - - Z  ^ _ ^ l     ` a b ` O     c d c r     e f e m    ��
�� elnteNvr f n       g h g 1    
��
�� 
UIAc h 1    ��
�� 
pScr d m      i i�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   a $  Suppresses dialogs and alerts    b � j j <   S u p p r e s s e s   d i a l o g s   a n d   a l e r t s _  k l k l    m n o m I    �� p���� 0 	genprompt 	genPrompt p  q�� q m     r r � s s  ��  ��   n h b Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call    o � t t �   D e s k   n a m e   ( N e w s ,   F e a t u r e s ,   S p o r t ,   A r t s   o r   C u s t o m   e d i t i o n )   g o e s   i n   t h e   q u o t e s   i n   t h i s   h a n d l e r   c a l l l  u v u l     w���� w O     x y x r     z { z m    ��
�� elnteInA { n       | } | 1    ��
�� 
UIAc } 1    ��
�� 
pScr y m     ~ ~�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��   v   �  l  ! 5 ����� � O   ! 5 � � � k   % 4 � �  � � � I  % *������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  + 4�� ���
�� .aevtodocnull  �    alis � o   + 0���� $0 freshpagesfolder freshPagesFolder��  ��   � m   ! " � ��                                                                                  MACS  alis    Z  SSD                        �@��H+  ƹ
Finder.app                                                     ���ۢ        ����  	                CoreServices    �@��      �͒    ƹƳƲ  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i    	 � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    � � �  � � � Z     2 � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l   . � � � � k    . � �  � � � r     � � � c     � � � l    ����� � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � �  N e w s �  � � � m     � � � � �  F e a t u r e s �  � � � m    	 � � � � � 
 S p o r t �  � � � m   	 
 � � � � �  A r t s �  ��� � m   
  � � � � �  C u s t o m   e d i t i o n��   � �� � �
�� 
prmp � m     � � � � � & P l e a s e   p i c k   a   d e s k : � �� ���
�� 
appr � m     � � � � �  P a g e   g e n e r a t o r��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 desk   �  ��� � Z   . � ����� � =    � � � l    ����� � 1    ��
�� 
rslt��  ��   � m     � � � � � 
 f a l s e � R     *���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   $ '��������  ��  ��  ��   � F @ Allows core.scpt to be used as a generator (useful for testing)    � � � � �   A l l o w s   c o r e . s c p t   t o   b e   u s e d   a s   a   g e n e r a t o r   ( u s e f u l   f o r   t e s t i n g )��  ��   �  � � � l  3 3��������  ��  ��   �  � � � r   3 K � � � J   3 I � �  � � � m   3 6 � � � � �  M o n d a y �  � � � m   6 9 � � � � �  T u e s d a y �  � � � m   9 < � � � � �  W e d n e s d a y �  � � � m   < ? � � � � �  T h u r s d a y �  � � � m   ? B � � � � �  F r i d a y �  ��� � m   B E � � � � �  S a t u r d a y��   � o      ���� 0 	days_list   �  � � � l  L L��������  ��  ��   �  � � � Z   L c � ���  � >  L Q o   L M���� 0 desk   m   M P �  C u s t o m   e d i t i o n � l  T [ r   T [	 l  T Y
����
 b   T Y o   T U���� 0 desk   m   U X �     p a g e s   g e n e r a t o r��  ��  	 o      ���� 0 thetitle theTitle !  Text for prompt title bars    � 6   T e x t   f o r   p r o m p t   t i t l e   b a r s��    r   ^ c m   ^ a �  C u s t o m   e d i t i o n o      ���� 0 thetitle theTitle �  l  d d��������  ��  ��    Z   d��� G   d u =  d i o   d e���� 0 desk   m   e h �    N e w s =  l q!"! o   l m���� 0 desk  " m   m p## �$$ 
 S p o r t l  x �%&'% Z   x �()*��( =  x }+,+ o   x y���� 0 desk  , m   y |-- �..  N e w s) k   � �// 010 r   � �232 J   � �44 565 m   � �77 �88  N e w s   p a g e s6 9:9 m   � �;; �<<  T V: =��= m   � �>> �??  L e t t e r s��  3 o      ���� 0 weekday_pages  1 @��@ r   � �ABA J   � �CC DED m   � �FF �GG  N e w s   p a g e sE HIH m   � �JJ �KK  T VI LML m   � �NN �OO  L e t t e r sM PQP m   � �RR �SS  S t r u g g l eQ T��T m   � �UU �VV  R e d   L i s t��  B o      ���� 0 weekend_pages  ��  * WXW =  � �YZY o   � ����� 0 desk  Z m   � �[[ �\\ 
 S p o r tX ]��] k   � �^^ _`_ r   � �aba J   � �cc ded m   � �ff �gg  T w o   p a g e se hih m   � �jj �kk  T h r e e   p a g e si lml m   � �nn �oo , T h r e e   p a g e s   w i t h   s p l i tm pqp m   � �rr �ss  E x t r a   l e f t   p a g eq tut m   � �vv �ww   E x t r a   r i g h t   p a g eu x��x m   � �yy �zz  E x t r a   s p l i t��  b o      ���� 0 weekday_pages  ` {��{ r   � �|}| J   � �~~ � m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  } o      ���� 0 weekend_pages  ��  ��  ��  & @ : This if block sets the page options presented to the user   ' ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r ��� G   � ���� =  � ���� o   � ����� 0 desk  � m   � ��� ���  F e a t u r e s� =  � ���� o   � ����� 0 desk  � m   � ��� ���  A r t s� ��� k   ���� ��� l  � ����� r   � ���� m   � ��� ��� , N o   d a y      w o r k i n g   a h e a d� l     ��~�}� n      ���  ;   � �� o   � ��|�| 0 	days_list  �~  �}  � > 8 Adds an extra day option that news and sport don't need   � ��� p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� ��{� Z   ������z� =  ���� o   � �y�y 0 desk  � m   �� ���  F e a t u r e s� k  ]�� ��� r  ��� J  �� ��� m  
�� ���  S p r e a d� ��� m  
�� ���  1 0� ��� m  �� ��� 
 1 2 - 1 3� ��� m  �� ���  L e t t e r s� ��� m  �� ���  A r t s� ��x� m  �� ���  A r t s   s p l i t�x  � o      �w�w 0 weekday_pages  � ��� r   8��� J   6�� ��� m   #�� ���  S p r e a d� ��� m  #&�� ��� ( N e w s   r e v i e w s      s p l i t� ��� m  &)�� ��� , N e w s   r e v i e w s      s i n g l e s� ��� m  ),�� ���  1 5� ��� m  ,/�� ��� 
 1 6 - 1 7� ��v� m  /2�� ���  L e t t e r s�v  � o      �u�u 0 weekend_pages  � ��t� r  9]��� J  9[�� ��� m  9<�� ���  S p r e a d� ��� m  <?�� ���  1 0� � � m  ?B � 
 1 2 - 1 3   m  BE � ( N e w s   r e v i e w s      s p l i t  m  EH		 �

 , N e w s   r e v i e w s      s i n g l e s  m  HK �  1 5  m  KN � 
 1 6 - 1 7  m  NQ �  L e t t e r s  m  QT �  A r t s �s m  TW �  A r t s   s p l i t�s  � o      �r�r 0 ahead_pages  �t  �  = `e !  o  `a�q�q 0 desk  ! m  ad"" �##  A r t s $�p$ k  h�%% &'& r  hr()( J  hp** +,+ m  hk-- �..  A r t s   ( p 1 1 ), /�o/ m  kn00 �11  A r t s   s p l i t�o  ) o      �n�n 0 weekday_pages  ' 232 r  s�454 J  s~66 787 m  sv99 �::  1 6 - 1 7   ( w e e k e n d )8 ;<; m  vy== �>>  A r t s   s p l i t< ?�m? m  y|@@ �AA  A r t s   ( p 1 1 )�m  5 o      �l�l 0 weekend_pages  3 B�kB r  ��CDC J  ��EE FGF m  ��HH �II  A r t s   ( p 1 1 )G JKJ m  ��LL �MM  A r t s   s p l i tK N�jN m  ��OO �PP  1 6 - 1 7   ( w e e k e n d )�j  D o      �i�i 0 ahead_pages  �k  �p  �z  �{  �  ��   QRQ l ���h�g�f�h  �g  �f  R STS l ���eUV�e  U [ U Prompt the user to enter the date. Returns theDay for use in page-picker block below   V �WW �   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e .   R e t u r n s   t h e D a y   f o r   u s e   i n   p a g e - p i c k e r   b l o c k   b e l o wT XYX r  ��Z[Z n ��\]\ I  ���d^�c�d 0 
dateprompt 
datePrompt^ _`_ o  ���b�b 0 thetitle theTitle` a�aa o  ���`�` 0 	days_list  �a  �c  ]  f  ��[ o      �_�_ 0 theday theDayY bcb l ���^�]�\�^  �]  �\  c ded l ���[fg�[  f   Get the pages to create   g �hh 0   G e t   t h e   p a g e s   t o   c r e a t ee i�Zi Z  ��jk�Ylj = ��mnm l ��o�X�Wo o  ���V�V 0 desk  �X  �W  n m  ��pp �qq  C u s t o m   e d i t i o nk l ��rstr n ��uvu I  ���U�T�S�U 0 customedition customEdition�T  �S  v  f  ��s U O The customEdition function itself gets the pages to generate from TextWrangler   t �ww �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r�Y  l k  ��xx yzy r  ��{|{ l ��}�R�Q} b  ��~~ b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���P
�P 
ret � o  ���O
�O 
ret  m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�R  �Q  | o      �N�N 0 
prompttext 
promptTextz ��� Z  �W����M� = ����� o  ���L�L 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ���� ��� r  ����� l ����K�J� I ���I��
�I .gtqpchltns    @   @ ns  � o  ���H�H 0 ahead_pages  � �G��
�G 
prmp� o  ���F�F 0 
prompttext 
promptText� �E��
�E 
appr� o  ���D�D 0 thetitle theTitle� �C��B
�C 
mlsl� m  ���A
�A boovtrue�B  �K  �J  � o      �@�@ &0 masterstogenerate mastersToGenerate� ��?� Z �����>�=� = ����� 1  ���<
�< 
rslt� m  ���;
�; boovfals� R  ���:�9�
�: .ascrerr ****      � ****�9  � �8��7
�8 
errn� m  ���6�6���7  �>  �=  �?  � ��� > ����� o  ���5�5 0 theday theDay� m  ���� ���  S a t u r d a y� ��� k  �"�� ��� r  ���� l ���4�3� I ��2��
�2 .gtqpchltns    @   @ ns  � o  ���1�1 0 weekday_pages  � �0��
�0 
prmp� o  ���/�/ 0 
prompttext 
promptText� �.��
�. 
appr� o   �-�- 0 thetitle theTitle� �,��+
�, 
mlsl� m  �*
�* boovtrue�+  �4  �3  � o      �)�) &0 masterstogenerate mastersToGenerate� ��(� Z "���'�&� = ��� 1  �%
�% 
rslt� m  �$
�$ boovfals� R  �#�"�
�# .ascrerr ****      � ****�"  � �!�� 
�! 
errn� m  �����   �'  �&  �(  � ��� = %*��� o  %&�� 0 theday theDay� m  &)�� ���  S a t u r d a y� ��� k  -S�� ��� r  ->��� l -<���� I -<���
� .gtqpchltns    @   @ ns  � o  -.�� 0 weekend_pages  � ���
� 
prmp� o  /0�� 0 
prompttext 
promptText� ���
� 
appr� o  12�� 0 thetitle theTitle� ���
� 
mlsl� m  56�
� boovtrue�  �  �  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z ?S����� = ?B��� 1  ?@�
� 
rslt� m  @A�
� boovfals� R  EO��
�
� .ascrerr ****      � ****�
  � �	��
�	 
errn� m  IL�����  �  �  �  �  �M  � ��� l XX����  �  �  � ��� Z  X������ = X]��� o  XY�� 0 desk  � m  Y\�� ���  N e w s� l `g���� n `g��� I  ag� ����  0 newsgen newsGen� ��� o  ab���� &0 masterstogenerate mastersToGenerate� ���� o  bc���� 0 theday theDay��  ��  �  f  `a� S M theDay is passed to distinguish between, for example, Saturday & weekday TV    � ��� �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  � ��� = jo��� o  jk���� 0 desk  � m  kn�� ���  F e a t u r e s� ��� n ry��� I  sy������� 0 featsgen featsGen� ��� o  st���� &0 masterstogenerate mastersToGenerate� ���� o  tu���� 0 theday theDay��  ��  �  f  rs� ��� = |�   o  |}���� 0 desk   m  }� � 
 S p o r t�  l �� n ��	
	 I  �������� 0 	sportsgen 	sportsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��  
  f  ��   No day checks    �    N o   d a y   c h e c k s  = �� o  ������ 0 desk   m  �� �  A r t s �� l �� n �� I  �������� 0 artsgen artsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��    f  ��   No day checks    �    N o   d a y   c h e c k s��  �  �  �Z   �  l     ��������  ��  ��     l     ��������  ��  ��    !"! l     ��#$��  # I C list_position: Returns theItem's position in theList as an integer   $ �%% �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r" &'& i   
 ()( I      ��*���� 0 list_position  * +,+ o      ���� 0 	this_item  , -��- o      ���� 0 	this_list  ��  ��  ) Y     ".��/0��. Z   12����1 =   343 n    565 4    ��7
�� 
cobj7 o    ���� 0 i  6 o    ���� 0 	this_list  4 o    ���� 0 	this_item  2 L    88 o    ���� 0 i  ��  ��  �� 0 i  / m    ���� 0 I   	��9��
�� .corecnte****       ****9 o    ���� 0 	this_list  ��  ��  ' :;: l     ��������  ��  ��  ; <=< l     ��������  ��  ��  = >?> l     ��@A��  @ ( " Prompt the user to enter the date   A �BB D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e? CDC i    EFE I      ��G���� 0 
dateprompt 
datePromptG HIH o      ���� 0 thetitle theTitleI J��J o      ���� 0 	days_list  ��  ��  F k    KK LML r     NON J     PP QRQ m     SS �TT  J a n u a r yR UVU m    WW �XX  F e b r u a r yV YZY m    [[ �\\ 
 M a r c hZ ]^] m    __ �`` 
 A p r i l^ aba m    cc �dd  M a yb efe m    gg �hh  J u n ef iji m    kk �ll  J u l yj mnm m    oo �pp  A u g u s tn qrq m    	ss �tt  S e p t e m b e rr uvu m   	 
ww �xx  O c t o b e rv yzy m   
 {{ �||  N o v e m b e rz }��} m    ~~ �  D e c e m b e r��  O o      ���� 0 months_list  M ��� l   ��������  ��  ��  � ��� l   ������  � > 8 Get tomorrow's weekday as a seed default for the prompt   � ��� p   G e t   t o m o r r o w ' s   w e e k d a y   a s   a   s e e d   d e f a u l t   f o r   t h e   p r o m p t� ��� Z    >������ >   ��� c    ��� l   ������ l   ������ n    ��� m    ��
�� 
wkdy� l   ������ l   ������ I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � m    ��
�� 
TEXT� m    �� ���  S a t u r d a y� r   ! .��� l  ! ,������ [   ! ,��� l  ! &������ l  ! &������ I  ! &������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  & +������ ]   & +��� m   & '���� � 1   ' *��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  ��  � l  1 >���� r   1 >��� l  1 <������ [   1 <��� l  1 6������ l  1 6������ I  1 6������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  6 ;������ ]   6 ;��� m   6 7���� � 1   7 :��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  � 4 . Jump ahead a day if Saturday (mostly for dev)   � ��� \   J u m p   a h e a d   a   d a y   i f   S a t u r d a y   ( m o s t l y   f o r   d e v )� ��� l  ? H���� r   ? H��� J   ? F�� ���� l  ? D������ c   ? D��� n  ? B��� m   @ B��
�� 
wkdy� o   ? @���� 0 tomorrow  � m   B C��
�� 
TEXT��  ��  ��  � o      ���� 0 tmday tmDay� C = "Choose from list" requires a list for its default selection   � ��� z   " C h o o s e   f r o m   l i s t "   r e q u i r e s   a   l i s t   f o r   i t s   d e f a u l t   s e l e c t i o n� ��� l  I I��������  ��  ��  � ��� r   I b��� c   I `��� l  I ^������ I  I ^����
�� .gtqpchltns    @   @ ns  � o   I J���� 0 	days_list  � ����
�� 
prmp� m   M P�� ��� 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :� ����
�� 
inSL� o   S T���� 0 tmday tmDay� �����
�� 
appr� o   W X���� 0 thetitle theTitle��  ��  ��  � m   ^ _��
�� 
TEXT� o      ���� 0 theday theDay� ��� l  c {���� Z  c {����~� =  c j��� 1   c f�}
�} 
rslt� m   f i�� ��� 
 f a l s e� R   m w�|�{�
�| .ascrerr ****      � ****�{  � �z��y
�z 
errn� m   q t�x�x���y  �  �~  � 6 0 Choosing "Cancel" in the dialog ends the script   � ��� `   C h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� l  | |�w�v�u�w  �v  �u  � ��� l  | |�t���t  � 2 , Quick return if no date crunching is needed   � ��� X   Q u i c k   r e t u r n   i f   n o   d a t e   c r u n c h i n g   i s   n e e d e d� ��� Z   | ����s�r� =  | ���� o   | }�q�q 0 theday theDay� m   } ��� ��� , N o   d a y      w o r k i n g   a h e a d� k   � ��� ��� r   � ���� m   � ��� ��� * A   d a t e   n e e d s   e n t e r i n g� o      �p�p 0 pagedate pageDate� ��� r   � ���� m   � ��� ��� 
 A h e a d� o      �o�o 0 filedate fileDate� ��n� l  � ����� L   � ��� o   � ��m�m 0 theday theDay� $  For use in page-picker prompt   � �   <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t�n  �s  �r  �  l  � ��l�k�j�l  �k  �j    l  � ��i�i     Predicted date crunching    � 2   P r e d i c t e d   d a t e   c r u n c h i n g 	 Z   �.
�h
 =  � � o   � ��g�g 0 theday theDay l  � ��f�e c   � � o   � ��d�d 0 tmday tmDay m   � ��c
�c 
TEXT�f  �e   l  � � k   � �  l  � ��b�b   ) # Set defaults to tomorrow's details    � F   S e t   d e f a u l t s   t o   t o m o r r o w ' s   d e t a i l s  r   � � n  � �  1   � ��a
�a 
day   o   � ��`�` 0 tomorrow   o      �_�_ 0 prdate prDate !"! r   � �#$# J   � �%% &�^& l  � �'�]�\' c   � �()( n  � �*+* m   � ��[
�[ 
mnth+ o   � ��Z�Z 0 tomorrow  ) m   � ��Y
�Y 
TEXT�]  �\  �^  $ o      �X�X 0 prmonth prMonth" ,�W, r   � �-.- n  � �/0/ 1   � ��V
�V 
year0 o   � ��U�U 0 tomorrow  . o      �T�T 0 pryear prYear�W     Chosen day is tomorrow    �11 .   C h o s e n   d a y   i s   t o m o r r o w 232 >  � �454 o   � ��S�S 0 theday theDay5 l  � �6�R�Q6 c   � �787 o   � ��P�P 0 tmday tmDay8 m   � ��O
�O 
TEXT�R  �Q  3 9�N9 l  �*:;<: k   �*== >?> l  � ��M@A�M  @ E ? Determine offset from tomorrow and create a date object for it   A �BB ~   D e t e r m i n e   o f f s e t   f r o m   t o m o r r o w   a n d   c r e a t e   a   d a t e   o b j e c t   f o r   i t? CDC r   � �EFE n  � �GHG I   � ��LI�K�L 0 list_position  I JKJ l  � �L�J�IL c   � �MNM o   � ��H�H 0 tmday tmDayN m   � ��G
�G 
TEXT�J  �I  K O�FO o   � ��E�E 0 	days_list  �F  �K  H  f   � �F o      �D�D 0 
predictpos 
predictPosD PQP r   � �RSR n  � �TUT I   � ��CV�B�C 0 list_position  V WXW o   � ��A�A 0 theday theDayX Y�@Y o   � ��?�? 0 	days_list  �@  �B  U  f   � �S o      �>�> 0 	actualpos 	actualPosQ Z[Z r   � �\]\ \   � �^_^ o   � ��=�= 0 	actualpos 	actualPos_ o   � ��<�< 0 
predictpos 
predictPos] o      �;�; 0 shiftpos shiftPos[ `a` Z   �bcd�:b ?  � �efe o   � ��9�9 0 shiftpos shiftPosf m   � ��8�8  c l  � �ghig r   � �jkj [   � �lml o   � ��7�7 0 tomorrow  m l  � �n�6�5n ]   � �opo o   � ��4�4 0 shiftpos shiftPosp 1   � ��3
�3 
days�6  �5  k o      �2�2 0 predictedday predictedDayh "  Another day in current week   i �qq 8   A n o t h e r   d a y   i n   c u r r e n t   w e e kd rsr A  � �tut o   � ��1�1 0 shiftpos shiftPosu m   � ��0�0  s v�/v l  �
wxyw r   �
z{z [   �|}| o   � ��.�. 0 tomorrow  } l  �~�-�,~ ]   �� l  ���+�*� [   ���� m   ��)�) � o  �(�( 0 shiftpos shiftPos�+  �*  � 1  �'
�' 
days�-  �,  { o      �&�& 0 predictedday predictedDayx   Implies next week   y ��� $   I m p l i e s   n e x t   w e e k�/  �:  a ��� l �%�$�#�%  �$  �#  � ��� l �"���"  � - ' Set defaults with chosen day's details   � ��� N   S e t   d e f a u l t s   w i t h   c h o s e n   d a y ' s   d e t a i l s� ��� r  ��� n ��� 1  �!
�! 
day � o  � �  0 predictedday predictedDay� o      �� 0 prdate prDate� ��� r  "��� J   �� ��� l ���� c  ��� n ��� m  �
� 
mnth� o  �� 0 predictedday predictedDay� m  �
� 
TEXT�  �  �  � o      �� 0 prmonth prMonth� ��� r  #*��� n #(��� 1  $(�
� 
year� o  #$�� 0 predictedday predictedDay� o      �� 0 pryear prYear�  ; !  Chosen day is not tomorrow   < ��� 6   C h o s e n   d a y   i s   n o t   t o m o r r o w�N  �h  	 ��� l //����  �  �  � ��� l //����  � &   Prompt for month, date and year   � ��� @   P r o m p t   f o r   m o n t h ,   d a t e   a n d   y e a r� ��� r  /H��� c  /F��� l /D���� I /D���
� .gtqpchltns    @   @ ns  � o  /0�� 0 months_list  � ���
� 
prmp� m  36�� ��� , P l e a s e   p i c k   t h e   m o n t h :� �
��
�
 
inSL� o  9:�	�	 0 prmonth prMonth� ���
� 
appr� o  =>�� 0 thetitle theTitle�  �  �  � m  DE�
� 
TEXT� o      �� 0 themonth theMonth� ��� Z Ia����� = IP��� 1  IL�
� 
rslt� m  LO�� ��� 
 f a l s e� R  S]� ���
�  .ascrerr ****      � ****��  � �����
�� 
errn� m  WZ��������  �  �  � ��� r  b{��� c  by��� l bw������ n  bw��� 1  sw��
�� 
ttxt� l bs������ I bs����
�� .sysodlogaskr        TEXT� m  be�� ��� * P l e a s e   t y p e   t h e   d a t e :� ����
�� 
dtxt� o  hi���� 0 prdate prDate� �����
�� 
appr� o  lm���� 0 thetitle theTitle��  ��  ��  ��  ��  � m  wx��
�� 
TEXT� o      ���� 0 thedate theDate� ��� Z |�������� = |���� 1  |��
�� 
rslt� m  ��� ��� 
 f a l s e� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  � ��� Z  ��������� l �������� E  ����� o  ������ 0 thedate theDate� m  ���� ���  -��  ��  � r  ����� n  ����� 7������
�� 
ctxt� m  ������ � l �������� \  ����� l �������� l �������� I �������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  ���� ���  -� �����
�� 
psin� o  ������ 0 thedate theDate��  ��  ��  ��  ��  � m  ������ ��  ��  � o  ������ 0 thedate theDate� o      ���� 0 thedate theDate��  ��  � ��� r  ����� c  ����� l �������� n  ��   1  ����
�� 
ttxt l ������ I ����
�� .sysodlogaskr        TEXT m  �� � * P l e a s e   t y p e   t h e   y e a r : ��
�� 
dtxt o  ������ 0 pryear prYear ��	��
�� 
appr	 o  ������ 0 thetitle theTitle��  ��  ��  ��  ��  � m  ����
�� 
TEXT� o      ���� 0 theyear theYear� 

 Z ������ = �� 1  ����
�� 
rslt m  �� � 
 f a l s e R  ������
�� .ascrerr ****      � ****��   ����
�� 
errn m  ����������  ��  ��    l ����������  ��  ��    l ������   . ( Pass date details to creation functions    � P   P a s s   d a t e   d e t a i l s   t o   c r e a t i o n   f u n c t i o n s  n � I  ������� "0 create_pagedate create_pageDate  !  o  ������ 0 theday theDay! "#" o  ������ 0 themonth theMonth# $%$ o  ������ 0 thedate theDate% &��& o  ������ 0 theyear theYear��  ��    f  �� '(' n )*) I  ��+���� "0 create_filedate create_fileDate+ ,-, o  ���� 0 themonth theMonth- ./. o  ���� 0 thedate theDate/ 010 o  ���� 0 theyear theYear1 2��2 o  ���� 0 months_list  ��  ��  *  f  ( 343 l ��������  ��  ��  4 5��5 l 6786 L  99 o  ���� 0 theday theDay7 $  For use in page-picker prompt   8 �:: <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t��  D ;<; l     ��������  ��  ��  < =>= l     ��������  ��  ��  > ?@? l     ��AB��  A 2 , Assemble date for use on the inDesign pages   B �CC X   A s s e m b l e   d a t e   f o r   u s e   o n   t h e   i n D e s i g n   p a g e s@ DED i    FGF I      ��H���� "0 create_pagedate create_pageDateH IJI o      ���� 0 theday theDayJ KLK o      ���� 0 themonth theMonthL MNM o      ���� 0 thedate theDateN O��O o      ���� 0 theyear theYear��  ��  G Z     �PQ��RP >    STS o     ���� 0 theday theDayT m    UU �VV  S a t u r d a yQ l   WXYW k    ZZ [\[ r    ]^] l   _����_ b    `a` b    bcb b    ded b    fgf b    hih b    	jkj o    ���� 0 theday theDayk m    ll �mm   i o   	 
���� 0 themonth theMonthg m    nn �oo   e o    ���� 0 thedate theDatec m    pp �qq   a o    ���� 0 theyear theYear��  ��  ^ o      ���� 0 pagedate pageDate\ r��r l   ��������  ��  ��  ��  X   Weekday pageDate   Y �ss "   W e e k d a y   p a g e D a t e��  R l   �tuvt k    �ww xyx l   ��z{��  z &   Create a date object for Sunday   { �|| @   C r e a t e   a   d a t e   o b j e c t   f o r   S u n d a yy }~} r    0� l   .������ [    .��� l   *������ 4    *���
�� 
ldt � l   )������ b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� o    ���� 0 theday theDay� m    �� ���  ,  � o     ���� 0 thedate theDate� m   ! "�� ���   � o   # $�� 0 themonth theMonth� m   % &�� ���   � o   ' (�~�~ 0 theyear theYear��  ��  ��  ��  � l  * -��}�|� ]   * -��� m   * +�{�{ � 1   + ,�z
�z 
days�}  �|  ��  ��  � o      �y�y 0 sun  ~ ��� l  1 1�x�w�v�x  �w  �v  � ��� l  1 1�u���u  � 2 , Check if the weekend spans a month boundary   � ��� X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r y� ��� Z   1 J���t�� >  1 8��� l  1 6��s�r� c   1 6��� n  1 4��� m   2 4�q
�q 
mnth� o   1 2�p�p 0 sun  � m   4 5�o
�o 
TEXT�s  �r  � o   6 7�n�n 0 themonth theMonth� k   ; D�� ��� l  ; ;�m���m  � ' ! Sunday month with trailing space   � ��� B   S u n d a y   m o n t h   w i t h   t r a i l i n g   s p a c e� ��l� r   ; D��� b   ; B��� l  ; @��k�j� c   ; @��� n  ; >��� m   < >�i
�i 
mnth� o   ; <�h�h 0 sun  � m   > ?�g
�g 
TEXT�k  �j  � m   @ A�� ���   � o      �f�f 0 secondmonth secondMonth�l  �t  � r   G J��� m   G H�� ���  � o      �e�e 0 secondmonth secondMonth� ��� l  K K�d�c�b�d  �c  �b  � ��� l  K K�a���a  � 1 + Check if the weekend spans a year boundary   � ��� V   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   y e a r   b o u n d a r y� ��� Z   K f���`�� >  K R��� l  K P��_�^� c   K P��� n  K N��� 1   L N�]
�] 
year� o   K L�\�\ 0 sun  � m   N O�[
�[ 
TEXT�_  �^  � o   P Q�Z�Z 0 theyear theYear� k   U ^�� ��� l  U U�Y���Y  � &   Sunday year with leading hyphen   � ��� @   S u n d a y   y e a r   w i t h   l e a d i n g   h y p h e n� ��X� r   U ^��� l  U \��W�V� b   U \��� m   U V�� ���  -� l  V [��U�T� c   V [��� n  V Y��� 1   W Y�S
�S 
year� o   V W�R�R 0 sun  � m   Y Z�Q
�Q 
TEXT�U  �T  �W  �V  � o      �P�P 0 
secondyear 
secondYear�X  �`  � r   a f��� m   a d�� ���  � o      �O�O 0 
secondyear 
secondYear� ��� l  g g�N�M�L�N  �M  �L  � ��� r   g ���� l  g ���K�J� b   g ���� b   g ���� b   g ���� b   g ���� b   g x��� b   g v   b   g r b   g p b   g l m   g j �		   S a t u r d a y / S u n d a y   o   j k�I�I 0 themonth theMonth m   l o

 �    o   p q�H�H 0 thedate theDate m   r u �  -� o   v w�G�G 0 secondmonth secondMonth� l  x �F�E c   x  n  x } 1   y }�D
�D 
day  o   x y�C�C 0 sun   m   } ~�B
�B 
TEXT�F  �E  � m   � � �   � o   � ��A�A 0 theyear theYear� o   � ��@�@ 0 
secondyear 
secondYear�K  �J  � o      �?�? 0 pagedate pageDate� �> l  � ��=�=   Z T Empty secondMonth/Year strings (set above) mean this can be used for every Saturday    � �   E m p t y   s e c o n d M o n t h / Y e a r   s t r i n g s   ( s e t   a b o v e )   m e a n   t h i s   c a n   b e   u s e d   f o r   e v e r y   S a t u r d a y�>  u   Saturday/Sunday pageDate   v � 2   S a t u r d a y / S u n d a y   p a g e D a t eE  l     �<�;�:�<  �;  �:    l     �9�8�7�9  �8  �7    l     �6 !�6    . ( Assemble date for use in the file names   ! �"" P   A s s e m b l e   d a t e   f o r   u s e   i n   t h e   f i l e   n a m e s #$# i    %&% I      �5'�4�5 "0 create_filedate create_fileDate' ()( o      �3�3 0 themonth theMonth) *+* o      �2�2 0 thedate theDate+ ,-, o      �1�1 0 theyear theYear- .�0. o      �/�/ 0 months_list  �0  �4  & k     =// 010 Z    23�.�-2 A    454 l    6�,�+6 c     787 o     �*�* 0 thedate theDate8 m    �)
�) 
nmbr�,  �+  5 m    �(�( 
3 r    9:9 l   ;�'�&; b    <=< m    	>> �??  0= o   	 
�%�% 0 thedate theDate�'  �&  : o      �$�$ 0 thedate theDate�.  �-  1 @A@ l   �#�"�!�#  �"  �!  A BCB r    DED n   FGF I    � H��  0 list_position  H IJI o    �� 0 themonth theMonthJ K�K o    �� 0 months_list  �  �  G  f    E o      �� 0 themonth theMonthC LML Z   +NO��N A   PQP o    �� 0 themonth theMonthQ m    �� 
O r   " 'RSR l  " %T��T b   " %UVU m   " #WW �XX  0V o   # $�� 0 themonth theMonth�  �  S o      �� 0 themonth theMonth�  �  M YZY l  , ,����  �  �  Z [�[ l  , =\]^\ r   , =_`_ l  , ;a��a b   , ;bcb b   , /ded o   , -�� 0 thedate theDatee o   - .�� 0 themonth theMonthc l  / :f�
�	f n   / :ghg 7 0 :�ij
� 
ctxti m   4 6�� j m   7 9�� h o   / 0�� 0 theyear theYear�
  �	  �  �  ` o      �� 0 filedate fileDate] ? 9 Combines the date, month and last two digits of the year   ^ �kk r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�  $ lml l     ����  �  �  m non l     � �����   ��  ��  o pqp l     ��rs��  r Y S pageGen: Opens the master file and calls functions to construct the requested page   s �tt �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g eq uvu l     ��wx��  w ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   x �yy �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e rv z{z l     ��|}��  | @ : The page number is that of the left-hand page for spreads   } �~~ t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s{ � i    ��� I      ������� 0 pagegen pageGen� ��� o      ���� 0 pagetype pageType� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 theslug theSlug� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O     X��� k    W�� ��� I   �����
�� .aevtodocnull  �    alis� o    	����  0 masterdocument masterDocument��  � ��� n   ��� I    ������� 0 applymaster applyMaster� ��� o    ���� 0 	themaster 	theMaster� ��� o    ���� 0 pagetype pageType� ���� o    ���� 0 
pagenumber 
pageNumber��  ��  �  f    � ��� l   ��������  ��  ��  � ��� Z    '������� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ��� 
 N e w s -� l   #���� n   #��� I    #�������  0 drawembargobox drawEmbargoBox� ���� o    ���� 0 pagetype pageType��  ��  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *��  ��  � ��� l  ( (��������  ��  ��  � ��� Z   ( @������� G   ( 3��� =  ( +��� o   ( )���� 0 	themaster 	theMaster� m   ) *�� ���  F e a t - T V� =  . 1��� o   . /���� 0 	themaster 	theMaster� m   / 0�� ���  F e a t - R e d L i s t� n  6 <��� I   7 <������� "0 changelegaldate changeLegalDate� ���� o   7 8���� 0 	themaster 	theMaster��  ��  �  f   6 7��  ��  � ��� l  A A��������  ��  ��  � ��� n  A H��� I   B H������� 0 	cleansave 	cleanSave� ��� o   B C���� 0 
pagenumber 
pageNumber� ���� o   C D���� 0 theslug theSlug��  ��  �  f   A B� ���� O  I W��� I  O V�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m   Q R��
�� savoyes ��  � l  I L������ 1   I L��
�� 
pacd��  ��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    !��� I      ������� 0 applymaster applyMaster� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 pagetype pageType� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O    ���� O   ���� Z   
������� =  
 ��� o   
 ���� 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    ���
�� 
mspr� o    ���� 0 	themaster 	theMaster� n      ��� 1    ��
�� 
pmas� 4    ���
�� 
page� m    ���� � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ���� Z    �������� H        E     o    ���� 0 	themaster 	theMaster m     �  X - B l a n k� l  # � k   # � 	
	 I  # 3��
�� .InESovrrobj         obj  n   # * 4   ' *��
�� 
txtf m   ( ) �  E d i t i o n   d a t e 4   # '��
�� 
mspr o   % &���� 0 	themaster 	theMaster ����
�� 
dPge 4   + /��
�� 
page m   - .���� ��  
  l  4 ? r   4 ? o   4 5���� 0 pagedate pageDate l     ���� n       1   < >��
�� 
pcnt n   5 <  4   9 <��!
�� 
txtf! m   : ;"" �##  E d i t i o n   d a t e  4   5 9��$
�� 
page$ m   7 8���� ��  ��     Sets the date    �%%    S e t s   t h e   d a t e &'& Q   @ p()��( l  C g*+,* I  C g��-.
�� .InESovrrobj         obj - l  C ^/����/ 6  C ^010 n   C K232 2   I K��
�� 
cobj3 n   C I454 1   G I��
�� 
mpgs5 4   C G��6
�� 
page6 m   E F���� 1 =  N ]787 n  O W9:9 1   S W��
�� 
pnam: 1   O S��
�� 
pilr8 m   X \;; �<<  W o r k��  ��  . ��=��
�� 
dPge= 4   _ c��>
�� 
page> m   a b���� ��  + o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items   , �?? �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s) R      ������
�� .ascrerr ****      � ****��  ��  ��  ' @��@ Z   q �AB����A >  q vCDC o   q r���� 0 
pagenumber 
pageNumberD m   r uEE �FF  B l  y �GHIG k   y �JJ KLK I  y ���MN
�� .InESovrrobj         obj M n   y �OPO 4   } ���Q
�� 
txtfQ m   ~ �RR �SS  P a g e   n u m b e rP 4   y }��T
�� 
msprT o   { |���� 0 	themaster 	theMasterN ��U��
�� 
dPgeU 4   � ���V
�� 
pageV m   � ����� ��  L W��W r   � �XYX o   � ��� 0 
pagenumber 
pageNumberY l     Z�~�}Z n      [\[ 1   � ��|
�| 
pcnt\ n   � �]^] 4   � ��{_
�{ 
txtf_ m   � �`` �aa  P a g e   n u m b e r^ 4   � ��zb
�z 
pageb m   � ��y�y �~  �}  ��  H G A Mostly to skip the front, which doesn't have a page number frame   I �cc �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��   6 0 The X-Blanks have no page number or date frames    �dd `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s��  ��  ��  � efe =  � �ghg o   � ��x�x 0 pagetype pageTypeh m   � �ii �jj  s p r e a df k�wk k   ��ll mnm l  � �opqo I  � ��v�ur
�v .corecrel****      � null�u  r �tst
�t 
kocls m   � ��s
�s 
sprdt �ru�q
�r 
prdtu K   � �vv �pw�o
�p 
pmasw 4   � ��nx
�n 
msprx o   � ��m�m 0 	themaster 	theMaster�o  �q  p G A Creates a two-page spread at pages 2 & 3 with the master applied   q �yy �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e dn z�lz Z   ��{|�k�j{ H   � �}} E   � �~~ o   � ��i�i 0 	themaster 	theMaster m   � ��� ���  X - B l a n k| k   ���� ��� I  � ��h��
�h .InESovrrobj         obj � n   � ���� 4   � ��g�
�g 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ��f�
�f 
mspr� o   � ��e�e 0 	themaster 	theMaster� �d��c
�d 
dPge� 4   � ��b�
�b 
page� m   � ��a�a �c  � ��� I  � ��`��
�` .InESovrrobj         obj � n   � ���� 4   � ��_�
�_ 
txtf� m   � ��� ���  R - E d i t i o n   d a t e� 4   � ��^�
�^ 
mspr� o   � ��]�] 0 	themaster 	theMaster� �\��[
�\ 
dPge� 4   � ��Z�
�Z 
page� m   � ��Y�Y �[  � ��� l  � ���� r   � ��� o   � ��X�X 0 pagedate pageDate� l     ��W�V� n      ��� 1   � ��U
�U 
pcnt� n   � ���� 4   � ��T�
�T 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ��S�
�S 
page� m   � ��R�R �W  �V  � * $ Sets the date on the left-hand page   � ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e� ��� l ���� r  ��� o  �Q�Q 0 pagedate pageDate� l     ��P�O� n      ��� 1  �N
�N 
pcnt� n  ��� 4  �M�
�M 
txtf� m  
�� ���  R - E d i t i o n   d a t e� 4  �L�
�L 
page� m  �K�K �P  �O  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  d���J� k  [�� ��� I 6�I��
�I .InESovrrobj         obj � l -��H�G� 6 -��� n  ��� 2  �F
�F 
cobj� n  ��� 1  �E
�E 
mpgs� 4  �D�
�D 
page� m  �C�C � = ,��� n &��� 1  "&�B
�B 
pnam� 1  "�A
�A 
pilr� m  '+�� ���  W o r k�H  �G  � �@��?
�@ 
dPge� 4  .2�>�
�> 
page� m  01�=�= �?  � ��<� I 7[�;��
�; .InESovrrobj         obj � l 7R��:�9� 6 7R��� n  7?��� 2  =?�8
�8 
cobj� n  7=��� 1  ;=�7
�7 
mpgs� 4  7;�6�
�6 
page� m  9:�5�5 � = BQ��� n CK��� 1  GK�4
�4 
pnam� 1  CG�3
�3 
pilr� m  LP�� ���  W o r k�:  �9  � �2��1
�2 
dPge� 4  SW�0�
�0 
page� m  UV�/�/ �1  �<  � R      �.�-�,
�. .ascrerr ****      � ****�-  �,  �J  � ��+� Z  e����*�)� > ej��� o  ef�(�( 0 
pagenumber 
pageNumber� m  fi�� ���  � k  m��� ��� I m�'��
�' .InESovrrobj         obj � n  mv��� 4  qv�&�
�& 
txtf� m  ru�� ���  L - P a g e   n u m b e r� 4  mq�%�
�% 
mspr� o  op�$�$ 0 	themaster 	theMaster� �#��"
�# 
dPge� 4  w{�!�
�! 
page� m  yz� �  �"  � ��� I ���� 
� .InESovrrobj         obj � n  �� 4  ���
� 
txtf m  �� �  R - P a g e   n u m b e r 4  ���
� 
mspr o  ���� 0 	themaster 	theMaster  ��
� 
dPge 4  ���
� 
page m  ���� �  � 	
	 r  �� o  ���� 0 
pagenumber 
pageNumber l     �� n       1  ���
� 
pcnt n  �� 4  ���
� 
txtf m  �� �  L - P a g e   n u m b e r 4  ���
� 
page m  ���� �  �  
 � r  �� l ���� c  �� l ���� [  �� o  ���� 0 
pagenumber 
pageNumber m  ���
�
 �  �   m  ���	
�	 
TEXT�  �   l     �� n       !  1  ���
� 
pcnt! n  ��"#" 4  ���$
� 
txtf$ m  ��%% �&&  R - P a g e   n u m b e r# 4  ���'
� 
page' m  ���� �  �  �  �*  �)  �+  �k  �j  �l  �w  ��  � l   (��( 1    � 
�  
pacd�  �  � m     ))�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � *+* l     ��������  ��  ��  + ,-, l     ��������  ��  ��  - ./. l     ��01��  0 X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List   1 �22 �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t/ 343 i   " %565 I      ��7���� "0 changelegaldate changeLegalDate7 8��8 o      ���� 0 	themaster 	theMaster��  ��  6 O     W9:9 O    V;<; Z   
 U=>?��= =  
 @A@ o   
 ���� 0 	themaster 	theMasterA m    BB �CC  F e a t - R e d L i s t> k    ,DD EFE I    ��GH
�� .InESovrrobj         obj G n    IJI 4    ��K
�� 
txtfK m    LL �MM  L e g a l   d a t eJ 4    ��N
�� 
msprN o    ���� 0 	themaster 	theMasterH ��O��
�� 
dPgeO 4    ��P
�� 
pageP m    ���� ��  F Q��Q r   ! ,RSR o   ! "���� 0 pagedate pageDateS l     T����T n      UVU 1   ) +��
�� 
pcntV n   " )WXW 4   & )��Y
�� 
txtfY m   ' (ZZ �[[  L e g a l   d a t eX 4   " &��\
�� 
page\ m   $ %���� ��  ��  ��  ? ]^] =  / 2_`_ o   / 0���� 0 	themaster 	theMaster` m   0 1aa �bb  F e a t - T V^ c��c k   5 Qdd efe I  5 E��gh
�� .InESovrrobj         obj g n   5 <iji 4   9 <��k
�� 
txtfk m   : ;ll �mm  L e g a l   d a t ej 4   5 9��n
�� 
msprn o   7 8���� 0 	themaster 	theMasterh ��o��
�� 
dPgeo 4   = A��p
�� 
pagep m   ? @���� ��  f q��q r   F Qrsr o   F G���� 0 pagedate pageDates l     t����t n      uvu 1   N P��
�� 
pcntv n   G Nwxw 4   K N��y
�� 
txtfy m   L Mzz �{{  L e g a l   d a t ex 4   G K��|
�� 
page| m   I J���� ��  ��  ��  ��  ��  < l   }����} 1    ��
�� 
pacd��  ��  : m     ~~�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  4 � l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   � ��� �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e� ��� i   & )��� I      �������  0 drawembargobox drawEmbargoBox� ���� o      ���� 0 pagetype pageType��  ��  � O     {��� O    z��� k    y�� ��� Z    $������ =   ��� o    ���� 0 pagetype pageType� m    �� ���  s i n g l e� r    ��� m    ���� � o      ���� 0 pagenum pageNum� ��� =   ��� o    ���� 0 pagetype pageType� m    �� ���  s p r e a d� ���� r     ��� m    ���� � o      ���� 0 pagenum pageNum��  ��  � ��� l  % %��������  ��  ��  � ��� r   % 4��� 6  % 2��� l  % )������ 4  % )���
�� 
layr� m   ' (���� ��  ��  � =  * 1��� 1   + -��
�� 
pnam� m   . 0�� ���  W o r k� o      ���� 0 	worklayer 	workLayer� ��� l  5 5��������  ��  ��  � ��� O   5 b��� r   < a��� I  < _�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   > ?��
�� 
txtf� �����
�� 
prdt� K   @ Y�� ����
�� 
pilr� o   A B���� 0 	worklayer 	workLayer� ����
�� 
gbnd� J   C O�� ��� m   C D�� @,      � ��� m   D E�� �b�     � ��� m   E H�� @\�     � ���� m   H K�� �I      ��  � �����
�� 
pcnt� m   R U�� ��� " E m b a r g o e d   s t o r i e s��  ��  � o      ���� 0 ebox eBox� 4   5 9���
�� 
page� o   7 8���� 0 pagenum pageNum� ��� l  c q���� r   c q��� 4   c k���
�� 
ObSt� m   g j�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   l p��
�� 
aobs� o   k l���� 0 ebox eBox��  ��  � K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n� ���� r   r y��� m   r s��
�� boovtrue� n      ��� 1   t x��
�� 
plck� o   s t���� 0 ebox eBox��  � l   ������ 4   ���
�� 
docu� m    ���� ��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   * -��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
pagenumber 
pageNumber� ���� o      ���� 0 theslug theSlug��  ��  � O     _��� O    ^�	 � k   
 ]		 			 r   
 			 m   
 ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	
�� 
layr	 m    				 �	
	
 ( D a t e   a n d   p a g e   n u m b e r	 			 r    			 m    ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	
�� 
layr	 m    		 �		  F u r n i t u r e	 			 r    !			 m    		 �		  W o r k	 1     ��
�� 
pacl	 			 l  " "��~�}�  �~  �}  	 			 Z   " I			 �|	 l  " '	!�{�z	! =  " '	"	#	" `   " %	$	%	$ o   " #�y�y 0 
pagenumber 
pageNumber	% m   # $�x�x 	# m   % &�w�w  �{  �z  	 l  * 2	&	'	(	& r   * 2	)	*	) J   * .	+	+ 	,	-	, m   * +	.	. @.      	- 	/�v	/ m   + ,	0	0 @&      �v  	* l     	1�u�t	1 1   . 1�s
�s 
zero�u  �t  	' ( " For left-hand singles and spreads   	( �	2	2 D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s	  	3	4	3 l  5 :	5�r�q	5 =  5 :	6	7	6 `   5 8	8	9	8 o   5 6�p�p 0 
pagenumber 
pageNumber	9 m   6 7�o�o 	7 m   8 9�n�n �r  �q  	4 	:�m	: l  = E	;	<	=	; r   = E	>	?	> J   = A	@	@ 	A	B	A m   = >	C	C @"      	B 	D�l	D m   > ?	E	E @&      �l  	? l     	F�k�j	F 1   A D�i
�i 
zero�k  �j  	<   For right-hand singles   	= �	G	G .   F o r   r i g h t - h a n d   s i n g l e s�m  �|  	 	H	I	H l  J J�h�g�f�h  �g  �f  	I 	J�e	J I  J ]�d�c	K
�d .CoResavedocu        obj �c  	K �b	L�a
�b 
kfil	L b   L Y	M	N	M b   L W	O	P	O b   L U	Q	R	Q b   L S	S	T	S o   L Q�`�` $0 freshpagesfolder freshPagesFolder	T o   Q R�_�_ 0 theslug theSlug	R m   S T	U	U �	V	V  _	P o   U V�^�^ 0 filedate fileDate	N m   W X	W	W �	X	X 
 . i n d d�a  �e  	  l   	Y�]�\	Y 1    �[
�[ 
pacd�]  �\  � m     	Z	Z�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	[	\	[ l     �Z�Y�X�Z  �Y  �X  	\ 	]	^	] l     �W�V�U�W  �V  �U  	^ 	_	`	_ l     �T	a	b�T  	a f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	b �	c	c �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	` 	d	e	d i   . 1	f	g	f I      �S�R�Q�S 0 customedition customEdition�R  �Q  	g k    n	h	h 	i	j	i l     �P�O�N�P  �O  �N  	j 	k	l	k l     �M	m	n�M  	m | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	n �	o	o �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	l 	p	q	p l     �L	r	s�L  	r a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	s �	t	t �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	q 	u	v	u l     �K	w	x�K  	w [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	x �	y	y �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	v 	z	{	z l     �J�I�H�J  �I  �H  	{ 	|	}	| l     �G	~	�G  	~ > 8 The human-friendly names used in the TextWrangler file	   	 �	�	� p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		} 	�	�	� r     U	�	�	� J     S	�	� 	�	�	� m     	�	� �	�	� 
 F r o n t	� 	�	�	� m    	�	� �	�	�  S a t F r o n t	� 	�	�	� m    	�	� �	�	�  H o m e _ S	� 	�	�	� m    	�	� �	�	�  H o m e _ L	� 	�	�	� m    	�	� �	�	�  H o m e _ R	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ S	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ L	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ R	� 	�	�	� m    		�	� �	�	�  S t r u g g l e _ S	� 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =
 
  �

  S p o r t _ L	� 


 m   = @

 �

  S p o r t _ R
 


 m   @ C

 �
	
	  R a c i n g _ L
 




 m   C F

 �

  R a c i n g _ R
 


 m   F I

 �

  B l a n k _ S
 


 m   I L

 �

  B l a n k _ L
 
�F
 m   L O

 �

  B l a n k _ R�F  	� o      �E�E 0 
human_list  	� 


 l  V V�D

�D  
    The InDesign master names   
 �

 4   T h e   I n D e s i g n   m a s t e r   n a m e s
 


 r   V �
 
!
  J   V �
"
" 
#
$
# m   V Y
%
% �
&
&  N e w s - F r o n t
$ 
'
(
' m   Y \
)
) �
*
*  N e w s - S a t F r o n t
( 
+
,
+ m   \ _
-
- �
.
.  N e w s - H o m e - S p l i t
, 
/
0
/ m   _ b
1
1 �
2
2  N e w s - H o m e - L
0 
3
4
3 m   b e
5
5 �
6
6  N e w s - H o m e - R
4 
7
8
7 m   e h
9
9 �
:
: $ N e w s - F o r e i g n - S p l i t
8 
;
<
; m   h k
=
= �
>
>  N e w s - F o r e i g n - L
< 
?
@
? m   k n
A
A �
B
B  N e w s - F o r e i g n - R
@ 
C
D
C m   n q
E
E �
F
F & F e a t - S t r u g g l e - S p l i t
D 
G
H
G m   q t
I
I �
J
J  F e a t - S t r u g g l e - L
H 
K
L
K m   t w
M
M �
N
N  F e a t - S t r u g g l e - R
L 
O
P
O m   w z
Q
Q �
R
R * F e a t - N e w s R e v i e w - S p l i t
P 
S
T
S m   z }
U
U �
V
V " F e a t - N e w s R e v i e w - L
T 
W
X
W m   } �
Y
Y �
Z
Z " F e a t - N e w s R e v i e w - R
X 
[
\
[ m   � �
]
] �
^
^  F e a t - S p r e a d
\ 
_
`
_ m   � �
a
a �
b
b  F e a t - T V
` 
c
d
c m   � �
e
e �
f
f  F e a t - S a t T V
d 
g
h
g m   � �
i
i �
j
j $ F e a t - L e t t e r s - S p l i t
h 
k
l
k m   � �
m
m �
n
n  F e a t - L e t t e r s - L
l 
o
p
o m   � �
q
q �
r
r  F e a t - L e t t e r s - R
p 
s
t
s m   � �
u
u �
v
v  F e a t - R e d L i s t
t 
w
x
w m   � �
y
y �
z
z   F e a t - B l a n k - S p l i t
x 
{
|
{ m   � �
}
} �
~
~  F e a t - B l a n k - L
| 

�
 m   � �
�
� �
�
�  F e a t - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  A r t s - E n t s - S p l i t
� 
�
�
� m   � �
�
� �
�
�   A r t s - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  A r t s - B l a n k - L
� 
�
�
� m   � �
�
� �
�
�  A r t s - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  S p r t - B a c k
� 
�
�
� m   � �
�
� �
�
�   S p r t - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  S p r t - B l a n k - L
� 
�
�
� m   � �
�
� �
�
�  S p r t - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  S p r t - R a c i n g - L
� 
�
�
� m   � �
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
��C
� m   � �
�
� �
�
�  X - B l a n k - R�C  
! o      �B�B 0 masters_list  
 
�
�
� l  � ��A
�
��A  
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
�    m   � � �  T V  m   � �  L e t t e r s 	 m  

 �  L e t t e r s	  m   �  L e t t e r s  m   �  R e d L i s t  m   �  F e a t u r e s  m   �  F e a t u r e  m   �  F e a t u r e  !  m  "" �##  A r t s - E n t s! $%$ m  && �''  A r t s% ()( m  ** �++  A r t s) ,-, m   .. �//  A r t s- 010 m   #22 �33  B a c k1 454 m  #&66 �77 
 S p o r t5 898 m  &):: �;; 
 S p o r t9 <=< m  ),>> �?? 
 S p o r t= @A@ m  ,/BB �CC  R a c i n gA DED m  /2FF �GG  R a c i n gE HIH m  25JJ �KK 
 B L A N KI LML m  58NN �OO 
 B L A N KM P�@P m  8;QQ �RR 
 B L A N K�@  
� o      �?�? 0 
slugs_list  
� STS l BB�>�=�<�>  �=  �<  T UVU l BB�;WX�;  W 1 + Single-page masters (used to set pageType)   X �YY V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )V Z[Z r  B�\]\ J  B�^^ _`_ m  BEaa �bb  N e w s - F r o n t` cdc m  EHee �ff  N e w s - S a t F r o n td ghg m  HKii �jj  N e w s - H o m e - Lh klk m  KNmm �nn  N e w s - H o m e - Rl opo m  NQqq �rr  N e w s - F o r e i g n - Lp sts m  QTuu �vv  N e w s - F o r e i g n - Rt wxw m  TWyy �zz  F e a t - S t r u g g l e - Lx {|{ m  WZ}} �~~  F e a t - S t r u g g l e - R| � m  Z]�� ��� " F e a t - N e w s R e v i e w - L� ��� m  ]`�� ��� " F e a t - N e w s R e v i e w - R� ��� m  `c�� ���  F e a t - L e t t e r s - L� ��� m  cf�� ���  F e a t - L e t t e r s - R� ��� m  fi�� ���  F e a t - R e d L i s t� ��� m  il�� ���  F e a t - B l a n k - L� ��� m  lo�� ���  F e a t - B l a n k - R� ��� m  or�� ���  A r t s - B l a n k - L� ��� m  ru�� ���  A r t s - B l a n k - R� ��� m  ux�� ���  S p r t - B a c k� ��� m  x{�� ���  S p r t - B l a n k - L� ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ��:� m  ���� ���  X - B l a n k - R�:  ] o      �9�9 0 singles_list  [ ��� l ���8���8  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��7� m  ���� ���  X - B l a n k - S p l i t�7  � o      �6�6 0 spreads_list  � ��� l ���5�4�3�5  �4  �3  � ��2� O  �n��� O  �m   k  �l  l �� r  ��	 l ��
�1�0
 I ���/
�/ .R*chFindMtch���     TEXT m  �� �  ^ # S t a r t s   h e r e # $ �.�-
�. 
Opts K  �� �,
�, 
SMod m  ���+
�+ SModGrep �*�)
�* 
STop m  ���(
�( boovtrue�)  �-  �1  �0  	 o      �'�' 0 hashline hashLine   Finds the beginning line    � 2   F i n d s   t h e   b e g i n n i n g   l i n e  l �� r  �� l ���&�% [  �� l ���$�# l �� �"�!  n  ��!"! 1  ��� 
�  
SLin" l ��#��# n  ��$%$ 1  ���
� 
MSpc% o  ���� 0 hashline hashLine�  �  �"  �!  �$  �#   m  ���� �&  �%   o      �� 0 thestart theStart : 4 The first instruction is on the line after hashLine    �&& h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e '(' l �)*+) r  �,-, l �.��. 1  ��
� 
ELin�  �  - o      �� 0 theend theEnd* @ : The last instruction must be on the last line of the file   + �// t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e( 010 l ����  �  �  1 232 Y  j4�56�4 l e7897 k  e:: ;<; l -=>?= r  -@A@ l +B��B I +�CD
� .R*chFindMtch���     TEXTC m  EE �FF  ^ ( . + ) \ t ( . + ) $D �GH
� 
FnInG 4  �I
� 
clinI o  �� 0 x  H �
J�	
�
 
OptsJ K  %KK �L�
� 
SModL m   #�
� SModGrep�  �	  �  �  A o      �� 0 searchresult searchResult> 9 3 Finds characters, then a tab, then more characters   ? �MM f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s< NON l ..����  �  �  O PQP l .;RSTR r  .;UVU l .9W�� W I .9����X
�� .R*chGSubutxt    ��� null��  X ��Y��
�� 
RplPY m  25ZZ �[[  \ 1��  �  �   V o      ���� 0 
pagenumber 
pageNumberS < 6 The page number (or a spread's left-hand page number)   T �\\ l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )Q ]^] l <I_`a_ r  <Ibcb l <Gd����d I <G����e
�� .R*chGSubutxt    ��� null��  e ��f��
�� 
RplPf m  @Cgg �hh  \ 2��  ��  ��  c o      ���� 0 hmaster hMaster` = 7 Human-friendly master name, as contained in human_list   a �ii n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t^ jkj l JJ��������  ��  ��  k l��l Z  Jemn����m H  JToo E  JSpqp l JOr����r n  JOsts 1  KO��
�� 
MTxtt o  JK���� 0 searchresult searchResult��  ��  q m  ORuu �vv  - 	 -n l Wawxyw k  Wazz {|{ l WW��������  ��  ��  | }~} Q  W_�� k  Z��� ��� l Zc���� r  Zc��� l Za������ n Za��� I  [a������� 0 list_position  � ��� o  [\���� 0 hmaster hMaster� ���� o  \]���� 0 
human_list  ��  ��  �  f  Z[��  ��  � o      ���� 0 listpos listPos� Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   � ��� �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s t� ��� l dl���� r  dl��� l dj������ n  dj��� 4  ej���
�� 
cobj� o  hi���� 0 listpos listPos� o  de���� 0 masters_list  ��  ��  � o      ���� 0 	themaster 	theMaster� 1 + Sets theMaster to the InDesign master name   � ��� V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m e� ��� l mm��������  ��  ��  � ��� Z  m������� E mp��� o  mn���� 0 singles_list  � o  no���� 0 	themaster 	theMaster� r  sx��� m  sv�� ���  s i n g l e� o      ���� 0 pagetype pageType� ��� E {~��� o  {|���� 0 spreads_list  � o  |}���� 0 	themaster 	theMaster� ���� r  ����� m  ���� ���  s p r e a d� o      ���� 0 pagetype pageType��  ��  � ��� l ����������  ��  ��  � ��� Z  �������� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l �������� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  ��  ��  � o      ���� 0 theslug theSlug� 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l e� ��� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s p r e a d� ���� r  ����� l �������� b  ����� b  ����� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  -� l �������� [  ����� o  ������ 0 
pagenumber 
pageNumber� m  ������ ��  ��  � m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  ��  ��  � o      ���� 0 theslug theSlug��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� G  ����� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ��   m  �� �   o      ���� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � � �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l��  ��  �  l ����������  ��  ��    l ��	
	 n �� I  �������� 0 pagegen pageGen  o  ������ 0 pagetype pageType  o  ������ 0 	themaster 	theMaster  o  ������ 0 theslug theSlug �� o  ������ 0 
pagenumber 
pageNumber��  ��    f  ��
 ' ! Calls pageGen to create the page    � B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e �� l ����������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****��   ����
�� 
errn d       m      ����
���  � k  �_  l ������   M G Handles "variable not defined" - aimed at listPos - to catch bad input    �   �   H a n d l e s   " v a r i a b l e   n o t   d e f i n e d "   -   a i m e d   a t   l i s t P o s   -   t o   c a t c h   b a d   i n p u t !"! r  �'#$# b  �#%&% b  �'(' b  �)*) b  �+,+ b  �-.- b  �/0/ b  �121 b  �343 b  �565 m  ��77 �88 R T h e r e   i s   a   p r o b l e m   w i t h   t h i s   i n s t r u c t i o n :6 o  � ��
�� 
ret 4 o  ��
�� 
ret 2 l 
9����9 n  
:;: 1  
��
�� 
MTxt; o  ���� 0 searchresult searchResult��  ��  0 o  ��
�� 
ret . o  ��
�� 
ret , m  << �== � P l e a s e   d o u b l e - c h e c k   t h a t   t h e   p a g e   t y p e   i s   s p e l l e d   e x a c t l y   a s   l i s t e d .* o  ��
�� 
ret ( o  ��
�� 
ret & m  ">> �?? � D o   y o u   w i s h   t o   g e n e r a t e   t h e   r e s t   o f   t h e   p a g e s   o r   s t o p   t h e   s c r i p t ?$ o      ���� 0 message2753  " @A@ I (B��BC
�� .sysodlogaskr        TEXTB o  (+���� 0 message2753  C ��DE
�� 
btnsD J  .6FF GHG m  .1II �JJ  C o n t i n u eH K��K m  14LL �MM  S t o p��  E ��N��
�� 
dfltN m  9<OO �PP  S t o p��  A Q��Q Z C_RS����R = CNTUT l CJV���V n  CJWXW 1  FJ�~
�~ 
bhitX l CFY�}�|Y 1  CF�{
�{ 
rslt�}  �|  ��  �  U m  JMZZ �[[  S t o pS R  Q[�z�y\
�z .ascrerr ****      � ****�y  \ �x]�w
�x 
errn] m  UX�v�v���w  ��  ��  ��  ~ ^_^ l ``�u�t�s�u  �t  �s  _ `�r` l ``�q�p�o�q  �p  �o  �r  x : 4 Lines consisting of "hyphen tab hyphen" are skipped   y �aa h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d��  ��  ��  8 P J Goes through each line from the one after hashLine to the end of the file   9 �bb �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e� 0 x  5 o  �n�n 0 thestart theStart6 o  	�m�m 0 theend theEnd�  3 c�lc l kk�k�j�i�k  �j  �i  �l   n  ��ded 4  ���hf
�h 
ctxtf m  ���g�g e 4  ���fg
�f 
TxtWg m  ���e�e � m  ��hh�                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                               �t<�	�W        ����  	                Applications    �@��      �	�G    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  �2  	e iji l     �d�c�b�d  �c  �b  j klk l     �amn�a  m , & newsGen: News-page generation routine   n �oo L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n el pqp i   2 5rsr I      �`t�_�` 0 newsgen newsGent uvu o      �^�^ &0 masterstogenerate mastersToGeneratev w�]w o      �\�\ 0 theday theDay�]  �_  s k    Xxx yzy Z     _{|�[�Z{ E    }~} o     �Y�Y &0 masterstogenerate mastersToGenerate~ m     ���  N e w s   p a g e s| k    [�� ��� Z    +����X� >   	��� o    �W�W 0 theday theDay� m    �� ���  S a t u r d a y� l   ���� I    �V��U�V 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  N e w s - F r o n t� ��� m    �� ���  1 _ F r o n t� ��T� m    �� ���  �T  �U  � ; 5 If block to create the weekday or weekend front page   � ��� j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e� ��� =   ��� o    �S�S 0 theday theDay� m    �� ���  S a t u r d a y� ��R� I    '�Q��P�Q 0 pagegen pageGen� ��� m     �� ���  s i n g l e� ��� m     !�� ���  N e w s - S a t F r o n t� ��� m   ! "�� ���  1 _ F r o n t� ��O� m   " #�� ���  �O  �P  �R  �X  � ��� I   , 7�N��M�N 0 pagegen pageGen� ��� m   - .�� ���  s p r e a d� ��� m   . /�� ���  N e w s - H o m e - S p l i t� ��� m   / 0�� ���  2 - 3 _ H o m e� ��L� m   0 3�� ���  2�L  �M  � ��� I   8 I�K��J�K 0 pagegen pageGen� ��� m   9 <�� ���  s p r e a d� ��� m   < ?�� ���  N e w s - H o m e - S p l i t� ��� m   ? B�� ���  4 - 5 _ H o m e� ��I� m   B E�� ���  4�I  �J  � ��H� I   J [�G��F�G 0 pagegen pageGen� ��� m   K N�� ���  s p r e a d� ��� m   N Q�� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   Q T�� ���  6 - 7 _ F o r e i g n� ��E� m   T W�� ���  6�E  �F  �H  �[  �Z  z ��� l  ` `�D�C�B�D  �C  �B  � ��� Z   ` ����A�@� E  ` e��� o   ` a�?�? &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h �����>� >  h m��� o   h i�=�= 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p ��<��;�< 0 pagegen pageGen� ��� m   q t�� �    s p r e a d�  m   t w �  F e a t - T V  m   w z �  1 2 - 1 3 _ T V 	�:	 m   z }

 �  1 2�:  �;  �  =  � � o   � ��9�9 0 theday theDay m   � � �  S a t u r d a y �8 I   � ��7�6�7 0 pagegen pageGen  m   � � �  s p r e a d  m   � � �  F e a t - S a t T V  m   � � �  1 8 - 1 9 _ T V  �5  m   � �!! �""  1 8�5  �6  �8  �>  �A  �@  � #$# l  � ��4�3�2�4  �3  �2  $ %&% Z   �'(�1�0' E  � �)*) o   � ��/�/ &0 masterstogenerate mastersToGenerate* m   � �++ �,,  L e t t e r s( k   �-- ./. l  � �0120 r   � �343 J   � �55 676 m   � �88 �99  M o n d a y7 :�.: m   � �;; �<<  W e d n e s d a y�.  4 o      �-�- 0 p10_days  1 = 7 These two lists determine what the page number will be   2 �== n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e/ >?> r   � �@A@ J   � �BB CDC m   � �EE �FF  T u e s d a yD GHG m   � �II �JJ  T h u r s d a yH K�,K m   � �LL �MM  F r i d a y�,  A o      �+�+ 0 p14_days  ? NON l  � ��*�)�(�*  �)  �(  O P�'P Z   �QRS�&Q E  � �TUT o   � ��%�% 0 p10_days  U o   � ��$�$ 0 theday theDayR I   � ��#V�"�# 0 pagegen pageGenV WXW m   � �YY �ZZ  s i n g l eX [\[ m   � �]] �^^  F e a t - L e t t e r s - L\ _`_ m   � �aa �bb  1 0 _ L e t t e r s` c�!c m   � �dd �ee  1 0�!  �"  S fgf E  � �hih o   � �� �  0 p14_days  i o   � ��� 0 theday theDayg jkj I   � ��l�� 0 pagegen pageGenl mnm m   � �oo �pp  s i n g l en qrq m   � �ss �tt  F e a t - L e t t e r s - Lr uvu m   � �ww �xx  1 4 _ L e t t e r sv y�y m   � �zz �{{  1 4�  �  k |}| =  � ~~ o   � ��� 0 theday theDay m   � ��� ���  S a t u r d a y} ��� I  ���� 0 pagegen pageGen� ��� m  �� ���  s p r e a d� ��� m  
�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  
�� ���  1 0 - 1 1 _ L e t t e r s� ��� m  �� ���  1 0�  �  �  �&  �'  �1  �0  & ��� l ����  �  �  � ��� Z  :����� E "��� o  �� &0 masterstogenerate mastersToGenerate� m  !�� ���  S t r u g g l e� I  %6���� 0 pagegen pageGen� ��� m  &)�� ���  s i n g l e� ��� m  ),�� ���  F e a t - S t r u g g l e - L� ��� m  ,/�� ���  1 4 _ S t r u g g l e� ��� m  /2�� ���  1 4�  �  �  �  � ��� l ;;����  �  �  � ��
� Z  ;X���	�� E ;@��� o  ;<�� &0 masterstogenerate mastersToGenerate� m  <?�� ���  R e d   L i s t� I  CT���� 0 pagegen pageGen� ��� m  DG�� ���  s i n g l e� ��� m  GJ�� ���  F e a t - R e d L i s t� ��� m  JM�� ���  2 0 _ R e d L i s t� ��� m  MP�� ���  2 0�  �  �	  �  �
  q ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ��� l     ������  � 1 + featsGen: Features-page generation routine   � ��� V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   6 9��� I      ������� 0 featsgen featsGen� ��� o      ���� &0 masterstogenerate mastersToGenerate� ���� o      ���� 0 theday theDay��  ��  � k    ��� ��� Z     %������� E    ��� o     ���� &0 masterstogenerate mastersToGenerate� m    �� ���  S p r e a d� Z    !������ =   	��� o    ���� 0 theday theDay� m    �� ���  S a t u r d a y� I    ������� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ���� m    �� ���  1 2��  ��  ��  � I    !������� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d�    m     �  8 - 9 _ F e a t u r e s �� m     �  8��  ��  ��  ��  �  l  & &��������  ��  ��   	
	 Z   & ;���� E  & ) o   & '���� &0 masterstogenerate mastersToGenerate m   ' ( �  1 0 I   , 7������ 0 pagegen pageGen  m   - . �  s i n g l e  m   . / �  F e a t - B l a n k - L  m   / 0 �  1 0 _ F e a t u r e s �� m   0 3 �    1 0��  ��  ��  ��  
 !"! l  < <��������  ��  ��  " #$# Z   < Y%&����% E  < A'(' o   < =���� &0 masterstogenerate mastersToGenerate( m   = @)) �** 
 1 2 - 1 3& I   D U��+���� 0 pagegen pageGen+ ,-, m   E H.. �//  s p r e a d- 010 m   H K22 �33  F e a t - T V1 454 m   K N66 �77  1 2 - 1 3 _ T V5 8��8 m   N Q99 �::  1 2��  ��  ��  ��  $ ;<; l  Z Z��������  ��  ��  < =>= Z   Z w?@����? E  Z _ABA o   Z [���� &0 masterstogenerate mastersToGenerateB m   [ ^CC �DD ( N e w s   r e v i e w s      s p l i t@ I   b s��E���� 0 pagegen pageGenE FGF m   c fHH �II  s p r e a dG JKJ m   f iLL �MM * F e a t - N e w s R e v i e w - S p l i tK NON m   i lPP �QQ  8 - 9 _ N e w s R e v i e wO R��R m   l oSS �TT  8��  ��  ��  ��  > UVU Z   x �WX����W E  x }YZY o   x y���� &0 masterstogenerate mastersToGenerateZ m   y |[[ �\\ , N e w s   r e v i e w s      s i n g l e sX k   � �]] ^_^ I   � ���`���� 0 pagegen pageGen` aba m   � �cc �dd  s i n g l eb efe m   � �gg �hh " F e a t - N e w s R e v i e w - Lf iji m   � �kk �ll  8 _ N e w s R e v i e wj m��m m   � �nn �oo  8��  ��  _ p��p I   � ���q���� 0 pagegen pageGenq rsr m   � �tt �uu  s i n g l es vwv m   � �xx �yy " F e a t - N e w s R e v i e w - Rw z{z m   � �|| �}}  9 _ N e w s R e v i e w{ ~��~ m   � � ���  9��  ��  ��  ��  ��  V ��� l  � ���������  ��  ��  � ��� Z   � �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  1 5� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - B l a n k - R� ��� m   � ��� ���  1 5 _ F e a t u r e s� ���� m   � ��� ���  1 5��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� Z   � �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ��� 
 1 6 - 1 7� l  � ����� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  A r t s - E n t s - S p l i t� ��� m   � ��� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   � ��� ���  1 6��  ��  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  � ��� l  � ���������  ��  ��  � ��� Z   �]������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   �Y�� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ���� m   � ��� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   ���� J   ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ��� m   � �� ���  F r i d a y� ���� m   �� ��� , N o   d a y      w o r k i n g   a h e a d��  � o      ���� 0 p14_days  � ��� l ��������  ��  ��  � ���� Z  Y������ E ��� o  	���� 0 p10_days  � o  	
���� 0 theday theDay� I  ������� 0 pagegen pageGen� ��� m  �� ���  s i n g l e� ��� m  �� ���  F e a t - L e t t e r s - L� ��� m  �� ���  1 0 _ L e t t e r s� ���� m  �� ���  1 0��  ��  �    E "% o  "#���� 0 p14_days   o  #$���� 0 theday theDay  I  (9������ 0 pagegen pageGen  m  ),		 �

  s i n g l e  m  ,/ �  F e a t - L e t t e r s - L  m  /2 �  1 4 _ L e t t e r s �� m  25 �  1 4��  ��    = <A o  <=���� 0 theday theDay m  =@ �  S a t u r d a y �� I  DU������ 0 pagegen pageGen  m  EH   �!!  s p r e a d "#" m  HK$$ �%% $ F e a t - L e t t e r s - S p l i t# &'& m  KN(( �))  1 0 - 1 1 _ L e t t e r s' *��* m  NQ++ �,,  1 0��  ��  ��  ��  ��  ��  ��  � -.- l ^^��������  ��  ��  . /0/ Z  ^{12����1 E ^c343 o  ^_���� &0 masterstogenerate mastersToGenerate4 m  _b55 �66  A r t s2 l fw7897 I  fw��:���� 0 pagegen pageGen: ;<; m  gj== �>>  s i n g l e< ?@? m  jmAA �BB  A r t s - B l a n k - R@ CDC m  mpEE �FF  1 1 _ A r t sD G��G m  psHH �II  1 1��  ��  8 ( " Create the weekday Arts page (11)   9 �JJ D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  0 KLK l ||��������  ��  ��  L M��M Z  |�NO����N E |�PQP o  |}���� &0 masterstogenerate mastersToGenerateQ m  }�RR �SS  A r t s   s p l i tO I  ����T���� 0 pagegen pageGenT UVU m  ��WW �XX  s p r e a dV YZY m  ��[[ �\\   A r t s - B l a n k - S p l i tZ ]^] m  ��__ �``  1 0 - 1 1 _ A r t s^ a��a m  ��bb �cc  1 0��  ��  ��  ��  ��  � ded l     ��������  ��  ��  e fgf l     �������  ��  �  g hih l     �~jk�~  j , & artsGen: Arts-page generation routine   k �ll L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n ei mnm i   : =opo I      �}q�|�} 0 artsgen artsGenq r�{r o      �z�z &0 masterstogenerate mastersToGenerate�{  �|  p k     =ss tut Z     vw�y�xv E    xyx o     �w�w &0 masterstogenerate mastersToGeneratey m    zz �{{  1 6 - 1 7   ( w e e k e n d )w l   |}~| I    �v�u�v 0 pagegen pageGen ��� m    �� ���  s p r e a d� ��� m    	�� ���  A r t s - E n t s - S p l i t� ��� m   	 
�� ���  1 6 - 1 7 _ E n t s - A r t s� ��t� m   
 �� ���  1 6�t  �u  } ( " Create the weekend Ents/Arts page   ~ ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�y  �x  u ��� l   �s�r�q�s  �r  �q  � ��� Z    '���p�o� E   ��� o    �n�n &0 masterstogenerate mastersToGenerate� m    �� ���  A r t s   ( p 1 1 )� l   #���� I    #�m��l�m 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  A r t s - B l a n k - R� ��� m    �� ���  1 1 _ A r t s� ��k� m    �� ���  1 1�k  �l  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�p  �o  � ��� l  ( (�j�i�h�j  �i  �h  � ��g� Z   ( =���f�e� E  ( +��� o   ( )�d�d &0 masterstogenerate mastersToGenerate� m   ) *�� ���  A r t s   s p l i t� l  . 9���� I   . 9�c��b�c 0 pagegen pageGen� ��� m   / 0�� ���  s p r e a d� ��� m   0 1�� ���   A r t s - B l a n k - S p l i t� ��� m   1 2�� ���  1 0 - 1 1 _ A r t s� ��a� m   2 5�� ���  1 0�a  �b  � + % Creates an Arts split-spread (10-11)   � ��� J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )�f  �e  �g  n ��� l     �`�_�^�`  �_  �^  � ��� l     �]�\�[�]  �\  �[  � ��� l     �Z���Z  � 0 * sportsGen: Sports-page generation routine   � ��� T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��Y� i   > A��� I      �X��W�X 0 	sportsgen 	sportsGen� ��V� o      �U�U &0 masterstogenerate mastersToGenerate�V  �W  � k    ��� ��� Z     ���T�S� E    ��� o     �R�R &0 masterstogenerate mastersToGenerate� m    �� ���  T w o   p a g e s� k    �� ��� I    �Q��P�Q 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    	�� ���  S p r t - B a c k� ��� m   	 
�� ���  1 6 _ B a c k� ��O� m   
 �� ���  1 6�O  �P  � ��N� I    �M��L�M 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  S p r t - B l a n k - R� � � m     �  1 5 _ S p o r t  �K m     �  1 5�K  �L  �N  �T  �S  �  l   �J�I�H�J  �I  �H   	 Z    U
�G�F
 E   ! o    �E�E &0 masterstogenerate mastersToGenerate m      �  T h r e e   p a g e s k   $ Q  I   $ -�D�C�D 0 pagegen pageGen  m   % & �  s i n g l e  m   & ' �  S p r t - B a c k  m   ' ( �  1 6 _ B a c k  �B  m   ( )!! �""  1 6�B  �C   #$# I   . ?�A%�@�A 0 pagegen pageGen% &'& m   / 2(( �))  s i n g l e' *+* m   2 5,, �--  S p r t - B l a n k - R+ ./. m   5 800 �11  1 5 _ S p o r t/ 2�?2 m   8 ;33 �44  1 5�?  �@  $ 5�>5 I   @ Q�=6�<�= 0 pagegen pageGen6 787 m   A D99 �::  s i n g l e8 ;<; m   D G== �>>  S p r t - B l a n k - L< ?@? m   G JAA �BB  1 4 _ S p o r t@ C�;C m   J MDD �EE  1 4�;  �<  �>  �G  �F  	 FGF l  V V�:�9�8�:  �9  �8  G HIH Z   V �JK�7�6J E  V [LML o   V W�5�5 &0 masterstogenerate mastersToGenerateM m   W ZNN �OO , T h r e e   p a g e s   w i t h   s p l i tK k   ^ �PP QRQ I   ^ o�4S�3�4 0 pagegen pageGenS TUT m   _ bVV �WW  s i n g l eU XYX m   b eZZ �[[  S p r t - B a c kY \]\ m   e h^^ �__  1 6 _ B a c k] `�2` m   h kaa �bb  1 6�2  �3  R c�1c I   p ��0d�/�0 0 pagegen pageGend efe m   q tgg �hh  s p r e a df iji m   t wkk �ll   S p r t - B l a n k - S p l i tj mnm m   w zoo �pp  1 4 - 1 5 _ S p o r tn q�.q m   z }rr �ss  1 4�.  �/  �1  �7  �6  I tut l  � ��-�,�+�-  �,  �+  u vwv Z   � �xy�*�)x E  � �z{z o   � ��(�( &0 masterstogenerate mastersToGenerate{ m   � �|| �}}  F o u r   p a g e sy k   � �~~ � I   � ��'��&�' 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��%� m   � ��� ���  2 4�%  �&  � ��� I   � ��$��#�$ 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - R� ��� m   � ��� ���  2 3 _ S p o r t� ��"� m   � ��� ���  2 3�"  �#  � ��� I   � ��!�� �! 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - L� ��� m   � ��� ���  2 2 _ S p o r t� ��� m   � ��� ���  2 2�  �   � ��� I   � ����� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - R a c i n g - R� ��� m   � ��� ���  2 1 _ R a c i n g� ��� m   � ��� ���  2 1�  �  �  �*  �)  w ��� l  � �����  �  �  � ��� Z   ������ E  � ���� o   � ��� &0 masterstogenerate mastersToGenerate� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� k   ��� ��� I   � ����� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��� m   � ��� ���  2 4�  �  � ��� I   ����� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���   S p r t - B l a n k - S p l i t� ��� m   � ��� ���  2 2 - 2 3 _ S p o r t� ��� m   ��� ���  2 2�  �  � ��� I  ���� 0 pagegen pageGen� ��� m  
�� ���  s i n g l e� ��� m  
�� ���  S p r t - R a c i n g - R� � � m   �  2 1 _ R a c i n g  � m   �  2 1�  �  �  �  �  �  l �
�	��
  �	  �   	 Z  9
��
 E ! o  �� &0 masterstogenerate mastersToGenerate m    �  R a c i n g   o n l y I  $5��� 0 pagegen pageGen  m  %( �  s i n g l e  m  (+ �  S p r t - R a c i n g - R  m  +. �  2 1 _ R a c i n g � m  .1 �  2 1�  �  �  �  	  !  l ::�� ���  �   ��  ! "#" Z  :W$%����$ E :?&'& o  :;���� &0 masterstogenerate mastersToGenerate' m  ;>(( �))  E x t r a   l e f t   p a g e% I  BS��*���� 0 pagegen pageGen* +,+ m  CF-- �..  s i n g l e, /0/ m  FI11 �22  S p r t - B l a n k - L0 343 m  IL55 �66  L _ X X _ S p o r t4 7��7 m  LO88 �99  0 0��  ��  ��  ��  # :;: l XX��������  ��  ��  ; <=< Z  Xu>?����> E X]@A@ o  XY���� &0 masterstogenerate mastersToGenerateA m  Y\BB �CC   E x t r a   r i g h t   p a g e? I  `q��D���� 0 pagegen pageGenD EFE m  adGG �HH  s i n g l eF IJI m  dgKK �LL  S p r t - B l a n k - RJ MNM m  gjOO �PP  R _ X X _ S p o r tN Q��Q m  jmRR �SS  0 0��  ��  ��  ��  = TUT l vv��������  ��  ��  U V��V Z  v�WX����W E v{YZY o  vw���� &0 masterstogenerate mastersToGenerateZ m  wz[[ �\\  E x t r a   s p l i tX I  ~���]���� 0 pagegen pageGen] ^_^ m  �`` �aa  s p r e a d_ bcb m  ��dd �ee   S p r t - B l a n k - S p l i tc fgf m  ��hh �ii " S p l i t _ X X - X X _ S p o r tg j��j m  ��kk �ll  0 0��  ��  ��  ��  ��  �Y       &��m K Unopqrstuvwxyz{|}~����������������������������������  m $�������������������������������������������������������������������������� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� 0 	genprompt 	genPrompt�� 0 list_position  �� 0 
dateprompt 
datePrompt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� 0 pagegen pageGen�� 0 applymaster applyMaster�� "0 changelegaldate changeLegalDate��  0 drawembargobox drawEmbargoBox�� 0 	cleansave 	cleanSave�� 0 customedition customEdition�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 artsgen artsGen�� 0 	sportsgen 	sportsGen
�� .aevtoappnull  �   � ****�� 0 pagedate pageDate�� 0 filedate fileDate��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  n �� ����������� 0 	genprompt 	genPrompt�� ����� �  ���� 0 desk  ��  � 	�������������������� 0 desk  �� 0 	days_list  �� 0 thetitle theTitle�� 0 weekday_pages  �� 0 weekend_pages  �� 0 ahead_pages  �� 0 theday theDay�� 0 
prompttext 
promptText�� &0 masterstogenerate mastersToGenerate� k � � � � � ����� ��� ��������� ����� � � � � � ���#��-7;>FJNRU[fjnrvy������������������������	��"-09=@HLO��p����������������������� 
�� 
prmp
�� 
appr�� 
�� .gtqpchltns    @   @ ns  
�� 
TEXT
�� 
rslt
�� 
errn������ 
�� 
bool�� 
�� 0 
dateprompt 
datePrompt�� 0 customedition customEdition
�� 
ret 
�� 
mlsl�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 	sportsgen 	sportsGen�� 0 artsgen artsGen�����  -������v����� �&E�O��  )a a lhY hY hOa a a a a a a vE�O�a  �a %E�Y a E�O�a  
 �a  a & n�a   &a  a !a "mvE�Oa #a $a %a &a '�vE�Y ?�a (  6a )a *a +a ,a -a .a vE�Oa /a 0a 1a 2a 3a 4a vE�Y hY ��a 5 
 �a 6 a & �a 7�6FO�a 8  [a 9a :a ;a <a =a >a vE�Oa ?a @a Aa Ba Ca Da vE�Oa Ea Fa Ga Ha Ia Ja Ka La Ma Na OvE�Y 4�a P  +a Qa RlvE�Oa Sa Ta UmvE�Oa Va Wa XmvE�Y hY hO)��l+ YE�O�a Z  
)j+ [Y �a \_ ]%_ ]%a ^%E�O�a _  +���a `ea  E�O�f  )a a lhY hY e�a a +���a `ea  E�O�f  )a a lhY hY 4�a b  +���a `ea  E�O�f  )a a lhY hY hO�a c  )��l+ dY 7�a e  )��l+ fY %�a g  )�k+ hY �a i  )�k+ jY ho ��)���������� 0 list_position  �� ����� �  ������ 0 	this_item  �� 0 	this_list  ��  � �������� 0 	this_item  �� 0 	this_list  �� 0 i  � ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY��p ��F������~�� 0 
dateprompt 
datePrompt�� �}��} �  �|�{�| 0 thetitle theTitle�{ 0 	days_list  �  � �z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�z 0 thetitle theTitle�y 0 	days_list  �x 0 months_list  �w 0 tomorrow  �v 0 tmday tmDay�u 0 theday theDay�t 0 prdate prDate�s 0 prmonth prMonth�r 0 pryear prYear�q 0 
predictpos 
predictPos�p 0 	actualpos 	actualPos�o 0 shiftpos shiftPos�n 0 predictedday predictedDay�m 0 themonth theMonth�l 0 thedate theDate�k 0 theyear theYear� 8SW[_cgkosw{~�j�i�h�g��f�e��d�c�b�a�`��_�^���]��\�[�Z�Y�X�W����V�U�T�S���R�Q��P�O�N�M�j 
�i .misccurdldt    ��� null
�h 
wkdy
�g 
TEXT
�f 
days
�e 
prmp
�d 
inSL
�c 
appr�b 
�a .gtqpchltns    @   @ ns  
�` 
rslt
�_ 
errn�^���] 0 pagedate pageDate�\ 0 filedate fileDate
�[ 
day 
�Z 
mnth
�Y 
year�X 0 list_position  �W 
�V 
dtxt�U 
�T .sysodlogaskr        TEXT
�S 
ttxt
�R 
ctxt
�Q 
psof
�P 
psin
�O .sysooffslong    ��� null�N "0 create_pagedate create_pageDate�M "0 create_filedate create_fileDate�~�������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hO�a . &�[a /\[Zk\Z*a 0a 1a 2�a * 3k2E�Y hOa 4a )�a �a * +a ,,�&E�O_ a 5  )a a lhY hO)����a *+ 6O)����a *+ 7O�q �LG�K�J���I�L "0 create_pagedate create_pageDate�K �H��H �  �G�F�E�D�G 0 theday theDay�F 0 themonth theMonth�E 0 thedate theDate�D 0 theyear theYear�J  � �C�B�A�@�?�>�=�C 0 theday theDay�B 0 themonth theMonth�A 0 thedate theDate�@ 0 theyear theYear�? 0 sun  �> 0 secondmonth secondMonth�= 0 
secondyear 
secondYear� Ulnp�<�;����:�9�8���7��
�6�< 0 pagedate pageDate
�; 
ldt 
�: 
days
�9 
mnth
�8 
TEXT
�7 
year
�6 
day �I ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OPr �5&�4�3���2�5 "0 create_filedate create_fileDate�4 �1��1 �  �0�/�.�-�0 0 themonth theMonth�/ 0 thedate theDate�. 0 theyear theYear�- 0 months_list  �3  � �,�+�*�)�, 0 themonth theMonth�+ 0 thedate theDate�* 0 theyear theYear�) 0 months_list  � �(�'>�&W�%�$�#
�( 
nmbr�' 
�& 0 list_position  
�% 
ctxt�$ �# 0 filedate fileDate�2 >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E�s �"��!� ����" 0 pagegen pageGen�! ��� �  ����� 0 pagetype pageType� 0 	themaster 	theMaster� 0 theslug theSlug� 0 
pagenumber 
pageNumber�   � ����� 0 pagetype pageType� 0 	themaster 	theMaster� 0 theslug theSlug� 0 
pagenumber 
pageNumber� ��������������
� .aevtodocnull  �    alis� 0 applymaster applyMaster�  0 drawembargobox drawEmbargoBox
� 
bool� "0 changelegaldate changeLegalDate� 0 	cleansave 	cleanSave
� 
pacd
� 
svop
� savoyes 
� .CoReclosnull���     obj � Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UUt ���
�	���� 0 applymaster applyMaster�
 ��� �  ���� 0 	themaster 	theMaster� 0 pagetype pageType� 0 
pagenumber 
pageNumber�	  � ���� 0 	themaster 	theMaster� 0 pagetype pageType� 0 
pagenumber 
pageNumber� ,)� ���������������"�����������;����ER`i���������������������%
�  
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
cobj�  
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
TEXT����*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUUu ��6���������� "0 changelegaldate changeLegalDate�� ����� �  ���� 0 	themaster 	theMaster��  � ���� 0 	themaster 	theMaster� ~��B����L��������Z��alz
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
pcnt�� X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUUv �������������  0 drawembargobox drawEmbargoBox�� ����� �  ���� 0 pagetype pageType��  � ���������� 0 pagetype pageType�� 0 pagenum pageNum�� 0 	worklayer 	workLayer�� 0 ebox eBox� �������������������������������������������
�� 
docu
�� 
layr
�� 
pnam
�� 
page
�� 
kocl
�� 
txtf
�� 
prdt
�� 
pilr
�� 
gbnd�� 
�� 
pcnt�� 
�� .corecrel****      � null
�� 
ObSt
�� 
aobs
�� 
plck�� |� x*�k/ p��  kE�Y ��  lE�Y hO*�k/�[�,\Z�81E�O*�/ '*�������a a a va a a a  E�UO*a a /�a ,FOe�a ,FUUw ������������� 0 	cleansave 	cleanSave�� ����� �  ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug��  � ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug� 	Z����		��		��	.	0��	C��	U��	W��
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
�� .CoResavedocu        obj �� `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UUx ��	g���������� 0 customedition customEdition��  ��  � ������������������������������������ 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart�� 0 theend theEnd�� 0 x  �� 0 searchresult searchResult�� 0 
pagenumber 
pageNumber�� 0 hmaster hMaster�� 0 listpos listPos�� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 theslug theSlug�� 0 message2753  � �	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
 





��
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
"&*.26:>BFJNQaeimquy}���������������������������������h����������������������E������Z��g��u��������������������7��<>��IL��O�����Z�~�}�� %�� �� 
�� 
TxtW
�� 
ctxt
�� 
Opts
�� 
SMod
�� SModGrep
�� 
STop�� 
�� .R*chFindMtch���     TEXT
�� 
MSpc
�� 
SLin
�� 
ELin
�� 
FnIn
�� 
clin
�� 
RplP
�� .R*chGSubutxt    ��� null
�� 
MTxt�� 0 list_position  
�� 
cobj
�� 
bool�� 0 pagegen pageGen��  � �|�{�z
�| 
errn�{�?�z  
�� 
ret 
�� 
btns
�� 
dflt
�� .sysodlogaskr        TEXT
�� 
rslt
� 
bhit
�~ 
errn�}����o����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa ��*a �k/a �k/�a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�Oe��kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPW lX � �a �_ �%_ �%�a �,%_ �%_ �%a �%_ �%_ �%a �%E^ O] a �a �a �lva �a �a � �O_ �a �,a �  )a �a �lhY hOPY h[OY��OPUUy �ys�x�w���v�y 0 newsgen newsGen�x �u��u �  �t�s�t &0 masterstogenerate mastersToGenerate�s 0 theday theDay�w  � �r�q�p�o�r &0 masterstogenerate mastersToGenerate�q 0 theday theDay�p 0 p10_days  �o 0 p14_days  � A������n�m��������������������
!+8;EILY]adoswz����������������n �m 0 pagegen pageGen�vY�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y hz �l��k�j���i�l 0 featsgen featsGen�k �h��h �  �g�f�g &0 masterstogenerate mastersToGenerate�f 0 theday theDay�j  � �e�d�c�b�e &0 masterstogenerate mastersToGenerate�d 0 theday theDay�c 0 p10_days  �b 0 p14_days  � L�������a�`��).269CHLPS[cgkntx|���������������������	 $(+5=AEHRW[_b�a �` 0 pagegen pageGen�i���  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . ra /a 0lvE�Oa 1a 2a 3a 4�vE�O�� *a 5a 6a 7a 8�+ Y 9�� *a 9a :a ;a <�+ Y �a =  *a >a ?a @a A�+ Y hY hO�a B *a Ca Da Ea F�+ Y hO�a G *a Ha Ia Ja K�+ Y h{ �_p�^�]���\�_ 0 artsgen artsGen�^ �[��[ �  �Z�Z &0 masterstogenerate mastersToGenerate�]  � �Y�Y &0 masterstogenerate mastersToGenerate� z�����X�W�����������X �W 0 pagegen pageGen�\ >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h| �V��U�T���S�V 0 	sportsgen 	sportsGen�U �R��R �  �Q�Q &0 masterstogenerate mastersToGenerate�T  � �P�P &0 masterstogenerate mastersToGenerate� S������O�N��!(,039=ADNVZ^agkor|���������������������������(-158BGKOR[`dhk�O �N 0 pagegen pageGen�S��� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h} �M��L�K���J
�M .aevtoappnull  �   � ****� k     5��  ^��  k��  u��  �I�I  �L  �K  �  � 
 i�H�G�F r�E�D ��C�B
�H elnteNvr
�G 
pScr
�F 
UIAc�E 0 	genprompt 	genPrompt
�D elnteInA
�C .miscactvnull��� ��� obj 
�B .aevtodocnull  �    alis�J 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U~ ��� D S a t u r d a y / S u n d a y   O c t o b e r   1 9 - 2 0   2 0 1 3 ���  1 9 1 0 1 3��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ