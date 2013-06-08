FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			2012-12-15     �   0 	 C r e a t e d   o n 	 	 	 2 0 1 2 - 1 2 - 1 5      l     ��  ��      	Last updated			2013-06-08     �   4 	 L a s t   u p d a t e d 	 	 	 2 0 1 3 - 0 6 - 0 8      l     ��  ��     	Version:			1.84     �     	 V e r s i o n : 	 	 	 1 . 8 4     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [   Running code --    \ � ] ]     R u n n i n g   c o d e   - - Z  ^ _ ^ l     ` a b ` O     c d c r     e f e m    ��
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
pacd��  ��    m     dd�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   efe l     ��������  ��  ��  f ghg l     ��������  ��  ��  h iji l     ��kl��  k c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   l �mm �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g ej non i   & )pqp I      ��r����  0 drawembargobox drawEmbargoBoxr s��s o      ���� 0 pagetype pageType��  ��  q O     [tut O    Zvwv k    Yxx yzy Z    ${|}��{ =   ~~ o    ���� 0 pagetype pageType m    �� ���  s i n g l e| r    ��� m    ���� � o      ���� 0 pagenum pageNum} ��� =   ��� o    ���� 0 pagetype pageType� m    �� ���  s p r e a d� ���� r     ��� m    ���� � o      ���� 0 pagenum pageNum��  ��  z ��� l  % %��������  ��  ��  � ��� O   % B��� r   , A��� I  , ?�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   . /��
�� 
txtf� �����
�� 
prdt� K   0 ;�� ����
�� 
gbnd� J   1 7�� ��� m   1 2�� @,      � ��� m   2 3�� �b�     � ��� m   3 4�� @\�     � ���� m   4 5�� �I      ��  � �����
�� 
pcnt� m   8 9�� ��� " E m b a r g o e d   s t o r i e s��  ��  � o      ���� 0 ebox eBox� 4   % )���
�� 
page� o   ' (���� 0 pagenum pageNum� ��� l  C Q���� r   C Q��� 4   C K���
�� 
ObSt� m   G J�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   L P��
�� 
aobs� o   K L���� 0 ebox eBox��  ��  � K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n� ���� r   R Y��� m   R S��
�� boovtrue� n      ��� 1   T X��
�� 
plck� o   S T���� 0 ebox eBox��  w l   ������ 4   ���
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
pacl� ��� l  " "��������  ��  ��  � ��� Z   " I������ l  " '������ =  " '��� `   " %��� o   " #���� 0 
pagenumber 
pageNumber� m   # $���� � m   % &����  ��  ��  � l  * 2���� r   * 2�	 � J   * .		 			 m   * +		 @.      	 	��	 m   + ,		 @&      ��  	  l     	����	 1   . 1��
�� 
zero��  ��  � ( " For left-hand singles and spreads   � �		 D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s� 			
		 l  5 :	����	 =  5 :			 `   5 8			 o   5 6���� 0 
pagenumber 
pageNumber	 m   6 7���� 	 m   8 9���� ��  ��  	
 	��	 l  = E				 r   = E			 J   = A		 			 m   = >		 @"      	 	��	 m   > ?		 @&      ��  	 l     	����	 1   A D��
�� 
zero��  ��  	   For right-hand singles   	 �		 .   F o r   r i g h t - h a n d   s i n g l e s��  ��  � 			 l  J J��������  ��  ��  	 	 ��	  I  J ]����	!
�� .CoResavedocu        obj ��  	! ��	"��
�� 
kfil	" b   L Y	#	$	# b   L W	%	&	% b   L U	'	(	' b   L S	)	*	) o   L Q���� $0 freshpagesfolder freshPagesFolder	* o   Q R���� 0 theslug theSlug	( m   S T	+	+ �	,	,  _	& o   U V�� 0 filedate fileDate	$ m   W X	-	- �	.	. 
 . i n d d��  ��  � l   	/�~�}	/ 1    �|
