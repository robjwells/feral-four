FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			2012-12-15     �   0 	 C r e a t e d   o n 	 	 	 2 0 1 2 - 1 2 - 1 5      l     ��  ��      	Last updated			2013-07-20     �   4 	 L a s t   u p d a t e d 	 	 	 2 0 1 3 - 0 7 - 2 0      l     ��  ��     	Version:			1.85     �     	 V e r s i o n : 	 	 	 1 . 8 5     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [   Running code --    \ � ] ]     R u n n i n g   c o d e   - - Z  ^ _ ^ l     ` a b ` O     c d c r     e f e m    ��
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
datePromptG HIH o      ���� 0 thetitle theTitleI J��J o      ���� 0 	days_list  ��  ��  F k    �KK LML r     NON J     PP QRQ m     SS �TT  J a n u a r yR UVU m    WW �XX  F e b r u a r yV YZY m    [[ �\\ 
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
errn� m  ����������  ��  ��  � ��� r  ����� c  ����� l �������� n  ����� 1  ����
�� 
ttxt� l �������� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� * P l e a s e   t y p e   t h e   y e a r :� ����
�� 
dtxt� o  ������ 0 pryear prYear� �����
�� 
appr� o  ������ 0 thetitle theTitle��  ��  ��  ��  ��  � m  ����
�� 
TEXT� o      ���� 0 theyear theYear� ��� Z ��������� = ����� 1  ����
�� 
rslt� m  ���� ��� 
 f a l s e� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � . ( Pass date details to creation functions   � �   P   P a s s   d a t e   d e t a i l s   t o   c r e a t i o n   f u n c t i o n s�  n �� I  �������� "0 create_pagedate create_pageDate  o  ������ 0 theday theDay 	 o  ������ 0 themonth theMonth	 

 o  ������ 0 thedate theDate �� o  ������ 0 theyear theYear��  ��    f  ��  n �� I  �������� "0 create_filedate create_fileDate  o  ������ 0 themonth theMonth  o  ������ 0 thedate theDate  o  ������ 0 theyear theYear �� o  ������ 0 months_list  ��  ��    f  ��  l ����������  ��  ��   �� l �� L  �� o  ������ 0 theday theDay $  For use in page-picker prompt    �   <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t��  D !"! l     ��������  ��  ��  " #$# l     ��������  ��  ��  $ %&% l     ��'(��  ' 2 , Assemble date for use on the inDesign pages   ( �)) X   A s s e m b l e   d a t e   f o r   u s e   o n   t h e   i n D e s i g n   p a g e s& *+* i    ,-, I      ��.���� "0 create_pagedate create_pageDate. /0/ o      ���� 0 theday theDay0 121 o      ���� 0 themonth theMonth2 343 o      ���� 0 thedate theDate4 5��5 o      ���� 0 theyear theYear��  ��  - Z     �67��86 >    9:9 o     ���� 0 theday theDay: m    ;; �<<  S a t u r d a y7 l   =>?= k    @@ ABA r    CDC l   E����E b    FGF b    HIH b    JKJ b    LML b    NON b    	PQP o    ���� 0 theday theDayQ m    RR �SS   O o   	 
���� 0 themonth theMonthM m    TT �UU   K o    ���� 0 thedate theDateI m    VV �WW   G o    ���� 0 theyear theYear��  ��  D o      ���� 0 pagedate pageDateB X��X l   ��������  ��  ��  ��  >   Weekday pageDate   ? �YY "   W e e k d a y   p a g e D a t e��  8 l   �Z[\Z k    �]] ^_^ l   ��`a��  ` &   Create a date object for Sunday   a �bb @   C r e a t e   a   d a t e   o b j e c t   f o r   S u n d a y_ cdc r    0efe l   .g����g [    .hih l   *j����j 4    *��k
�� 
ldt k l   )l����l b    )mnm b    'opo b    %qrq b    #sts b    !uvu b    wxw o    ���� 0 theday theDayx m    yy �zz  ,  v o     ���� 0 thedate theDatet m   ! "{{ �||   r o   # $���� 0 themonth theMonthp m   % &}} �~~   n o   ' (���� 0 theyear theYear��  ��  ��  ��  i l  * -���� ]   * -��� m   * +���� � 1   + ,��
�� 
days��  ��  ��  ��  f o      ���� 0 sun  d ��� l  1 1��������  ��  ��  � ��� l  1 1������  � 2 , Check if the weekend spans a month boundary   � ��� X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r y� ��� Z   1 J������ >  1 8��� l  1 6������ c   1 6��� n  1 4��� m   2 4��
�� 
mnth� o   1 2���� 0 sun  � m   4 5��
�� 
TEXT��  ��  � o   6 7���� 0 themonth theMonth� k   ; D�� ��� l  ; ;������  � ' ! Sunday month with trailing space   � ��� B   S u n d a y   m o n t h   w i t h   t r a i l i n g   s p a c e� ���� r   ; D��� b   ; B��� l  ; @������ c   ; @��� n  ; >��� m   < >�
� 
mnth� o   ; <�~�~ 0 sun  � m   > ?�}
�} 
TEXT��  ��  � m   @ A�� ���   � o      �|�| 0 secondmonth secondMonth��  ��  � r   G J��� m   G H�� ���  � o      �{�{ 0 secondmonth secondMonth� ��� l  K K�z�y�x�z  �y  �x  � ��� l  K K�w���w  � 1 + Check if the weekend spans a year boundary   � ��� V   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   y e a r   b o u n d a r y� ��� Z   K f���v�� >  K R��� l  K P��u�t� c   K P��� n  K N��� 1   L N�s
�s 
year� o   K L�r�r 0 sun  � m   N O�q
�q 
TEXT�u  �t  � o   P Q�p�p 0 theyear theYear� k   U ^�� ��� l  U U�o���o  � &   Sunday year with leading hyphen   � ��� @   S u n d a y   y e a r   w i t h   l e a d i n g   h y p h e n� ��n� r   U ^��� l  U \��m�l� b   U \��� m   U V�� ���  -� l  V [��k�j� c   V [��� n  V Y��� 1   W Y�i
�i 
year� o   V W�h�h 0 sun  � m   Y Z�g
�g 
TEXT�k  �j  �m  �l  � o      �f�f 0 
secondyear 
secondYear�n  �v  � r   a f��� m   a d�� ���  � o      �e�e 0 
secondyear 
secondYear� ��� l  g g�d�c�b�d  �c  �b  � ��� r   g ���� l  g ���a�`� b   g ���� b   g ���� b   g ���� b   g ���� b   g x��� b   g v��� b   g r��� b   g p��� b   g l��� m   g j�� ���   S a t u r d a y / S u n d a y  � o   j k�_�_ 0 themonth theMonth� m   l o�� ���   � o   p q�^�^ 0 thedate theDate� m   r u�� ���  -� o   v w�]�] 0 secondmonth secondMonth� l  x ��\�[� c   x ��� n  x }��� 1   y }�Z
�Z 
day � o   x y�Y�Y 0 sun  � m   } ~�X
�X 
TEXT�\  �[  � m   � ��� ���   � o   � ��W�W 0 theyear theYear� o   � ��V�V 0 
secondyear 
secondYear�a  �`  � o      �U�U 0 pagedate pageDate� ��T� l  � ��S���S  � Z T Empty secondMonth/Year strings (set above) mean this can be used for every Saturday   � ��� �   E m p t y   s e c o n d M o n t h / Y e a r   s t r i n g s   ( s e t   a b o v e )   m e a n   t h i s   c a n   b e   u s e d   f o r   e v e r y   S a t u r d a y�T  [   Saturday/Sunday pageDate   \ ��� 2   S a t u r d a y / S u n d a y   p a g e D a t e+    l     �R�Q�P�R  �Q  �P    l     �O�N�M�O  �N  �M    l     �L�L   . ( Assemble date for use in the file names    � P   A s s e m b l e   d a t e   f o r   u s e   i n   t h e   f i l e   n a m e s 	
	 i     I      �K�J�K "0 create_filedate create_fileDate  o      �I�I 0 themonth theMonth  o      �H�H 0 thedate theDate  o      �G�G 0 theyear theYear �F o      �E�E 0 months_list  �F  �J   k     =  Z    �D�C A     l    �B�A c      o     �@�@ 0 thedate theDate m    �?
�? 
nmbr�B  �A   m    �>�> 
 r      l   !�=�<! b    "#" m    	$$ �%%  0# o   	 
�;�; 0 thedate theDate�=  �<    o      �:�: 0 thedate theDate�D  �C   &'& l   �9�8�7�9  �8  �7  ' ()( r    *+* n   ,-, I    �6.�5�6 0 list_position  . /0/ o    �4�4 0 themonth theMonth0 1�31 o    �2�2 0 months_list  �3  �5  -  f    + o      �1�1 0 themonth theMonth) 232 Z   +45�0�/4 A   676 o    �.�. 0 themonth theMonth7 m    �-�- 
5 r   " '898 l  " %:�,�+: b   " %;<; m   " #== �>>  0< o   # $�*�* 0 themonth theMonth�,  �+  9 o      �)�) 0 themonth theMonth�0  �/  3 ?@? l  , ,�(�'�&�(  �'  �&  @ A�%A l  , =BCDB r   , =EFE l  , ;G�$�#G b   , ;HIH b   , /JKJ o   , -�"�" 0 thedate theDateK o   - .�!�! 0 themonth theMonthI l  / :L� �L n   / :MNM 7 0 :�OP
� 
ctxtO m   4 6�� P m   7 9�� N o   / 0�� 0 theyear theYear�   �  �$  �#  F o      �� 0 filedate fileDateC ? 9 Combines the date, month and last two digits of the year   D �QQ r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�%  
 RSR l     ����  �  �  S TUT l     ����  �  �  U VWV l     �XY�  X Y S pageGen: Opens the master file and calls functions to construct the requested page   Y �ZZ �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g eW [\[ l     �]^�  ] ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   ^ �__ �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e r\ `a` l     �bc�  b @ : The page number is that of the left-hand page for spreads   c �dd t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d sa efe i    ghg I      �i�� 0 pagegen pageGeni jkj o      �� 0 pagetype pageTypek lml o      �� 0 	themaster 	theMasterm non o      �� 0 theslug theSlugo p�p o      �
�
 0 
pagenumber 
pageNumber�  �  h O     Xqrq k    Wss tut I   �	v�
�	 .aevtodocnull  �    alisv o    	��  0 masterdocument masterDocument�  u wxw n   yzy I    �{�� 0 applymaster applyMaster{ |}| o    �� 0 	themaster 	theMaster} ~~ o    �� 0 pagetype pageType ��� o    �� 0 
pagenumber 
pageNumber�  �  z  f    x ��� l   � �����   ��  ��  � ��� Z    '������� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ��� 
 N e w s -� l   #���� n   #��� I    #�������  0 drawembargobox drawEmbargoBox� ���� o    ���� 0 pagetype pageType��  ��  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *��  ��  � ��� l  ( (��������  ��  ��  � ��� Z   ( @������� G   ( 3��� =  ( +��� o   ( )���� 0 	themaster 	theMaster� m   ) *�� ���  F e a t - T V� =  . 1��� o   . /���� 0 	themaster 	theMaster� m   / 0�� ���  F e a t - R e d L i s t� n  6 <��� I   7 <������� "0 changelegaldate changeLegalDate� ���� o   7 8���� 0 	themaster 	theMaster��  ��  �  f   6 7��  ��  � ��� l  A A��������  ��  ��  � ��� n  A H��� I   B H������� 0 	cleansave 	cleanSave� ��� o   B C���� 0 
pagenumber 
pageNumber� ���� o   C D���� 0 theslug theSlug��  ��  �  f   A B� ���� O  I W��� I  O V�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m   Q R��
�� savoyes ��  � l  I L������ 1   I L��
�� 
pacd��  ��  ��  r m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  f ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    !��� I      ������� 0 applymaster applyMaster� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 pagetype pageType� ���� o      ���� 0 
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
page� m    ���� � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ���� Z    �������� H     �� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3����
�� .InESovrrobj         obj � n   # *��� 4   ' *���
�� 
txtf� m   ( )�� ���  E d i t i o n   d a t e� 4   # '���
�� 
mspr� o   % &���� 0 	themaster 	theMaster� �����
�� 
dPge� 4   + /���
�� 
page� m   - .���� ��  � ��� l  4 ?���� r   4 ?   o   4 5���� 0 pagedate pageDate l     ���� n       1   < >��
�� 
pcnt n   5 < 4   9 <��
�� 
txtf m   : ; �		  E d i t i o n   d a t e 4   5 9��

�� 
page
 m   7 8���� ��  ��  �   Sets the date   � �    S e t s   t h e   d a t e�  Q   @ p�� l  C g I  C g��
�� .InESovrrobj         obj  l  C ^���� 6  C ^ n   C K 2   I K��
�� 
cobj n   C I 1   G I��
�� 
mpgs 4   C G��
�� 
page m   E F����  =  N ] n  O W  1   S W��
�� 
pnam  1   O S��
�� 
pilr m   X \!! �""  W o r k��  ��   ��#��
�� 
dPge# 4   _ c��$
�� 
page$ m   a b���� ��   o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items    �%% �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s R      ������
�� .ascrerr ****      � ****��  ��  ��   &��& Z   q �'(����' >  q v)*) o   q r���� 0 
pagenumber 
pageNumber* m   r u++ �,,  ( l  y �-./- k   y �00 121 I  y ���34
�� .InESovrrobj         obj 3 n   y �565 4   } ���7
�� 
txtf7 m   ~ �88 �99  P a g e   n u m b e r6 4   y }��:
�� 
mspr: o   { |���� 0 	themaster 	theMaster4 ��;��
�� 
dPge; 4   � ���<
�� 
page< m   � ����� ��  2 =��= r   � �>?> o   � ����� 0 
pagenumber 
pageNumber? l     @����@ n      ABA 1   � ���
�� 
pcntB n   � �CDC 4   � ���E
�� 
txtfE m   � �FF �GG  P a g e   n u m b e rD 4   � ���H
�� 
pageH m   � ����� ��  ��  ��  . G A Mostly to skip the front, which doesn't have a page number frame   / �II �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��  � 6 0 The X-Blanks have no page number or date frames   � �JJ `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s��  ��  ��  � KLK =  � �MNM o   � ����� 0 pagetype pageTypeN m   � �OO �PP  s p r e a dL Q��Q k   ��RR STS l  � �UVWU I  � �����X
�� .corecrel****      � null��  X ��YZ
�� 
koclY m   � ���
�� 
sprdZ ��[��
�� 
prdt[ K   � �\\ ��]��
�� 
pmas] 4   � ���^
�� 
mspr^ o   � ����� 0 	themaster 	theMaster��  ��  V G A Creates a two-page spread at pages 2 & 3 with the master applied   W �__ �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e dT `��` Z   ��ab����a H   � �cc E   � �ded o   � ��� 0 	themaster 	theMastere m   � �ff �gg  X - B l a n kb k   ��hh iji I  � ��~kl
�~ .InESovrrobj         obj k n   � �mnm 4   � ��}o
�} 
txtfo m   � �pp �qq  L - E d i t i o n   d a t en 4   � ��|r
�| 
msprr o   � ��{�{ 0 	themaster 	theMasterl �zs�y
�z 
dPges 4   � ��xt
�x 
paget m   � ��w�w �y  j uvu I  � ��vwx
�v .InESovrrobj         obj w n   � �yzy 4   � ��u{
�u 
txtf{ m   � �|| �}}  R - E d i t i o n   d a t ez 4   � ��t~
�t 
mspr~ o   � ��s�s 0 	themaster 	theMasterx �r�q
�r 
dPge 4   � ��p�
�p 
page� m   � ��o�o �q  v ��� l  � ���� r   � ��� o   � ��n�n 0 pagedate pageDate� l     ��m�l� n      ��� 1   � ��k
�k 
pcnt� n   � ���� 4   � ��j�
�j 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ��i�
�i 
page� m   � ��h�h �m  �l  � * $ Sets the date on the left-hand page   � ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e� ��� l ���� r  ��� o  �g�g 0 pagedate pageDate� l     ��f�e� n      ��� 1  �d
�d 
pcnt� n  ��� 4  �c�
�c 
txtf� m  
�� ���  R - E d i t i o n   d a t e� 4  �b�
�b 
page� m  �a�a �f  �e  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  d���`� k  [�� ��� I 6�_��
�_ .InESovrrobj         obj � l -��^�]� 6 -��� n  ��� 2  �\
�\ 
cobj� n  ��� 1  �[
�[ 
mpgs� 4  �Z�
�Z 
page� m  �Y�Y � = ,��� n &��� 1  "&�X
�X 
pnam� 1  "�W
�W 
pilr� m  '+�� ���  W o r k�^  �]  � �V��U
�V 
dPge� 4  .2�T�
�T 
page� m  01�S�S �U  � ��R� I 7[�Q��
�Q .InESovrrobj         obj � l 7R��P�O� 6 7R��� n  7?��� 2  =?�N
�N 
cobj� n  7=��� 1  ;=�M
�M 
mpgs� 4  7;�L�
�L 
page� m  9:�K�K � = BQ��� n CK��� 1  GK�J
�J 
pnam� 1  CG�I
�I 
pilr� m  LP�� ���  W o r k�P  �O  � �H��G
�H 
dPge� 4  SW�F�
�F 
page� m  UV�E�E �G  �R  � R      �D�C�B
�D .ascrerr ****      � ****�C  �B  �`  � ��A� Z  e����@�?� > ej��� o  ef�>�> 0 
pagenumber 
pageNumber� m  fi�� ���  � k  m��� ��� I m�=��
�= .InESovrrobj         obj � n  mv��� 4  qv�<�
�< 
txtf� m  ru�� ���  L - P a g e   n u m b e r� 4  mq�;�
�; 
mspr� o  op�:�: 0 	themaster 	theMaster� �9��8
�9 
dPge� 4  w{�7�
�7 
page� m  yz�6�6 �8  � ��� I ���5��
�5 .InESovrrobj         obj � n  ����� 4  ���4�
�4 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  ���3�
�3 
mspr� o  ���2�2 0 	themaster 	theMaster� �1��0
�1 
dPge� 4  ���/�
�/ 
page� m  ���.�. �0  � ��� r  ����� o  ���-�- 0 
pagenumber 
pageNumber� l     ��,�+� n      ��� 1  ���*
�* 
pcnt� n  ����� 4  ���)�
�) 
txtf� m  ���� ���  L - P a g e   n u m b e r� 4  ���(�
�( 
page� m  ���'�' �,  �+  � ��&� r  ����� l ����%�$� c  ��   l ���#�" [  �� o  ���!�! 0 
pagenumber 
pageNumber m  ��� �  �#  �"   m  ���
� 
TEXT�%  �$  � l     �� n       1  ���
� 
pcnt n  ��	 4  ���

� 
txtf
 m  �� �  R - P a g e   n u m b e r	 4  ���
� 
page m  ���� �  �  �&  �@  �?  �A  ��  ��  ��  ��  ��  � l   �� 1    �
� 
pacd�  �  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     ����  �  �    l     ����  �  �    l     ��   X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List    � �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t  i   " % I      ��� "0 changelegaldate changeLegalDate � o      �� 0 	themaster 	theMaster�  �   O     W  O    V!"! Z   
 U#$%�
# =  
 &'& o   
 �	�	 0 	themaster 	theMaster' m    (( �))  F e a t - R e d L i s t$ k    ,** +,+ I    �-.
� .InESovrrobj         obj - n    /0/ 4    �1
� 
txtf1 m    22 �33  L e g a l   d a t e0 4    �4
� 
mspr4 o    �� 0 	themaster 	theMaster. �5�
� 
dPge5 4    �6
� 
page6 m    �� �  , 7� 7 r   ! ,898 o   ! "���� 0 pagedate pageDate9 l     :����: n      ;<; 1   ) +��
�� 
pcnt< n   " )=>= 4   & )��?
�� 
txtf? m   ' (@@ �AA  L e g a l   d a t e> 4   " &��B
�� 
pageB m   $ %���� ��  ��  �   % CDC =  / 2EFE o   / 0���� 0 	themaster 	theMasterF m   0 1GG �HH  F e a t - T VD I��I k   5 QJJ KLK I  5 E��MN
�� .InESovrrobj         obj M n   5 <OPO 4   9 <��Q
�� 
txtfQ m   : ;RR �SS  L e g a l   d a t eP 4   5 9��T
�� 
msprT o   7 8���� 0 	themaster 	theMasterN ��U��
�� 
dPgeU 4   = A��V
�� 
pageV m   ? @���� ��  L W��W r   F QXYX o   F G���� 0 pagedate pageDateY l     Z����Z n      [\[ 1   N P��
�� 
pcnt\ n   G N]^] 4   K N��_
�� 
txtf_ m   L M`` �aa  L e g a l   d a t e^ 4   G K��b
�� 
pageb m   I J���� ��  ��  ��  ��  �
  " l   c����c 1    ��
�� 
pacd��  ��    m     dd�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   efe l     ��������  ��  ��  f ghg l     ��������  ��  ��  h iji l     ��kl��  k c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   l �mm �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g ej non i   & )pqp I      ��r����  0 drawembargobox drawEmbargoBoxr s��s o      ���� 0 pagetype pageType��  ��  q O     {tut O    zvwv k    yxx yzy Z    ${|}��{ =   ~~ o    ���� 0 pagetype pageType m    �� ���  s i n g l e| r    ��� m    ���� � o      ���� 0 pagenum pageNum} ��� =   ��� o    ���� 0 pagetype pageType� m    �� ���  s p r e a d� ���� r     ��� m    ���� � o      ���� 0 pagenum pageNum��  ��  z ��� l  % %��������  ��  ��  � ��� r   % 4��� 6  % 2��� l  % )������ 4  % )���
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
plck� o   s t���� 0 ebox eBox��  w l   ������ 4   ���
�� 
docu� m    ���� ��  ��  u m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  o ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   * -��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
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
pacl� 	 		  l  " "��������  ��  ��  	 			 Z   " I			��	 l  " '	����	 =  " '				 `   " %	
		
 o   " #���� 0 
pagenumber 
pageNumber	 m   # $���� 		 m   % &����  ��  ��  	 l  * 2				 r   * 2			 J   * .		 			 m   * +		 @.      	 	��	 m   + ,		 @&      ��  	 l     	����	 1   . 1��
�� 
zero��  ��  	 ( " For left-hand singles and spreads   	 �		 D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s	 			 l  5 :	����	 =  5 :			 `   5 8			 o   5 6���� 0 
pagenumber 
pageNumber	 m   6 7���� 	 m   8 9���� ��  ��  	 	 ��	  l  = E	!	"	#	! r   = E	$	%	$ J   = A	&	& 	'	(	' m   = >	)	) @"      	( 	*��	* m   > ?	+	+ @&      ��  	% l     	,����	, 1   A D�
� 
zero��  ��  	"   For right-hand singles   	# �	-	- .   F o r   r i g h t - h a n d   s i n g l e s��  ��  	 	.	/	. l  J J�~�}�|�~  �}  �|  	/ 	0�{	0 I  J ]�z�y	1
�z .CoResavedocu        obj �y  	1 �x	2�w
�x 
kfil	2 b   L Y	3	4	3 b   L W	5	6	5 b   L U	7	8	7 b   L S	9	:	9 o   L Q�v�v $0 freshpagesfolder freshPagesFolder	: o   Q R�u�u 0 theslug theSlug	8 m   S T	;	; �	<	<  _	6 o   U V�t�t 0 filedate fileDate	4 m   W X	=	= �	>	> 
 . i n d d�w  �{  � l   	?�s�r	? 1    �q
�q 
pacd�s  �r  � m     	@	@�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	A	B	A l     �p�o�n�p  �o  �n  	B 	C	D	C l     �m�l�k�m  �l  �k  	D 	E	F	E l     �j	G	H�j  	G f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	H �	I	I �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	F 	J	K	J i   . 1	L	M	L I      �i�h�g�i 0 customedition customEdition�h  �g  	M k    n	N	N 	O	P	O l     �f�e�d�f  �e  �d  	P 	Q	R	Q l     �c	S	T�c  	S | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	T �	U	U �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	R 	V	W	V l     �b	X	Y�b  	X a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	Y �	Z	Z �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	W 	[	\	[ l     �a	]	^�a  	] [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	^ �	_	_ �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	\ 	`	a	` l     �`�_�^�`  �_  �^  	a 	b	c	b l     �]	d	e�]  	d > 8 The human-friendly names used in the TextWrangler file	   	e �	f	f p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		c 	g	h	g r     U	i	j	i J     S	k	k 	l	m	l m     	n	n �	o	o 
 F r o n t	m 	p	q	p m    	r	r �	s	s  S a t F r o n t	q 	t	u	t m    	v	v �	w	w  H o m e _ S	u 	x	y	x m    	z	z �	{	{  H o m e _ L	y 	|	}	| m    	~	~ �		  H o m e _ R	} 	�	�	� m    	�	� �	�	�  F o r e i g n _ S	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ L	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ R	� 	�	�	� m    		�	� �	�	�  S t r u g g l e _ S	� 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   F I	�	� �	�	�  B l a n k _ S	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ L	� 	��\	� m   L O	�	� �	�	�  B l a n k _ R�\  	j o      �[�[ 0 
human_list  	h 	�
 	� l  V V�Z

�Z  
    The InDesign master names   
 �

 4   T h e   I n D e s i g n   m a s t e r   n a m e s
  


 r   V �


 J   V �

 
	


	 m   V Y

 �

  N e w s - F r o n t

 


 m   Y \

 �

  N e w s - S a t F r o n t
 


 m   \ _

 �

  N e w s - H o m e - S p l i t
 


 m   _ b

 �

  N e w s - H o m e - L
 


 m   b e

 �

  N e w s - H o m e - R
 


 m   e h

 �
 
  $ N e w s - F o r e i g n - S p l i t
 
!
"
! m   h k
#
# �
$
$  N e w s - F o r e i g n - L
" 
%
&
% m   k n
'
' �
(
(  N e w s - F o r e i g n - R
& 
)
*
) m   n q
+
+ �
,
, & F e a t - S t r u g g l e - S p l i t
* 
-
.
- m   q t
/
/ �
0
0  F e a t - S t r u g g l e - L
. 
1
2
1 m   t w
3
3 �
4
4  F e a t - S t r u g g l e - R
2 
5
6
5 m   w z
7
7 �
8
8 * F e a t - N e w s R e v i e w - S p l i t
6 
9
:
9 m   z }
;
; �
<
< " F e a t - N e w s R e v i e w - L
: 
=
>
= m   } �
?
? �
@
@ " F e a t - N e w s R e v i e w - R
> 
A
B
A m   � �
C
C �
D
D  F e a t - S p r e a d
B 
E
F
E m   � �
G
G �
H
H  F e a t - T V
F 
I
J
I m   � �
K
K �
L
L  F e a t - S a t T V
J 
M
N
M m   � �
O
O �
P
P $ F e a t - L e t t e r s - S p l i t
N 
Q
R
Q m   � �
S
S �
T
T  F e a t - L e t t e r s - L
R 
U
V
U m   � �
W
W �
X
X  F e a t - L e t t e r s - R
V 
Y
Z
Y m   � �
[
[ �
\
\  F e a t - R e d L i s t
Z 
]
^
] m   � �
_
_ �
`
`   F e a t - B l a n k - S p l i t
^ 
a
b
a m   � �
c
c �
d
d  F e a t - B l a n k - L
b 
e
f
e m   � �
g
g �
h
h  F e a t - B l a n k - R
f 
i
j
i m   � �
k
k �
l
l  A r t s - E n t s - S p l i t
j 
m
n
m m   � �
o
o �
p
p   A r t s - B l a n k - S p l i t
n 
q
r
q m   � �
s
s �
t
t  A r t s - B l a n k - L
r 
u
v
u m   � �
w
w �
x
x  A r t s - B l a n k - R
v 
y
z
y m   � �
{
{ �
|
|  S p r t - B a c k
z 
}
~
} m   � �

 �
�
�   S p r t - B l a n k - S p l i t
~ 
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
��Y
� m   � �
�
� �
�
�  X - B l a n k - R�Y  
 o      �X�X 0 masters_list  
 
�
�
� l  � ��W
�
��W  
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
� m     �  F e a t u r e
�  m   �  F e a t u r e  m   �		  A r t s - E n t s 

 m   �  A r t s  m   �  A r t s  m    �  A r t s  m   # �  B a c k  m  #& � 
 S p o r t  m  &)   �!! 
 S p o r t "#" m  ),$$ �%% 
 S p o r t# &'& m  ,/(( �))  R a c i n g' *+* m  /2,, �--  R a c i n g+ ./. m  2500 �11 
 B L A N K/ 232 m  5844 �55 
 B L A N K3 6�V6 m  8;77 �88 
 B L A N K�V  
� o      �U�U 0 
slugs_list  
� 9:9 l BB�T�S�R�T  �S  �R  : ;<; l BB�Q=>�Q  = 1 + Single-page masters (used to set pageType)   > �?? V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )< @A@ r  B�BCB J  B�DD EFE m  BEGG �HH  N e w s - F r o n tF IJI m  EHKK �LL  N e w s - S a t F r o n tJ MNM m  HKOO �PP  N e w s - H o m e - LN QRQ m  KNSS �TT  N e w s - H o m e - RR UVU m  NQWW �XX  N e w s - F o r e i g n - LV YZY m  QT[[ �\\  N e w s - F o r e i g n - RZ ]^] m  TW__ �``  F e a t - S t r u g g l e - L^ aba m  WZcc �dd  F e a t - S t r u g g l e - Rb efe m  Z]gg �hh " F e a t - N e w s R e v i e w - Lf iji m  ]`kk �ll " F e a t - N e w s R e v i e w - Rj mnm m  `coo �pp  F e a t - L e t t e r s - Ln qrq m  cfss �tt  F e a t - L e t t e r s - Rr uvu m  fiww �xx  F e a t - R e d L i s tv yzy m  il{{ �||  F e a t - B l a n k - Lz }~} m  lo ���  F e a t - B l a n k - R~ ��� m  or�� ���  A r t s - B l a n k - L� ��� m  ru�� ���  A r t s - B l a n k - R� ��� m  ux�� ���  S p r t - B a c k� ��� m  x{�� ���  S p r t - B l a n k - L� ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ��P� m  ���� ���  X - B l a n k - R�P  C o      �O�O 0 singles_list  A ��� l ���N���N  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��M� m  ���� ���  X - B l a n k - S p l i t�M  � o      �L�L 0 spreads_list  � ��� l ���K�J�I�K  �J  �I  � ��H� O  �n��� O  �m��� k  �l�� ��� l ������ r  ����� l ����G�F� I ���E��
�E .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �D��C
�D 
Opts� K  ���� �B��
�B 
SMod� m  ���A
�A SModGrep� �@��?
�@ 
STop� m  ���>
�> boovtrue�?  �C  �G  �F  � o      �=�= 0 hashline hashLine�   Finds the beginning line   � ��� 2   F i n d s   t h e   b e g i n n i n g   l i n e� ��� l ������ r  ��   l ���<�; [  �� l ���:�9 l ���8�7 n  �� 1  ���6
�6 
SLin l ��	�5�4	 n  ��

 1  ���3
�3 
MSpc o  ���2�2 0 hashline hashLine�5  �4  �8  �7  �:  �9   m  ���1�1 �<  �;   o      �0�0 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � � h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e�  l � r  � l ��/�. 1  ��-
�- 
ELin�/  �.   o      �,�, 0 theend theEnd @ : The last instruction must be on the last line of the file    � t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e  l �+�*�)�+  �*  �)    Y  j�(�' l e k  e   !"! l -#$%# r  -&'& l +(�&�%( I +�$)*
�$ .R*chFindMtch���     TEXT) m  ++ �,,  ^ ( . + ) \ t ( . + ) $* �#-.
�# 
FnIn- 4  �"/
�" 
clin/ o  �!�! 0 x  . � 0�
�  
Opts0 K  %11 �2�
� 
SMod2 m   #�
� SModGrep�  �  �&  �%  ' o      �� 0 searchresult searchResult$ 9 3 Finds characters, then a tab, then more characters   % �33 f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s" 454 l ..����  �  �  5 676 l .;89:8 r  .;;<; l .9=��= I .9��>
� .R*chGSubutxt    ��� null�  > �?�
� 
RplP? m  25@@ �AA  \ 1�  �  �  < o      �� 0 
pagenumber 
pageNumber9 < 6 The page number (or a spread's left-hand page number)   : �BB l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )7 CDC l <IEFGE r  <IHIH l <GJ��J I <G��K
� .R*chGSubutxt    ��� null�  K �L�
� 
RplPL m  @CMM �NN  \ 2�  �  �  I o      �
�
 0 hmaster hMasterF = 7 Human-friendly master name, as contained in human_list   G �OO n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s tD PQP l JJ�	���	  �  �  Q R�R Z  JeST��S H  JTUU E  JSVWV l JOX��X n  JOYZY 1  KO�
� 
MTxtZ o  JK� �  0 searchresult searchResult�  �  W m  OR[[ �\\  - 	 -T l Wa]^_] k  Wa`` aba l WW��������  ��  ��  b cdc Q  W_efge k  Z�hh iji l Zcklmk r  Zcnon l Zap����p n Zaqrq I  [a��s���� 0 list_position  s tut o  [\���� 0 hmaster hMasteru v��v o  \]���� 0 
human_list  ��  ��  r  f  Z[��  ��  o o      ���� 0 listpos listPosl Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   m �ww �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s tj xyx l dlz{|z r  dl}~} l dj���� n  dj��� 4  ej���
�� 
cobj� o  hi���� 0 listpos listPos� o  de���� 0 masters_list  ��  ��  ~ o      ���� 0 	themaster 	theMaster{ 1 + Sets theMaster to the InDesign master name   | ��� V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m ey ��� l mm��������  ��  ��  � ��� Z  m������� E mp��� o  mn���� 0 singles_list  � o  no���� 0 	themaster 	theMaster� r  sx��� m  sv�� ���  s i n g l e� o      ���� 0 pagetype pageType� ��� E {~��� o  {|���� 0 spreads_list  � o  |}���� 0 	themaster 	theMaster� ���� r  ����� m  ���� ���  s p r e a d� o      ���� 0 pagetype pageType��  ��  � ��� l ����������  ��  ��  � ��� Z  �������� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l �������� b  ����� b  ����� o  ������ 0 
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
slugs_list  ��  ��  ��  ��  � o      ���� 0 theslug theSlug��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� G  ����� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      ���� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l��  ��  � ��� l ����������  ��  ��  � ��� l ������ n ����� I  ��������� 0 pagegen pageGen� ��� o  ������ 0 pagetype pageType� ��� o  ������ 0 	themaster 	theMaster� ��� o  ������ 0 theslug theSlug� ���� o  ������ 0 
pagenumber 
pageNumber��  ��  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ���� l ����������  ��  ��  ��  f R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d         m      ����
���  g k  �_  l ������   M G Handles "variable not defined" - aimed at listPos - to catch bad input    � �   H a n d l e s   " v a r i a b l e   n o t   d e f i n e d "   -   a i m e d   a t   l i s t P o s   -   t o   c a t c h   b a d   i n p u t  r  �'	
	 b  �# b  � b  � b  � b  � b  � b  � b  � b  � m  �� � R T h e r e   i s   a   p r o b l e m   w i t h   t h i s   i n s t r u c t i o n : o  � ��
�� 
ret  o  ��
�� 
ret  l 
���� n  
 !  1  
��
�� 
MTxt! o  ���� 0 searchresult searchResult��  ��   o  ��
�� 
ret  o  ��
�� 
ret  m  "" �## � P l e a s e   d o u b l e - c h e c k   t h a t   t h e   p a g e   t y p e   i s   s p e l l e d   e x a c t l y   a s   l i s t e d . o  ��
�� 
ret  o  ��
�� 
ret  m  "$$ �%% � D o   y o u   w i s h   t o   g e n e r a t e   t h e   r e s t   o f   t h e   p a g e s   o r   s t o p   t h e   s c r i p t ?
 o      ���� 0 message2753   &'& I (B��()
�� .sysodlogaskr        TEXT( o  (+���� 0 message2753  ) ��*+
�� 
btns* J  .6,, -.- m  .1// �00  C o n t i n u e. 1��1 m  1422 �33  S t o p��  + ��4��
�� 
dflt4 m  9<55 �66  S t o p��  ' 7��7 Z C_89����8 = CN:;: l CJ<����< n  CJ=>= 1  FJ��
�� 
bhit> l CF?����? 1  CF��
�� 
rslt��  ��  ��  ��  ; m  JM@@ �AA  S t o p9 R  Q[����B
�� .ascrerr ****      � ****��  B ��C��
�� 
errnC m  UX��������  ��  ��  ��  d DED l ``��������  ��  ��  E F��F l ``��������  ��  ��  ��  ^ : 4 Lines consisting of "hyphen tab hyphen" are skipped   _ �GG h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�  �  �   P J Goes through each line from the one after hashLine to the end of the file    �HH �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�( 0 x   o  ���� 0 thestart theStart o  	���� 0 theend theEnd�'   I��I l kk�������  ��  �  ��  � n  ��JKJ 4  ���~L
�~ 
ctxtL m  ���}�} K 4  ���|M
�| 
TxtWM m  ���{�{ � m  ��NN�                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                               ��j���J        ����  	                Applications    �@��      ���:    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  �H  	K OPO l     �z�y�x�z  �y  �x  P QRQ l     �wST�w  S , & newsGen: News-page generation routine   T �UU L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n eR VWV i   2 5XYX I      �vZ�u�v 0 newsgen newsGenZ [\[ o      �t�t &0 masterstogenerate mastersToGenerate\ ]�s] o      �r�r 0 theday theDay�s  �u  Y k    X^^ _`_ Z     _ab�q�pa E    cdc o     �o�o &0 masterstogenerate mastersToGenerated m    ee �ff  N e w s   p a g e sb k    [gg hih Z    +jkl�nj >   	mnm o    �m�m 0 theday theDayn m    oo �pp  S a t u r d a yk l   qrsq I    �lt�k�l 0 pagegen pageGent uvu m    ww �xx  s i n g l ev yzy m    {{ �||  N e w s - F r o n tz }~} m     ���  1 _ F r o n t~ ��j� m    �� ���  �j  �k  r ; 5 If block to create the weekday or weekend front page   s ��� j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g el ��� =   ��� o    �i�i 0 theday theDay� m    �� ���  S a t u r d a y� ��h� I    '�g��f�g 0 pagegen pageGen� ��� m     �� ���  s i n g l e� ��� m     !�� ���  N e w s - S a t F r o n t� ��� m   ! "�� ���  1 _ F r o n t� ��e� m   " #�� ���  �e  �f  �h  �n  i ��� I   , 7�d��c�d 0 pagegen pageGen� ��� m   - .�� ���  s p r e a d� ��� m   . /�� ���  N e w s - H o m e - S p l i t� ��� m   / 0�� ���  2 - 3 _ H o m e� ��b� m   0 3�� ���  2�b  �c  � ��� I   8 I�a��`�a 0 pagegen pageGen� ��� m   9 <�� ���  s p r e a d� ��� m   < ?�� ���  N e w s - H o m e - S p l i t� ��� m   ? B�� ���  4 - 5 _ H o m e� ��_� m   B E�� ���  4�_  �`  � ��^� I   J [�]��\�] 0 pagegen pageGen� ��� m   K N�� ���  s p r e a d� ��� m   N Q�� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   Q T�� ���  6 - 7 _ F o r e i g n� ��[� m   T W�� ���  6�[  �\  �^  �q  �p  ` ��� l  ` `�Z�Y�X�Z  �Y  �X  � ��� Z   ` ����W�V� E  ` e��� o   ` a�U�U &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h �����T� >  h m��� o   h i�S�S 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p ��R��Q�R 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���  F e a t - T V� ��� m   w z�� ���  1 2 - 1 3 _ T V� ��P� m   z }�� ���  1 2�P  �Q  � ��� =  � ���� o   � ��O�O 0 theday theDay� m   � ��� ���  S a t u r d a y� ��N� I   � ��M��L�M 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � �   �  F e a t - S a t T V�  m   � � �  1 8 - 1 9 _ T V �K m   � � �  1 8�K  �L  �N  �T  �W  �V  � 	
	 l  � ��J�I�H�J  �I  �H  
  Z   ��G�F E  � � o   � ��E�E &0 masterstogenerate mastersToGenerate m   � � �  L e t t e r s k   �  l  � � r   � � J   � �  m   � � �  M o n d a y  �D  m   � �!! �""  W e d n e s d a y�D   o      �C�C 0 p10_days   = 7 These two lists determine what the page number will be    �## n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e $%$ r   � �&'& J   � �(( )*) m   � �++ �,,  T u e s d a y* -.- m   � �// �00  T h u r s d a y. 1�B1 m   � �22 �33  F r i d a y�B  ' o      �A�A 0 p14_days  % 454 l  � ��@�?�>�@  �?  �>  5 6�=6 Z   �789�<7 E  � �:;: o   � ��;�; 0 p10_days  ; o   � ��:�: 0 theday theDay8 I   � ��9<�8�9 0 pagegen pageGen< =>= m   � �?? �@@  s i n g l e> ABA m   � �CC �DD  F e a t - L e t t e r s - LB EFE m   � �GG �HH  1 0 _ L e t t e r sF I�7I m   � �JJ �KK  1 0�7  �8  9 LML E  � �NON o   � ��6�6 0 p14_days  O o   � ��5�5 0 theday theDayM PQP I   � ��4R�3�4 0 pagegen pageGenR STS m   � �UU �VV  s i n g l eT WXW m   � �YY �ZZ  F e a t - L e t t e r s - LX [\[ m   � �]] �^^  1 4 _ L e t t e r s\ _�2_ m   � �`` �aa  1 4�2  �3  Q bcb =  � ded o   � ��1�1 0 theday theDaye m   � �ff �gg  S a t u r d a yc h�0h I  �/i�.�/ 0 pagegen pageGeni jkj m  ll �mm  s p r e a dk non m  
pp �qq $ F e a t - L e t t e r s - S p l i to rsr m  
tt �uu  1 0 - 1 1 _ L e t t e r ss v�-v m  ww �xx  1 0�-  �.  �0  �<  �=  �G  �F   yzy l �,�+�*�,  �+  �*  z {|{ Z  :}~�)�(} E "� o  �'�' &0 masterstogenerate mastersToGenerate� m  !�� ���  S t r u g g l e~ I  %6�&��%�& 0 pagegen pageGen� ��� m  &)�� ���  s i n g l e� ��� m  ),�� ���  F e a t - S t r u g g l e - L� ��� m  ,/�� ���  1 4 _ S t r u g g l e� ��$� m  /2�� ���  1 4�$  �%  �)  �(  | ��� l ;;�#�"�!�#  �"  �!  � �� � Z  ;X����� E ;@��� o  ;<�� &0 masterstogenerate mastersToGenerate� m  <?�� ���  R e d   L i s t� I  CT���� 0 pagegen pageGen� ��� m  DG�� ���  s i n g l e� ��� m  GJ�� ���  F e a t - R e d L i s t� ��� m  JM�� ���  2 0 _ R e d L i s t� ��� m  MP�� ���  2 0�  �  �  �  �   W ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � 1 + featsGen: Features-page generation routine   � ��� V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   6 9��� I      ���� 0 featsgen featsGen� ��� o      �� &0 masterstogenerate mastersToGenerate� ��� o      �� 0 theday theDay�  �  � k    ��� ��� Z     %����� E    ��� o     �� &0 masterstogenerate mastersToGenerate� m    �� ���  S p r e a d� Z    !���
�� =   	��� o    �	�	 0 theday theDay� m    �� ���  S a t u r d a y� I    ���� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ��� m    �� ���  1 2�  �  �
  � I    !���� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ��� m    �� ���  8�  �  �  �  � ��� l  & &��� �  �  �   � ��� Z   & ;������� E  & )��� o   & '���� &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7������� 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L�    m   / 0 �  1 0 _ F e a t u r e s �� m   0 3 �  1 0��  ��  ��  ��  �  l  < <��������  ��  ��   	
	 Z   < Y���� E  < A o   < =���� &0 masterstogenerate mastersToGenerate m   = @ � 
 1 2 - 1 3 I   D U������ 0 pagegen pageGen  m   E H �  s p r e a d  m   H K �  F e a t - T V  m   K N �  1 2 - 1 3 _ T V �� m   N Q �    1 2��  ��  ��  ��  
 !"! l  Z Z��������  ��  ��  " #$# Z   Z w%&����% E  Z _'(' o   Z [���� &0 masterstogenerate mastersToGenerate( m   [ ^)) �** ( N e w s   r e v i e w s      s p l i t& I   b s��+���� 0 pagegen pageGen+ ,-, m   c f.. �//  s p r e a d- 010 m   f i22 �33 * F e a t - N e w s R e v i e w - S p l i t1 454 m   i l66 �77  8 - 9 _ N e w s R e v i e w5 8��8 m   l o99 �::  8��  ��  ��  ��  $ ;<; Z   x �=>����= E  x }?@? o   x y���� &0 masterstogenerate mastersToGenerate@ m   y |AA �BB , N e w s   r e v i e w s      s i n g l e s> k   � �CC DED I   � ���F���� 0 pagegen pageGenF GHG m   � �II �JJ  s i n g l eH KLK m   � �MM �NN " F e a t - N e w s R e v i e w - LL OPO m   � �QQ �RR  8 _ N e w s R e v i e wP S��S m   � �TT �UU  8��  ��  E V��V I   � ���W���� 0 pagegen pageGenW XYX m   � �ZZ �[[  s i n g l eY \]\ m   � �^^ �__ " F e a t - N e w s R e v i e w - R] `a` m   � �bb �cc  9 _ N e w s R e v i e wa d��d m   � �ee �ff  9��  ��  ��  ��  ��  < ghg l  � ���������  ��  ��  h iji Z   � �kl����k E  � �mnm o   � ����� &0 masterstogenerate mastersToGeneraten m   � �oo �pp  1 5l I   � ���q���� 0 pagegen pageGenq rsr m   � �tt �uu  s i n g l es vwv m   � �xx �yy  F e a t - B l a n k - Rw z{z m   � �|| �}}  1 5 _ F e a t u r e s{ ~��~ m   � � ���  1 5��  ��  ��  ��  j ��� l  � ���������  ��  ��  � ��� Z   � �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ��� 
 1 6 - 1 7� l  � ����� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  A r t s - E n t s - S p l i t� ��� m   � ��� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   � ��� ���  1 6��  ��  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  � ��� l  � ���������  ��  ��  � ��� Z   �]������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   �Y�� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ���� m   � ��� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   ���� J   ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ��� m   � �� ���  F r i d a y� ���� m   �� ��� , N o   d a y      w o r k i n g   a h e a d��  � o      ���� 0 p14_days  � ��� l ��������  ��  ��  � ���� Z  Y������ E ��� o  	���� 0 p10_days  � o  	