�| 
pacd�~  �}  � m     	0	0�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	1	2	1 l     �{�z�y�{  �z  �y  	2 	3	4	3 l     �x�w�v�x  �w  �v  	4 	5	6	5 l     �u	7	8�u  	7 f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	8 �	9	9 �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	6 	:	;	: i   . 1	<	=	< I      �t�s�r�t 0 customedition customEdition�s  �r  	= k    n	>	> 	?	@	? l     �q�p�o�q  �p  �o  	@ 	A	B	A l     �n	C	D�n  	C | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	D �	E	E �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	B 	F	G	F l     �m	H	I�m  	H a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	I �	J	J �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	G 	K	L	K l     �l	M	N�l  	M [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	N �	O	O �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	L 	P	Q	P l     �k�j�i�k  �j  �i  	Q 	R	S	R l     �h	T	U�h  	T > 8 The human-friendly names used in the TextWrangler file	   	U �	V	V p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		S 	W	X	W r     U	Y	Z	Y J     S	[	[ 	\	]	\ m     	^	^ �	_	_ 
 F r o n t	] 	`	a	` m    	b	b �	c	c  S a t F r o n t	a 	d	e	d m    	f	f �	g	g  H o m e _ S	e 	h	i	h m    	j	j �	k	k  H o m e _ L	i 	l	m	l m    	n	n �	o	o  H o m e _ R	m 	p	q	p m    	r	r �	s	s  F o r e i g n _ S	q 	t	u	t m    	v	v �	w	w  F o r e i g n _ L	u 	x	y	x m    	z	z �	{	{  F o r e i g n _ R	y 	|	}	| m    		~	~ �		  S t r u g g l e _ S	} 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   F I	�	� �	�	�  B l a n k _ S	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ L	� 	��g	� m   L O	�	� �	�	�  B l a n k _ R�g  	Z o      �f�f 0 
human_list  	X 	�	�	� l  V V�e	�	��e  	�    The InDesign master names   	� �	�	� 4   T h e   I n D e s i g n   m a s t e r   n a m e s	� 	�	�	� r   V �	�	�	� J   V �	�	� 	�	�	� m   V Y	�	� �	�	�  N e w s - F r o n t	� 	�	�	� m   Y \	�	� �
 
   N e w s - S a t F r o n t	� 


 m   \ _

 �

  N e w s - H o m e - S p l i t
 


 m   _ b

 �

  N e w s - H o m e - L
 
	


	 m   b e

 �

  N e w s - H o m e - R

 


 m   e h

 �

 $ N e w s - F o r e i g n - S p l i t
 


 m   h k

 �

  N e w s - F o r e i g n - L
 


 m   k n

 �

  N e w s - F o r e i g n - R
 


 m   n q

 �

 & F e a t - S t r u g g l e - S p l i t
 


 m   q t

 �
 
   F e a t - S t r u g g l e - L
 
!
"
! m   t w
#
# �
$
$  F e a t - S t r u g g l e - R
" 
%
&
% m   w z
'
' �
(
( * F e a t - N e w s R e v i e w - S p l i t
& 
)
*
) m   z }
+
+ �
,
, " F e a t - N e w s R e v i e w - L
* 
-
.
- m   } �
/
/ �
0
0 " F e a t - N e w s R e v i e w - R
. 
1
2
1 m   � �
3
3 �
4
4  F e a t - S p r e a d
2 
5
6
5 m   � �
7
7 �
8
8  F e a t - T V
6 
9
:
9 m   � �
;
; �
<
<  F e a t - S a t T V
: 
=
>
= m   � �
?
? �
@
@ $ F e a t - L e t t e r s - S p l i t
> 
A
B
A m   � �
C
C �
D
D  F e a t - L e t t e r s - L
B 
E
F
E m   � �
G
G �
H
H  F e a t - L e t t e r s - R
F 
I
J
I m   � �
K
K �
L
L  F e a t - R e d L i s t
J 
M
N
M m   � �
O
O �
P
P   F e a t - B l a n k - S p l i t
N 
Q
R
Q m   � �
S
S �
T
T  F e a t - B l a n k - L
R 
U
V
U m   � �
W
W �
X
X  F e a t - B l a n k - R
V 
Y
Z
Y m   � �
[
[ �
\
\  A r t s - E n t s - S p l i t
Z 
]
^
] m   � �
_
_ �
`
`   A r t s - B l a n k - S p l i t
^ 
a
b
a m   � �
c
c �
d
d  A r t s - B l a n k - L
b 
e
f
e m   � �
g
g �
h
h  A r t s - B l a n k - R
f 
i
j
i m   � �
k
k �
l
l  S p r t - B a c k
j 
m
n
m m   � �
o
o �
p
p   S p r t - B l a n k - S p l i t
n 
q
r
q m   � �
s
s �
t
t  S p r t - B l a n k - L
r 
u
v
u m   � �
w
w �
x
x  S p r t - B l a n k - R
v 
y
z
y m   � �
{
{ �
|
|  S p r t - R a c i n g - L
z 
}
~
} m   � �

 �
�
�  S p r t - R a c i n g - R
~ 
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
��d
� m   � �
�
� �
�
�  X - B l a n k - R�d  	� o      �c�c 0 masters_list  	� 
�
�
� l  � ��b
�
��b  
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
�
�
� m     �  A r t s
�  m    �  A r t s  m   # �		  B a c k 

 m  #& � 
 S p o r t  m  &) � 
 S p o r t  m  ), � 
 S p o r t  m  ,/ �  R a c i n g  m  /2 �  R a c i n g  m  25   �!! 
 B L A N K "#" m  58$$ �%% 
 B L A N K# &�a& m  8;'' �(( 
 B L A N K�a  