���� 0 theday theDay� I  ������� 0 pagegen pageGen� ��� m  �� ���  s i n g l e� ��� m  �� ���  F e a t - L e t t e r s - L� ��� m  �� ���  1 0 _ L e t t e r s� ���� m  �� ���  1 0��  ��  � ��� E "%��� o  "#���� 0 p14_days  � o  #$���� 0 theday theDay� ��� I  (9������� 0 pagegen pageGen� ��� m  ),�� ���  s i n g l e� ��� m  ,/�� ���  F e a t - L e t t e r s - L� ��� m  /2�� ���  1 4 _ L e t t e r s� ���� m  25�� ���  1 4��  ��  � ��� = <A��� o  <=���� 0 theday theDay� m  =@   �  S a t u r d a y� �� I  DU������ 0 pagegen pageGen  m  EH �  s p r e a d 	 m  HK

 � $ F e a t - L e t t e r s - S p l i t	  m  KN �  1 0 - 1 1 _ L e t t e r s �� m  NQ �  1 0��  ��  ��  ��  ��  ��  ��  �  l ^^��������  ��  ��    Z  ^{���� E ^c o  ^_���� &0 masterstogenerate mastersToGenerate m  _b �  A r t s l fw I  fw�� ���� 0 pagegen pageGen  !"! m  gj## �$$  s i n g l e" %&% m  jm'' �((  A r t s - B l a n k - R& )*) m  mp++ �,,  1 1 _ A r t s* -��- m  ps.. �//  1 1��  ��   ( " Create the weekday Arts page (11)    �00 D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��   121 l ||��������  ��  ��  2 3��3 Z  |�45����4 E |�676 o  |}���� &0 masterstogenerate mastersToGenerate7 m  }�88 �99  A r t s   s p l i t5 I  ����:���� 0 pagegen pageGen: ;<; m  ��== �>>  s p r e a d< ?@? m  ��AA �BB   A r t s - B l a n k - S p l i t@ CDC m  ��EE �FF  1 0 - 1 1 _ A r t sD G��G m  ��HH �II  1 0��  ��  ��  ��  ��  � JKJ l     ��������  ��  ��  K LML l     ��������  ��  ��  M NON l     ��PQ��  P , & artsGen: Arts-page generation routine   Q �RR L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n eO STS i   : =UVU I      ��W���� 0 artsgen artsGenW X��X o      ���� &0 masterstogenerate mastersToGenerate��  ��  V k     =YY Z[Z Z     \]����\ E    ^_^ o     ���� &0 masterstogenerate mastersToGenerate_ m    `` �aa  1 6 - 1 7   ( w e e k e n d )] l   bcdb I    ��e���� 0 pagegen pageGene fgf m    hh �ii  s p r e a dg jkj m    	ll �mm  A r t s - E n t s - S p l i tk non m   	 
pp �qq  1 6 - 1 7 _ E n t s - A r t so r��r m   
 ss �tt  1 6��  ��  c ( " Create the weekend Ents/Arts page   d �uu D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  [ vwv l   ��������  ��  ��  w xyx Z    'z{����z E   |}| o    ���� &0 masterstogenerate mastersToGenerate} m    ~~ �  A r t s   ( p 1 1 ){ l   #���� I    #������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  A r t s - B l a n k - R� ��� m    �� ���  1 1 _ A r t s� ���� m    �� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  y ��� l  ( (����~��  �  �~  � ��}� Z   ( =���|�{� E  ( +��� o   ( )�z�z &0 masterstogenerate mastersToGenerate� m   ) *�� ���  A r t s   s p l i t� l  . 9���� I   . 9�y��x�y 0 pagegen pageGen� ��� m   / 0�� ���  s p r e a d� ��� m   0 1�� ���   A r t s - B l a n k - S p l i t� ��� m   1 2�� ���  1 0 - 1 1 _ A r t s� ��w� m   2 5�� ���  1 0�w  �x  � + % Creates an Arts split-spread (10-11)   � ��� J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )�|  �{  �}  T ��� l     �v�u�t�v  �u  �t  � ��� l     �s�r�q�s  �r  �q  � ��� l     �p���p  � 0 * sportsGen: Sports-page generation routine   � ��� T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��o� i   > A��� I      �n��m�n 0 	sportsgen 	sportsGen� ��l� o      �k�k &0 masterstogenerate mastersToGenerate�l  �m  � k    ��� ��� Z     ���j�i� E    ��� o     �h�h &0 masterstogenerate mastersToGenerate� m    �� ���  T w o   p a g e s� k    �� ��� I    �g��f�g 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    	�� ���  S p r t - B a c k� ��� m   	 
�� ���  1 6 _ B a c k� ��e� m   
 �� ���  1 6�e  �f  � ��d� I    �c��b�c 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  S p r t - B l a n k - R� ��� m    �� ���  1 5 _ S p o r t� ��a� m    �� ���  1 5�a  �b  �d  �j  �i  � ��� l   �`�_�^�`  �_  �^  � ��� Z    U���]�\� E   !��� o    �[�[ &0 masterstogenerate mastersToGenerate� m     �� ���  T h r e e   p a g e s� k   $ Q�� ��� I   $ -�Z��Y�Z 0 pagegen pageGen� ��� m   % &�� ���  s i n g l e� ��� m   & '   �  S p r t - B a c k�  m   ' ( �  1 6 _ B a c k �X m   ( ) �  1 6�X  �Y  � 	
	 I   . ?�W�V�W 0 pagegen pageGen  m   / 2 �  s i n g l e  m   2 5 �  S p r t - B l a n k - R  m   5 8 �  1 5 _ S p o r t �U m   8 ; �  1 5�U  �V  
 �T I   @ Q�S�R�S 0 pagegen pageGen  m   A D �    s i n g l e !"! m   D G## �$$  S p r t - B l a n k - L" %&% m   G J'' �((  1 4 _ S p o r t& )�Q) m   J M** �++  1 4�Q  �R  �T  �]  �\  � ,-, l  V V�P�O�N�P  �O  �N  - ./. Z   V �01�M�L0 E  V [232 o   V W�K�K &0 masterstogenerate mastersToGenerate3 m   W Z44 �55 , T h r e e   p a g e s   w i t h   s p l i t1 k   ^ �66 787 I   ^ o�J9�I�J 0 pagegen pageGen9 :;: m   _ b<< �==  s i n g l e; >?> m   b e@@ �AA  S p r t - B a c k? BCB m   e hDD �EE  1 6 _ B a c kC F�HF m   h kGG �HH  1 6�H  �I  8 I�GI I   p ��FJ�E�F 0 pagegen pageGenJ KLK m   q tMM �NN  s p r e a dL OPO m   t wQQ �RR   S p r t - B l a n k - S p l i tP STS m   w zUU �VV  1 4 - 1 5 _ S p o r tT W�DW m   z }XX �YY  1 4�D  �E  �G  �M  �L  / Z[Z l  � ��C�B�A�C  �B  �A  [ \]\ Z   � �^_�@�?^ E  � �`a` o   � ��>�> &0 masterstogenerate mastersToGeneratea m   � �bb �cc  F o u r   p a g e s_ k   � �dd efe I   � ��=g�<�= 0 pagegen pageGeng hih m   � �jj �kk  s i n g l ei lml m   � �nn �oo  S p r t - B a c km pqp m   � �rr �ss  2 4 _ B a c kq t�;t m   � �uu �vv  2 4�;  �<  f wxw I   � ��:y�9�: 0 pagegen pageGeny z{z m   � �|| �}}  s i n g l e{ ~~ m   � ��� ���  S p r t - B l a n k - R ��� m   � ��� ���  2 3 _ S p o r t� ��8� m   � ��� ���  2 3�8  �9  x ��� I   � ��7��6�7 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - L� ��� m   � ��� ���  2 2 _ S p o r t� ��5� m   � ��� ���  2 2�5  �6  � ��4� I   � ��3��2�3 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - R a c i n g - R� ��� m   � ��� ���  2 1 _ R a c i n g� ��1� m   � ��� ���  2 1�1  �2  �4  �@  �?  ] ��� l  � ��0�/�.�0  �/  �.  � ��� Z   ����-�,� E  � ���� o   � ��+�+ &0 masterstogenerate mastersToGenerate� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� k   ��� ��� I   � ��*��)�* 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��(� m   � ��� ���  2 4�(  �)  � ��� I   ��'��&�' 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���   S p r t - B l a n k - S p l i t� ��� m   � ��� ���  2 2 - 2 3 _ S p o r t� ��%� m   ��� ���  2 2�%  �&  � ��$� I  �#��"�# 0 pagegen pageGen� ��� m  
�� ���  s i n g l e� ��� m  
�� ���  S p r t - R a c i n g - R� ��� m  �� ���  2 1 _ R a c i n g� ��!� m  �� ���  2 1�!  �"  �$  �-  �,  � ��� l � ���   �  �  � ��� Z  9����� E !��� o  �� &0 masterstogenerate mastersToGenerate� m   �� ���  R a c i n g   o n l y� I  $5���� 0 pagegen pageGen� ��� m  %(�� ���  s i n g l e� ��� m  (+�� ���  S p r t - R a c i n g - R� � � m  +. �  2 1 _ R a c i n g  � m  .1 �  2 1�  �  �  �  �  l ::����  �  �   	 Z  :W
��
 E :? o  :;�� &0 masterstogenerate mastersToGenerate m  ;> �  E x t r a   l e f t   p a g e I  BS��� 0 pagegen pageGen  m  CF �  s i n g l e  m  FI �  S p r t - B l a n k - L  m  IL �  L _ X X _ S p o r t � m  LO �  0 0�  �  �  �  	  !  l XX����  �  �  ! "#" Z  Xu$%��
$ E X]&'& o  XY�	�	 &0 masterstogenerate mastersToGenerate' m  Y\(( �))   E x t r a   r i g h t   p a g e% I  `q�*�� 0 pagegen pageGen* +,+ m  ad-- �..  s i n g l e, /0/ m  dg11 �22  S p r t - B l a n k - R0 343 m  gj55 �66  R _ X X _ S p o r t4 7�7 m  jm88 �99  0 0�  �  �  �
  # :;: l vv����  �  �  ; <�< Z  v�=>�� = E v{?@? o  vw���� &0 masterstogenerate mastersToGenerate@ m  wzAA �BB  E x t r a   s p l i t> I  ~���C���� 0 pagegen pageGenC DED m  �FF �GG  s p r e a dE HIH m  ��JJ �KK   S p r t - B l a n k - S p l i tI LML m  ��NN �OO " S p l i t _ X X - X X _ S p o r tM P��P m  ��QQ �RR  0 0��  ��  �  �   �  �o       ��S K UTUVWXYZ[\]^_`abc��  S �������������������������������������� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� 0 	genprompt 	genPrompt�� 0 list_position  �� 0 
dateprompt 
datePrompt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� 0 pagegen pageGen�� 0 applymaster applyMaster�� "0 changelegaldate changeLegalDate��  0 drawembargobox drawEmbargoBox�� 0 	cleansave 	cleanSave�� 0 customedition customEdition�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 artsgen artsGen�� 0 	sportsgen 	sportsGen
�� .aevtoappnull  �   � ****T �� �����de���� 0 	genprompt 	genPrompt�� ��f�� f  ���� 0 desk  ��  d 	�������������������� 0 desk  �� 0 	days_list  �� 0 thetitle theTitle�� 0 weekday_pages  �� 0 weekend_pages  �� 0 ahead_pages  �� 0 theday theDay�� 0 
prompttext 
promptText�� &0 masterstogenerate mastersToGeneratee k � � � � � ����� ��� ��������� ����� � � � � � ���#��-7;>FJNRU[fjnrvy������������������������	��"-09=@HLO��p����������������������� 
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
)j+ [Y �a \_ ]%_ ]%a ^%E�O�a _  +���a `ea  E�O�f  )a a lhY hY e�a a +���a `ea  E�O�f  )a a lhY hY 4�a b  +���a `ea  E�O�f  )a a lhY hY hO�a c  )��l+ dY 7�a e  )��l+ fY %�a g  )�k+ hY �a i  )�k+ jY hU ��)����gh���� 0 list_position  �� ��i�� i  ������ 0 	this_item  �� 0 	this_list  ��  g �������� 0 	this_item  �� 0 	this_list  �� 0 i  h ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY��V ��F����jk���� 0 
dateprompt 
datePrompt�� ��l�� l  ������ 0 thetitle theTitle�� 0 	days_list  ��  j ���������������������������������� 0 thetitle theTitle�� 0 	days_list  �� 0 months_list  �� 0 tomorrow  �� 0 tmday tmDay�� 0 theday theDay�� 0 prdate prDate�� 0 prmonth prMonth�� 0 pryear prYear�� 0 
predictpos 
predictPos�� 0 	actualpos 	actualPos�� 0 shiftpos shiftPos�� 0 predictedday predictedDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYeark 2SW[_cgkosw{~������������������������������������������������������������������ 
�� .misccurdldt    ��� null
�� 
wkdy
�� 
TEXT
�� 
days
�� 
prmp
�� 
inSL
�� 
appr�� 
�� .gtqpchltns    @   @ ns  
�� 
rslt
�� 
errn������ 0 pagedate pageDate�� 0 filedate fileDate
�� 
day 
�� 
mnth
�� 
year�� 0 list_position  �� 
�� 
dtxt�� 
�� .sysodlogaskr        TEXT
�� 
ttxt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate����������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hOa .a )�a �a * +a ,,�&E�O_ a /  )a a lhY hO)����a *+ 0O)����a *+ 1O�W ��-����mn���� "0 create_pagedate create_pageDate�� ��o�� o  ���������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear��  m ��~�}�|�{�z�y� 0 theday theDay�~ 0 themonth theMonth�} 0 thedate theDate�| 0 theyear theYear�{ 0 sun  �z 0 secondmonth secondMonth�y 0 
secondyear 
secondYearn ;RTV�x�wy{}�v�u�t���s������r��x 0 pagedate pageDate
�w 
ldt 
�v 
days
�u 
mnth
�t 
TEXT
�s 
year
�r 
day �� ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OPX �q�p�opq�n�q "0 create_filedate create_fileDate�p �mr�m r  �l�k�j�i�l 0 themonth theMonth�k 0 thedate theDate�j 0 theyear theYear�i 0 months_list  �o  p �h�g�f�e�h 0 themonth theMonth�g 0 thedate theDate�f 0 theyear theYear�e 0 months_list  q �d�c$�b=�a�`�_
�d 
nmbr�c 
�b 0 list_position  
�a 
ctxt�` �_ 0 filedate fileDate�n >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E�Y �^h�]�\st�[�^ 0 pagegen pageGen�] �Zu�Z u  �Y�X�W�V�Y 0 pagetype pageType�X 0 	themaster 	theMaster�W 0 theslug theSlug�V 0 
pagenumber 
pageNumber�\  s �U�T�S�R�U 0 pagetype pageType�T 0 	themaster 	theMaster�S 0 theslug theSlug�R 0 
pagenumber 
pageNumbert ��Q�P��O���N�M�L�K�J�I�H
�Q .aevtodocnull  �    alis�P 0 applymaster applyMaster�O  0 drawembargobox drawEmbargoBox
�N 
bool�M "0 changelegaldate changeLegalDate�L 0 	cleansave 	cleanSave
�K 
pacd
�J 
svop
�I savoyes 
�H .CoReclosnull���     obj �[ Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UUZ �G��F�Evw�D�G 0 applymaster applyMaster�F �Cx�C x  �B�A�@�B 0 	themaster 	theMaster�A 0 pagetype pageType�@ 0 
pagenumber 
pageNumber�E  v �?�>�=�? 0 	themaster 	theMaster�> 0 pagetype pageType�= 0 
pagenumber 
pageNumberw ,�<��;�:�9��8��7�6�5�4�3�2y�1�0!�/�.+8FO�-�,�+�*�)fp|���������(
�< 
pacd
�; 
mspr
�: 
page
�9 
pmas
�8 
txtf
�7 
dPge
�6 .InESovrrobj         obj �5 0 pagedate pageDate
�4 
pcnt
�3 
mpgs
�2 
cobjy  
�1 
pilr
�0 
pnam�/  �.  
�- 
kocl
�, 
sprd
�+ 
prdt�* 
�) .corecrel****      � null
�( 
TEXT�D���*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU[ �'�&�%z{�$�' "0 changelegaldate changeLegalDate�& �#|�# |  �"�" 0 	themaster 	theMaster�%  z �!�! 0 	themaster 	theMaster{ d� (��2����@�GR`
�  
pacd
� 
mspr
� 
txtf
� 
dPge
� 
page
� .InESovrrobj         obj � 0 pagedate pageDate
� 
pcnt�$ X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU\ �q��}~��  0 drawembargobox drawEmbargoBox� ��   �� 0 pagetype pageType�  } ����� 0 pagetype pageType� 0 pagenum pageNum� 0 	worklayer 	workLayer� 0 ebox eBox~ �����y����
�	��������������� ��
� 
docu
� 
layr
� 
pnam
� 
page
�
 
kocl
�	 
txtf
� 
prdt
� 
pilr
� 
gbnd� 
� 
pcnt� 
� .corecrel****      � null
� 
ObSt
�  
aobs
�� 
plck� |� x*�k/ p��  kE�Y ��  lE�Y hO*�k/�[�,\Z�81E�O*�/ '*�������a a a va a a a  E�UO*a a /�a ,FOe�a ,FUU] ������������� 0 	cleansave 	cleanSave�� ����� �  ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug��  � ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug� 	@�����������		��	)��	;��	=��
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
�� .CoResavedocu        obj �� `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU^ ��	M���������� 0 customedition customEdition��  ��  � ������������������������������������ 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart�� 0 theend theEnd�� 0 x  �� 0 searchresult searchResult�� 0 
pagenumber 
pageNumber�� 0 hmaster hMaster�� 0 listpos listPos�� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 theslug theSlug�� 0 message2753  � �	n	r	v	z	~	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	���






#
'
+
/
3
7
;
?
C
G
K
O
S
W
[
_
c
g
k
o
s
w
{

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
�  $(,047GKOSW[_cgkosw{��������������������������N�����������������������+������@��M��[�����������������������"$��/2��5������@������ %�� �� 
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
bool�� 0 pagegen pageGen��  � ������
�� 
errn���?��  
�� 
ret 
�� 
btns
�� 
dflt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
errn������o����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa ��*a �k/a �k/�a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�Oe��kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPW lX � �a �_ �%_ �%�a �,%_ �%_ �%a �%_ �%_ �%a �%E^ O] a �a �a �lva �a �a � �O_ �a �,a �  )a �a �lhY hOPY h[OY��OPUU_ ��Y���������� 0 newsgen newsGen�� ����� �  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  � ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  � Aeow{������������������������������ !+/2?CGJUY]`flptw������������ �� 0 pagegen pageGen��Y�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y h` ������������� 0 featsgen featsGen�� ����� �  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  � ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  � L�����������������).269AIMQTZ^beotx|�������������������� 
#'+.8=AEH�� �� 0 pagegen pageGen�����  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . ra /a 0lvE�Oa 1a 2a 3a 4�vE�O�� *a 5a 6a 7a 8�+ Y 9�� *a 9a :a ;a <�+ Y �a =  *a >a ?a @a A�+ Y hY hO�a B *a Ca Da Ea F�+ Y hO�a G *a Ha Ia Ja K�+ Y ha ��V���������� 0 artsgen artsGen�� ����� �  ���� &0 masterstogenerate mastersToGenerate��  � ���� &0 masterstogenerate mastersToGenerate� `hlps����~����������� �� 0 pagegen pageGen�� >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y hb ������������� 0 	sportsgen 	sportsGen�� ����� �  ���� &0 masterstogenerate mastersToGenerate��  � ���� &0 masterstogenerate mastersToGenerate� S��������������� #'*4<@DGMQUXbjnru|���������������������������(-158AFJNQ�� �� 0 pagegen pageGen����� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y hc �����������
�� .aevtoappnull  �   � ****� k     5��  ^��  k��  u��  ����  ��  ��  �  � 
 i������ r���� ���~
�� elnteNvr
�� 
pScr
�� 
UIAc�� 0 	genprompt 	genPrompt
�� elnteInA
� .miscactvnull��� ��� obj 
�~ .aevtodocnull  �    alis�� 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	Uascr  ��ޭ