� o      �`�` 0 
slugs_list  
� )*) l BB�_�^�]�_  �^  �]  * +,+ l BB�\-.�\  - 1 + Single-page masters (used to set pageType)   . �// V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e ), 010 r  B�232 J  B�44 565 m  BE77 �88  N e w s - F r o n t6 9:9 m  EH;; �<<  N e w s - S a t F r o n t: =>= m  HK?? �@@  N e w s - H o m e - L> ABA m  KNCC �DD  N e w s - H o m e - RB EFE m  NQGG �HH  N e w s - F o r e i g n - LF IJI m  QTKK �LL  N e w s - F o r e i g n - RJ MNM m  TWOO �PP  F e a t - S t r u g g l e - LN QRQ m  WZSS �TT  F e a t - S t r u g g l e - RR UVU m  Z]WW �XX " F e a t - N e w s R e v i e w - LV YZY m  ]`[[ �\\ " F e a t - N e w s R e v i e w - RZ ]^] m  `c__ �``  F e a t - L e t t e r s - L^ aba m  cfcc �dd  F e a t - L e t t e r s - Rb efe m  figg �hh  F e a t - R e d L i s tf iji m  ilkk �ll  F e a t - B l a n k - Lj mnm m  looo �pp  F e a t - B l a n k - Rn qrq m  orss �tt  A r t s - B l a n k - Lr uvu m  ruww �xx  A r t s - B l a n k - Rv yzy m  ux{{ �||  S p r t - B a c kz }~} m  x{ ���  S p r t - B l a n k - L~ ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ��[� m  ���� ���  X - B l a n k - R�[  3 o      �Z�Z 0 singles_list  1 ��� l ���Y���Y  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��X� m  ���� ���  X - B l a n k - S p l i t�X  � o      �W�W 0 spreads_list  � ��� l ���V�U�T�V  �U  �T  � ��S� O  �n��� O  �m��� k  �l�� ��� l ������ r  ����� l ����R�Q� I ���P��
�P .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �O��N
�O 
Opts� K  ���� �M��
�M 
SMod� m  ���L
�L SModGrep� �K��J
�K 
STop� m  ���I
�I boovtrue�J  �N  �R  �Q  � o      �H�H 0 hashline hashLine�   Finds the beginning line   � ��� 2   F i n d s   t h e   b e g i n n i n g   l i n e� ��� l ������ r  ����� l ����G�F� [  ����� l ����E�D� l ����C�B� n  ����� 1  ���A
�A 
SLin� l ����@�?� n  ����� 1  ���>
�> 
MSpc� o  ���=�= 0 hashline hashLine�@  �?  �C  �B  �E  �D  � m  ���<�< �G  �F  � o      �;�; 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � ��� h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e� ��� l �� � r  � l ��:�9 1  ��8
�8 
ELin�:  �9   o      �7�7 0 theend theEnd  @ : The last instruction must be on the last line of the file    � t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e�  l �6�5�4�6  �5  �4   	 Y  j
�3�2
 l e k  e  l - r  - l +�1�0 I +�/
�/ .R*chFindMtch���     TEXT m   �  ^ ( . + ) \ t ( . + ) $ �.
�. 
FnIn 4  �-
�- 
clin o  �,�, 0 x   �+ �*
�+ 
Opts  K  %!! �)"�(
�) 
SMod" m   #�'
�' SModGrep�(  �*  �1  �0   o      �&�& 0 searchresult searchResult 9 3 Finds characters, then a tab, then more characters    �## f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s $%$ l ..�%�$�#�%  �$  �#  % &'& l .;()*( r  .;+,+ l .9-�"�!- I .9� �.
�  .R*chGSubutxt    ��� null�  . �/�
� 
RplP/ m  2500 �11  \ 1�  �"  �!  , o      �� 0 
pagenumber 
pageNumber) < 6 The page number (or a spread's left-hand page number)   * �22 l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )' 343 l <I5675 r  <I898 l <G:��: I <G��;
� .R*chGSubutxt    ��� null�  ; �<�
� 
RplP< m  @C== �>>  \ 2�  �  �  9 o      �� 0 hmaster hMaster6 = 7 Human-friendly master name, as contained in human_list   7 �?? n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t4 @A@ l JJ����  �  �  A B�B Z  JeCD��C H  JTEE E  JSFGF l JOH��H n  JOIJI 1  KO�
� 
MTxtJ o  JK�� 0 searchresult searchResult�  �  G m  ORKK �LL  - 	 -D l WaMNOM k  WaPP QRQ l WW�
�	��
  �	  �  R STS Q  W_UVWU k  Z�XX YZY l Zc[\][ r  Zc^_^ l Za`��` n Zaaba I  [a�c�� 0 list_position  c ded o  [\�� 0 hmaster hMastere f�f o  \]�� 0 
human_list  �  �  b  f  Z[�  �  _ o      � �  0 listpos listPos\ Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   ] �gg �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s tZ hih l dljklj r  dlmnm l djo����o n  djpqp 4  ej��r
�� 
cobjr o  hi���� 0 listpos listPosq o  de���� 0 masters_list  ��  ��  n o      ���� 0 	themaster 	theMasterk 1 + Sets theMaster to the InDesign master name   l �ss V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m ei tut l mm��������  ��  ��  u vwv Z  m�xyz��x E mp{|{ o  mn���� 0 singles_list  | o  no���� 0 	themaster 	theMastery r  sx}~} m  sv ���  s i n g l e~ o      ���� 0 pagetype pageTypez ��� E {~��� o  {|���� 0 spreads_list  � o  |}���� 0 	themaster 	theMaster� ���� r  ����� m  ���� ���  s p r e a d� o      ���� 0 pagetype pageType��  ��  w ��� l ����������  ��  ��  � ��� Z  �������� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l �������� b  ����� b  ����� o  ������ 0 
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
pageNumber��  ��  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ���� l ����������  ��  ��  ��  V R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ����
���  W k  �_�� ��� l ��������  � M G Handles "variable not defined" - aimed at listPos - to catch bad input   � ��� �   H a n d l e s   " v a r i a b l e   n o t   d e f i n e d "   -   a i m e d   a t   l i s t P o s   -   t o   c a t c h   b a d   i n p u t� ��� r  �'��� b  �#��� b  ���� b  �� � b  � b  � b  � b  � b  �	
	 b  � m  �� � R T h e r e   i s   a   p r o b l e m   w i t h   t h i s   i n s t r u c t i o n : o  � ��
�� 
ret 
 o  ��
�� 
ret  l 
���� n  
 1  
��
�� 
MTxt o  ���� 0 searchresult searchResult��  ��   o  ��
�� 
ret  o  ��
�� 
ret  m   � � P l e a s e   d o u b l e - c h e c k   t h a t   t h e   p a g e   t y p e   i s   s p e l l e d   e x a c t l y   a s   l i s t e d .  o  ��
�� 
ret � o  ��
�� 
ret � m  " � � D o   y o u   w i s h   t o   g e n e r a t e   t h e   r e s t   o f   t h e   p a g e s   o r   s t o p   t h e   s c r i p t ?� o      ���� 0 message2753  �  I (B��
�� .sysodlogaskr        TEXT o  (+���� 0 message2753   ��
�� 
btns J  .6  m  .1 �    C o n t i n u e !��! m  14"" �##  S t o p��   ��$��
�� 
dflt$ m  9<%% �&&  S t o p��   '��' Z C_()����( = CN*+* l CJ,����, n  CJ-.- 1  FJ��
�� 
bhit. l CF/����/ 1  CF��
�� 
rslt��  ��  ��  ��  + m  JM00 �11  S t o p) R  Q[����2
�� .ascrerr ****      � ****��  2 ��3��
�� 
errn3 m  UX��������  ��  ��  ��  T 454 l ``��������  ��  ��  5 6��6 l ``��������  ��  ��  ��  N : 4 Lines consisting of "hyphen tab hyphen" are skipped   O �77 h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�  �  �   P J Goes through each line from the one after hashLine to the end of the file    �88 �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�3 0 x   o  ���� 0 thestart theStart o  	���� 0 theend theEnd�2  	 9��9 l kk��������  ��  ��  ��  � n  ��:;: 4  ����<
�� 
ctxt< m  ������ ; 4  ����=
�� 
TxtW= m  ������ � m  ��>>�                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                               f���vN�        ����  	                Applications    �@��      �vN�    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  �S  	; ?@? l     ��������  ��  ��  @ ABA l     ��CD��  C , & newsGen: News-page generation routine   D �EE L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n eB FGF i   2 5HIH I      ��J���� 0 newsgen newsGenJ KLK o      �� &0 masterstogenerate mastersToGenerateL M�~M o      �}�} 0 theday theDay�~  ��  I k    XNN OPO Z     _QR�|�{Q E    STS o     �z�z &0 masterstogenerate mastersToGenerateT m    UU �VV  N e w s   p a g e sR k    [WW XYX Z    +Z[\�yZ >   	]^] o    �x�x 0 theday theDay^ m    __ �``  S a t u r d a y[ l   abca I    �wd�v�w 0 pagegen pageGend efe m    gg �hh  s i n g l ef iji m    kk �ll  N e w s - F r o n tj mnm m    oo �pp  1 _ F r o n tn q�uq m    rr �ss  �u  �v  b ; 5 If block to create the weekday or weekend front page   c �tt j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e\ uvu =   wxw o    �t�t 0 theday theDayx m    yy �zz  S a t u r d a yv {�s{ I    '�r|�q�r 0 pagegen pageGen| }~} m      ���  s i n g l e~ ��� m     !�� ���  N e w s - S a t F r o n t� ��� m   ! "�� ���  1 _ F r o n t� ��p� m   " #�� ���  �p  �q  �s  �y  Y ��� I   , 7�o��n�o 0 pagegen pageGen� ��� m   - .�� ���  s p r e a d� ��� m   . /�� ���  N e w s - H o m e - S p l i t� ��� m   / 0�� ���  2 - 3 _ H o m e� ��m� m   0 3�� ���  2�m  �n  � ��� I   8 I�l��k�l 0 pagegen pageGen� ��� m   9 <�� ���  s p r e a d� ��� m   < ?�� ���  N e w s - H o m e - S p l i t� ��� m   ? B�� ���  4 - 5 _ H o m e� ��j� m   B E�� ���  4�j  �k  � ��i� I   J [�h��g�h 0 pagegen pageGen� ��� m   K N�� ���  s p r e a d� ��� m   N Q�� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   Q T�� ���  6 - 7 _ F o r e i g n� ��f� m   T W�� ���  6�f  �g  �i  �|  �{  P ��� l  ` `�e�d�c�e  �d  �c  � ��� Z   ` ����b�a� E  ` e��� o   ` a�`�` &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h �����_� >  h m��� o   h i�^�^ 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p ��]��\�] 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���  F e a t - T V� ��� m   w z�� ���  1 2 - 1 3 _ T V� ��[� m   z }�� ���  1 2�[  �\  � ��� =  � ���� o   � ��Z�Z 0 theday theDay� m   � ��� ���  S a t u r d a y� ��Y� I   � ��X��W�X 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  F e a t - S a t T V� ��� m   � ��� ���  1 8 - 1 9 _ T V� ��V� m   � ��� ���  1 8�V  �W  �Y  �_  �b  �a  � ��� l  � ��U�T�S�U  �T  �S  � ��� Z   ����R�Q� E  � �� � o   � ��P�P &0 masterstogenerate mastersToGenerate  m   � � �  L e t t e r s� k   �  l  � � r   � �	
	 J   � �  m   � � �  M o n d a y �O m   � � �  W e d n e s d a y�O  
 o      �N�N 0 p10_days   = 7 These two lists determine what the page number will be    � n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e  r   � � J   � �  m   � � �  T u e s d a y  m   � � �    T h u r s d a y !�M! m   � �"" �##  F r i d a y�M   o      �L�L 0 p14_days   $%$ l  � ��K�J�I�K  �J  �I  % &�H& Z   �'()�G' E  � �*+* o   � ��F�F 0 p10_days  + o   � ��E�E 0 theday theDay( I   � ��D,�C�D 0 pagegen pageGen, -.- m   � �// �00  s i n g l e. 121 m   � �33 �44  F e a t - L e t t e r s - L2 565 m   � �77 �88  1 0 _ L e t t e r s6 9�B9 m   � �:: �;;  1 0�B  �C  ) <=< E  � �>?> o   � ��A�A 0 p14_days  ? o   � ��@�@ 0 theday theDay= @A@ I   � ��?B�>�? 0 pagegen pageGenB CDC m   � �EE �FF  s i n g l eD GHG m   � �II �JJ  F e a t - L e t t e r s - LH KLK m   � �MM �NN  1 4 _ L e t t e r sL O�=O m   � �PP �QQ  1 4�=  �>  A RSR =  � TUT o   � ��<�< 0 theday theDayU m   � �VV �WW  S a t u r d a yS X�;X I  �:Y�9�: 0 pagegen pageGenY Z[Z m  \\ �]]  s p r e a d[ ^_^ m  
`` �aa $ F e a t - L e t t e r s - S p l i t_ bcb m  
dd �ee  1 0 - 1 1 _ L e t t e r sc f�8f m  gg �hh  1 0�8  �9  �;  �G  �H  �R  �Q  � iji l �7�6�5�7  �6  �5  j klk Z  :mn�4�3m E "opo o  �2�2 &0 masterstogenerate mastersToGeneratep m  !qq �rr  S t r u g g l en I  %6�1s�0�1 0 pagegen pageGens tut m  &)vv �ww  s i n g l eu xyx m  ),zz �{{  F e a t - S t r u g g l e - Ly |}| m  ,/~~ �  1 4 _ S t r u g g l e} ��/� m  /2�� ���  1 4�/  �0  �4  �3  l ��� l ;;�.�-�,�.  �-  �,  � ��+� Z  ;X���*�)� E ;@��� o  ;<�(�( &0 masterstogenerate mastersToGenerate� m  <?�� ���  R e d   L i s t� I  CT�'��&�' 0 pagegen pageGen� ��� m  DG�� ���  s i n g l e� ��� m  GJ�� ���  F e a t - R e d L i s t� ��� m  JM�� ���  2 0 _ R e d L i s t� ��%� m  MP�� ���  2 0�%  �&  �*  �)  �+  G ��� l     �$�#�"�$  �#  �"  � ��� l     �!� ��!  �   �  � ��� l     ����  � 1 + featsGen: Features-page generation routine   � ��� V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   6 9��� I      ���� 0 featsgen featsGen� ��� o      �� &0 masterstogenerate mastersToGenerate� ��� o      �� 0 theday theDay�  �  � k    ��� ��� Z     %����� E    ��� o     �� &0 masterstogenerate mastersToGenerate� m    �� ���  S p r e a d� Z    !����� =   	��� o    �� 0 theday theDay� m    �� ���  S a t u r d a y� I    ���� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ��� m    �� ���  1 2�  �  �  � I    !���� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ��� m    �� ���  8�  �  �  �  � ��� l  & &����  �  �  � ��� Z   & ;���
�	� E  & )��� o   & '�� &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7���� 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ��� m   0 3�� ���  1 0�  �  �
  �	  � ��� l  < <����  �  �  � ��� Z   < Y���� � E  < A��� o   < =���� &0 masterstogenerate mastersToGenerate� m   = @�� �   
 1 2 - 1 3� I   D U������ 0 pagegen pageGen  m   E H �  s p r e a d  m   H K �		  F e a t - T V 

 m   K N �  1 2 - 1 3 _ T V �� m   N Q �  1 2��  ��  �  �   �  l  Z Z��������  ��  ��    Z   Z w���� E  Z _ o   Z [���� &0 masterstogenerate mastersToGenerate m   [ ^ � ( N e w s   r e v i e w s      s p l i t I   b s������ 0 pagegen pageGen  m   c f �  s p r e a d  !  m   f i"" �## * F e a t - N e w s R e v i e w - S p l i t! $%$ m   i l&& �''  8 - 9 _ N e w s R e v i e w% (��( m   l o)) �**  8��  ��  ��  ��   +,+ Z   x �-.����- E  x }/0/ o   x y���� &0 masterstogenerate mastersToGenerate0 m   y |11 �22 , N e w s   r e v i e w s      s i n g l e s. k   � �33 454 I   � ���6���� 0 pagegen pageGen6 787 m   � �99 �::  s i n g l e8 ;<; m   � �== �>> " F e a t - N e w s R e v i e w - L< ?@? m   � �AA �BB  8 _ N e w s R e v i e w@ C��C m   � �DD �EE  8��  ��  5 F��F I   � ���G���� 0 pagegen pageGenG HIH m   � �JJ �KK  s i n g l eI LML m   � �NN �OO " F e a t - N e w s R e v i e w - RM PQP m   � �RR �SS  9 _ N e w s R e v i e wQ T��T m   � �UU �VV  9��  ��  ��  ��  ��  , WXW l  � ���������  ��  ��  X YZY Z   � �[\����[ E  � �]^] o   � ����� &0 masterstogenerate mastersToGenerate^ m   � �__ �``  1 5\ I   � ���a���� 0 pagegen pageGena bcb m   � �dd �ee  s i n g l ec fgf m   � �hh �ii  F e a t - B l a n k - Rg jkj m   � �ll �mm  1 5 _ F e a t u r e sk n��n m   � �oo �pp  1 5��  ��  ��  ��  Z qrq l  � ���������  ��  ��  r sts Z   � �uv����u E  � �wxw o   � ����� &0 masterstogenerate mastersToGeneratex m   � �yy �zz 
 1 6 - 1 7v l  � �{|}{ I   � ���~���� 0 pagegen pageGen~ � m   � ��� ���  s p r e a d� ��� m   � ��� ���  A r t s - E n t s - S p l i t� ��� m   � ��� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   � ��� ���  1 6��  ��  | ( " Create the weekend Ents/Arts page   } ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  t ��� l  � ���������  ��  ��  � ��� Z   �]������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   �Y�� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ���� m   � ��� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   ���� J   ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ��� m   � �� ���  F r i d a y� ���� m   �� ��� , N o   d a y      w o r k i n g   a h e a d��  � o      ���� 0 p14_days  � ��� l ��������  ��  ��  � ���� Z  Y������ E ��� o  	���� 0 p10_days  � o  	
���� 0 theday theDay� I  ������� 0 pagegen pageGen� ��� m  �� ���  s i n g l e� ��� m  �� ���  F e a t - L e t t e r s - L� ��� m  �� ���  1 0 _ L e t t e r s� ���� m  �� ���  1 0��  ��  � ��� E "%��� o  "#���� 0 p14_days  � o  #$���� 0 theday theDay� ��� I  (9������� 0 pagegen pageGen� ��� m  ),�� ���  s i n g l e� ��� m  ,/�� ���  F e a t - L e t t e r s - L� ��� m  /2�� ���  1 4 _ L e t t e r s� ���� m  25�� ���  1 4��  ��  � ��� = <A��� o  <=���� 0 theday theDay� m  =@�� ���  S a t u r d a y� ���� I  DU������� 0 pagegen pageGen� ��� m  EH�� ���  s p r e a d� ��� m  HK�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  KN�� ���  1 0 - 1 1 _ L e t t e r s�  ��  m  NQ �  1 0��  ��  ��  ��  ��  ��  ��  �  l ^^��������  ��  ��    Z  ^{���� E ^c	
	 o  ^_���� &0 masterstogenerate mastersToGenerate
 m  _b �  A r t s l fw I  fw������ 0 pagegen pageGen  m  gj �  s i n g l e  m  jm �  A r t s - B l a n k - R  m  mp �  1 1 _ A r t s �� m  ps �  1 1��  ��   ( " Create the weekday Arts page (11)    �   D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��   !"! l ||��������  ��  ��  " #��# Z  |�$%����$ E |�&'& o  |}���� &0 masterstogenerate mastersToGenerate' m  }�(( �))  A r t s   s p l i t% I  ����*���� 0 pagegen pageGen* +,+ m  ��-- �..  s p r e a d, /0/ m  ��11 �22   A r t s - B l a n k - S p l i t0 343 m  ��55 �66  1 0 - 1 1 _ A r t s4 7��7 m  ��88 �99  1 0��  ��  ��  ��  ��  � :;: l     ��������  ��  ��  ; <=< l     ��������  ��  ��  = >?> l     ��@A��  @ , & artsGen: Arts-page generation routine   A �BB L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e? CDC i   : =EFE I      ��G���� 0 artsgen artsGenG H��H o      ���� &0 masterstogenerate mastersToGenerate��  ��  F k     =II JKJ Z     LM����L E    NON o     ���� &0 masterstogenerate mastersToGenerateO m    PP �QQ  1 6 - 1 7   ( w e e k e n d )M l   RSTR I    ��U���� 0 pagegen pageGenU VWV m    XX �YY  s p r e a dW Z[Z m    	\\ �]]  A r t s - E n t s - S p l i t[ ^_^ m   	 
`` �aa  1 6 - 1 7 _ E n t s - A r t s_ b��b m   
 cc �dd  1 6��  ��  S ( " Create the weekend Ents/Arts page   T �ee D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  K fgf l   ��������  ��  ��  g hih Z    'jk����j E   lml o    ���� &0 masterstogenerate mastersToGeneratem m    nn �oo  A r t s   ( p 1 1 )k l   #pqrp I    #��s���� 0 pagegen pageGens tut m    vv �ww  s i n g l eu xyx m    zz �{{  A r t s - B l a n k - Ry |}| m    ~~ �  1 1 _ A r t s} ���� m    �� ���  1 1��  ��  q ( " Create the weekday Arts page (11)   r ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  i ��� l  ( (��������  ��  ��  � ���� Z   ( =������� E  ( +��� o   ( )���� &0 masterstogenerate mastersToGenerate� m   ) *�� ���  A r t s   s p l i t� l  . 9���� I   . 9������� 0 pagegen pageGen� ��� m   / 0�� ���  s p r e a d� ��� m   0 1�� ���   A r t s - B l a n k - S p l i t� ��� m   1 2�� ���  1 0 - 1 1 _ A r t s� ���� m   2 5�� ���  1 0��  ��  � + % Creates an Arts split-spread (10-11)   � ��� J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��  D ��� l     �������  ��  �  � ��� l     �~�}�|�~  �}  �|  � ��� l     �{���{  � 0 * sportsGen: Sports-page generation routine   � ��� T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��z� i   > A��� I      �y��x�y 0 	sportsgen 	sportsGen� ��w� o      �v�v &0 masterstogenerate mastersToGenerate�w  �x  � k    ��� ��� Z     ���u�t� E    ��� o     �s�s &0 masterstogenerate mastersToGenerate� m    �� ���  T w o   p a g e s� k    �� ��� I    �r��q�r 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    	�� ���  S p r t - B a c k� ��� m   	 
�� ���  1 6 _ B a c k� ��p� m   
 �� ���  1 6�p  �q  � ��o� I    �n��m�n 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  S p r t - B l a n k - R� ��� m    �� ���  1 5 _ S p o r t� ��l� m    �� ���  1 5�l  �m  �o  �u  �t  � ��� l   �k�j�i�k  �j  �i  � ��� Z    U���h�g� E   !��� o    �f�f &0 masterstogenerate mastersToGenerate� m     �� ���  T h r e e   p a g e s� k   $ Q�� ��� I   $ -�e��d�e 0 pagegen pageGen� ��� m   % &�� ���  s i n g l e� ��� m   & '�� ���  S p r t - B a c k� ��� m   ' (�� ���  1 6 _ B a c k� ��c� m   ( )�� ���  1 6�c  �d  � ��� I   . ?�b��a�b 0 pagegen pageGen� ��� m   / 2�� ���  s i n g l e�    m   2 5 �  S p r t - B l a n k - R  m   5 8 �  1 5 _ S p o r t �` m   8 ;		 �

  1 5�`  �a  � �_ I   @ Q�^�]�^ 0 pagegen pageGen  m   A D �  s i n g l e  m   D G �  S p r t - B l a n k - L  m   G J �  1 4 _ S p o r t �\ m   J M �  1 4�\  �]  �_  �h  �g  �  l  V V�[�Z�Y�[  �Z  �Y    Z   V � !�X�W  E  V ["#" o   V W�V�V &0 masterstogenerate mastersToGenerate# m   W Z$$ �%% , T h r e e   p a g e s   w i t h   s p l i t! k   ^ �&& '(' I   ^ o�U)�T�U 0 pagegen pageGen) *+* m   _ b,, �--  s i n g l e+ ./. m   b e00 �11  S p r t - B a c k/ 232 m   e h44 �55  1 6 _ B a c k3 6�S6 m   h k77 �88  1 6�S  �T  ( 9�R9 I   p ��Q:�P�Q 0 pagegen pageGen: ;<; m   q t== �>>  s p r e a d< ?@? m   t wAA �BB   S p r t - B l a n k - S p l i t@ CDC m   w zEE �FF  1 4 - 1 5 _ S p o r tD G�OG m   z }HH �II  1 4�O  �P  �R  �X  �W   JKJ l  � ��N�M�L�N  �M  �L  K LML Z   � �NO�K�JN E  � �PQP o   � ��I�I &0 masterstogenerate mastersToGenerateQ m   � �RR �SS  F o u r   p a g e sO k   � �TT UVU I   � ��HW�G�H 0 pagegen pageGenW XYX m   � �ZZ �[[  s i n g l eY \]\ m   � �^^ �__  S p r t - B a c k] `a` m   � �bb �cc  2 4 _ B a c ka d�Fd m   � �ee �ff  2 4�F  �G  V ghg I   � ��Ei�D�E 0 pagegen pageGeni jkj m   � �ll �mm  s i n g l ek non m   � �pp �qq  S p r t - B l a n k - Ro rsr m   � �tt �uu  2 3 _ S p o r ts v�Cv m   � �ww �xx  2 3�C  �D  h yzy I   � ��B{�A�B 0 pagegen pageGen{ |}| m   � �~~ �  s i n g l e} ��� m   � ��� ���  S p r t - B l a n k - L� ��� m   � ��� ���  2 2 _ S p o r t� ��@� m   � ��� ���  2 2�@  �A  z ��?� I   � ��>��=�> 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - R a c i n g - R� ��� m   � ��� ���  2 1 _ R a c i n g� ��<� m   � ��� ���  2 1�<  �=  �?  �K  �J  M ��� l  � ��;�:�9�;  �:  �9  � ��� Z   ����8�7� E  � ���� o   � ��6�6 &0 masterstogenerate mastersToGenerate� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� k   ��� ��� I   � ��5��4�5 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��3� m   � ��� ���  2 4�3  �4  � ��� I   ��2��1�2 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���   S p r t - B l a n k - S p l i t� ��� m   � ��� ���  2 2 - 2 3 _ S p o r t� ��0� m   ��� ���  2 2�0  �1  � ��/� I  �.��-�. 0 pagegen pageGen� ��� m  
�� ���  s i n g l e� ��� m  
�� ���  S p r t - R a c i n g - R� ��� m  �� ���  2 1 _ R a c i n g� ��,� m  �� ���  2 1�,  �-  �/  �8  �7  � ��� l �+�*�)�+  �*  �)  � ��� Z  9���(�'� E !��� o  �&�& &0 masterstogenerate mastersToGenerate� m   �� ���  R a c i n g   o n l y� I  $5�%��$�% 0 pagegen pageGen� ��� m  %(�� ���  s i n g l e� ��� m  (+�� ���  S p r t - R a c i n g - R� ��� m  +.�� ���  2 1 _ R a c i n g� ��#� m  .1�� ���  2 1�#  �$  �(  �'  � ��� l ::�"�!� �"  �!  �   � ��� Z  :W����� E :?��� o  :;�� &0 masterstogenerate mastersToGenerate� m  ;>�� ���  E x t r a   l e f t   p a g e� I  BS� �� 0 pagegen pageGen   m  CF �  s i n g l e  m  FI �  S p r t - B l a n k - L 	
	 m  IL �  L _ X X _ S p o r t
 � m  LO �  0 0�  �  �  �  �  l XX����  �  �    Z  Xu�� E X] o  XY�� &0 masterstogenerate mastersToGenerate m  Y\ �   E x t r a   r i g h t   p a g e I  `q��� 0 pagegen pageGen  m  ad �  s i n g l e   m  dg!! �""  S p r t - B l a n k - R  #$# m  gj%% �&&  R _ X X _ S p o r t$ '�' m  jm(( �))  0 0�  �  �  �   *+* l vv����  �  �  + ,�, Z  v�-.��- E v{/0/ o  vw�
�
 &0 masterstogenerate mastersToGenerate0 m  wz11 �22  E x t r a   s p l i t. I  ~��	3��	 0 pagegen pageGen3 454 m  �66 �77  s p r e a d5 898 m  ��:: �;;   S p r t - B l a n k - S p l i t9 <=< m  ��>> �?? " S p l i t _ X X - X X _ S p o r t= @�@ m  ��AA �BB  0 0�  �  �  �  �  �z       �C K UDEFGHIJKLMNOPQRS�  C ������ ������������������������� $0 freshpagesfolder freshPagesFolder�  0 masterdocument masterDocument� 0 	genprompt 	genPrompt� 0 list_position  � 0 
dateprompt 
datePrompt�  "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� 0 pagegen pageGen�� 0 applymaster applyMaster�� "0 changelegaldate changeLegalDate��  0 drawembargobox drawEmbargoBox�� 0 	cleansave 	cleanSave�� 0 customedition customEdition�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 artsgen artsGen�� 0 	sportsgen 	sportsGen
�� .aevtoappnull  �   � ****D �� �����TU���� 0 	genprompt 	genPrompt�� ��V�� V  ���� 0 desk  ��  T 	�������������������� 0 desk  �� 0 	days_list  �� 0 thetitle theTitle�� 0 weekday_pages  �� 0 weekend_pages  �� 0 ahead_pages  �� 0 theday theDay�� 0 
prompttext 
promptText�� &0 masterstogenerate mastersToGenerateU k � � � � � ����� ��� ��������� ����� � � � � � ���#��-7;>FJNRU[fjnrvy������������������������	��"-09=@HLO��p����������������������� 
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
)j+ [Y �a \_ ]%_ ]%a ^%E�O�a _  +���a `ea  E�O�f  )a a lhY hY e�a a +���a `ea  E�O�f  )a a lhY hY 4�a b  +���a `ea  E�O�f  )a a lhY hY hO�a c  )��l+ dY 7�a e  )��l+ fY %�a g  )�k+ hY �a i  )�k+ jY hE ��)����WX���� 0 list_position  �� ��Y�� Y  ������ 0 	this_item  �� 0 	this_list  ��  W �������� 0 	this_item  �� 0 	this_list  �� 0 i  X ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY��F ��F����Z[���� 0 
dateprompt 
datePrompt�� ��\�� \  ������ 0 thetitle theTitle�� 0 	days_list  ��  Z ���������������������������������� 0 thetitle theTitle�� 0 	days_list  �� 0 months_list  �� 0 tomorrow  �� 0 tmday tmDay�� 0 theday theDay�� 0 prdate prDate�� 0 prmonth prMonth�� 0 pryear prYear�� 0 
predictpos 
predictPos�� 0 	actualpos 	actualPos�� 0 shiftpos shiftPos�� 0 predictedday predictedDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear[ 2SW[_cgkosw{~������������������������������������������������������������������ 
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
ttxt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate����������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hOa .a )�a �a * +a ,,�&E�O_ a /  )a a lhY hO)����a *+ 0O)����a *+ 1O�G ��-����]^���� "0 create_pagedate create_pageDate�� ��_�� _  ���������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear��  ] ���������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 sun  �� 0 secondmonth secondMonth�� 0 
secondyear 
secondYear^ ;RTV����y{}��������~������}��� 0 pagedate pageDate
�� 
ldt 
�� 
days
�� 
mnth
� 
TEXT
�~ 
year
�} 
day �� ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OPH �|�{�z`a�y�| "0 create_filedate create_fileDate�{ �xb�x b  �w�v�u�t�w 0 themonth theMonth�v 0 thedate theDate�u 0 theyear theYear�t 0 months_list  �z  ` �s�r�q�p�s 0 themonth theMonth�r 0 thedate theDate�q 0 theyear theYear�p 0 months_list  a �o�n$�m=�l�k�j
�o 
nmbr�n 
�m 0 list_position  
�l 
ctxt�k �j 0 filedate fileDate�y >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E�I �ih�h�gcd�f�i 0 pagegen pageGen�h �ee�e e  �d�c�b�a�d 0 pagetype pageType�c 0 	themaster 	theMaster�b 0 theslug theSlug�a 0 
pagenumber 
pageNumber�g  c �`�_�^�]�` 0 pagetype pageType�_ 0 	themaster 	theMaster�^ 0 theslug theSlug�] 0 
pagenumber 
pageNumberd ��\�[��Z���Y�X�W�V�U�T�S
�\ .aevtodocnull  �    alis�[ 0 applymaster applyMaster�Z  0 drawembargobox drawEmbargoBox
�Y 
bool�X "0 changelegaldate changeLegalDate�W 0 	cleansave 	cleanSave
�V 
pacd
�U 
svop
�T savoyes 
�S .CoReclosnull���     obj �f Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UUJ �R��Q�Pfg�O�R 0 applymaster applyMaster�Q �Nh�N h  �M�L�K�M 0 	themaster 	theMaster�L 0 pagetype pageType�K 0 
pagenumber 
pageNumber�P  f �J�I�H�J 0 	themaster 	theMaster�I 0 pagetype pageType�H 0 
pagenumber 
pageNumberg ,�G��F�E�D��C��B�A�@�?�>�=i�<�;!�:�9+8FO�8�7�6�5�4fp|���������3
�G 
pacd
�F 
mspr
�E 
page
�D 
pmas
�C 
txtf
�B 
dPge
�A .InESovrrobj         obj �@ 0 pagedate pageDate
�? 
pcnt
�> 
mpgs
�= 
cobji  
�< 
pilr
�; 
pnam�:  �9  
�8 
kocl
�7 
sprd
�6 
prdt�5 
�4 .corecrel****      � null
�3 
TEXT�O���*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUUK �2�1�0jk�/�2 "0 changelegaldate changeLegalDate�1 �.l�. l  �-�- 0 	themaster 	theMaster�0  j �,�, 0 	themaster 	theMasterk d�+(�*�)2�(�'�&�%@�$GR`
�+ 
pacd
�* 
mspr
�) 
txtf
�( 
dPge
�' 
page
�& .InESovrrobj         obj �% 0 pagedate pageDate
�$ 
pcnt�/ X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUUL �#q�"�!mn� �#  0 drawembargobox drawEmbargoBox�" �o� o  �� 0 pagetype pageType�!  m ���� 0 pagetype pageType� 0 pagenum pageNum� 0 ebox eBoxn ���������������������
� 
docu
� 
page
� 
kocl
� 
txtf
� 
prdt
� 
gbnd� 
� 
pcnt
� .corecrel****      � null
� 
ObSt
� 
aobs
� 
plck�  \� X*�k/ P��  kE�Y ��  lE�Y hO*�/ *���������v���� E�UO*a a /�a ,FOe�a ,FUUM ����pq�� 0 	cleansave 	cleanSave� �
r�
 r  �	��	 0 
pagenumber 
pageNumber� 0 theslug theSlug�  p ��� 0 
pagenumber 
pageNumber� 0 theslug theSlugq 	0�������		�	� 	+��	-��
� 
pacd
� 
layr
� 
plck
� 
pacl
� 
zero
�  
kfil�� 0 filedate fileDate
�� .CoResavedocu        obj � `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UUN ��	=����st���� 0 customedition customEdition��  ��  s ������������������������������������ 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart�� 0 theend theEnd�� 0 x  �� 0 searchresult searchResult�� 0 
pagenumber 
pageNumber�� 0 hmaster hMaster�� 0 listpos listPos�� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 theslug theSlug�� 0 message2753  t �	^	b	f	j	n	r	v	z	~	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	���	�	�



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
�  $'7;?CGKOSW[_cgkosw{����������������������>�����������������������������0��=��K�������������������u����"��%������0������ %�� �� 
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
bool�� 0 pagegen pageGen��  u ������
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
a �E�Y hO)����a �+ �OPW lX � �a �_ �%_ �%�a �,%_ �%_ �%a �%_ �%_ �%a �%E^ O] a �a �a �lva �a �a � �O_ �a �,a �  )a �a �lhY hOPY h[OY��OPUUO ��I����vw���� 0 newsgen newsGen�� ��x�� x  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  v ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  w AU_gkor����y��������������������������"/37:EIMPV\`dgqvz~�������� �� 0 pagegen pageGen��Y�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y hP �������yz���� 0 featsgen featsGen�� ��{�� {  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  y ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  z L��������������������"&)19=ADJNRU_dhloy�����������������������(-158�� �� 0 pagegen pageGen�����  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . ra /a 0lvE�Oa 1a 2a 3a 4�vE�O�� *a 5a 6a 7a 8�+ Y 9�� *a 9a :a ;a <�+ Y �a =  *a >a ?a @a A�+ Y hY hO�a B *a Ca Da Ea F�+ Y hO�a G *a Ha Ia Ja K�+ Y hQ ��F����|}���� 0 artsgen artsGen�� ��~�� ~  ���� &0 masterstogenerate mastersToGenerate��  | ���� &0 masterstogenerate mastersToGenerate} PX\`c����nvz~�������� �� 0 pagegen pageGen�� >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y hR ������������ 0 	sportsgen 	sportsGen�� ����� �  ���� &0 masterstogenerate mastersToGenerate��   ���� &0 masterstogenerate mastersToGenerate� S�������������������	$,047=AEHRZ^belptw~��������������������������!%(16:>A�� �� 0 pagegen pageGen����� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y hS �����������
�� .aevtoappnull  �   � ****� k     5��  ^��  k��  u��  ����  ��  ��  �  � 
 i������ r���� �����
�� elnteNvr
�� 
pScr
�� 
UIAc�� 0 	genprompt 	genPrompt
�� elnteInA
�� .miscactvnull��� ��� obj 
�� .aevtodocnull  �    alis�� 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U ascr  ��ޭ