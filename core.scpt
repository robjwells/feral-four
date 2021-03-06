FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			2012-12-15     �   0 	 C r e a t e d   o n 	 	 	 2 0 1 2 - 1 2 - 1 5      l     ��  ��      	Last updated			2015-03-11     �   4 	 L a s t   u p d a t e d 	 	 	 2 0 1 5 - 0 3 - 1 1      l     ��  ��     	Version:			1.87     �     	 V e r s i o n : 	 	 	 1 . 8 7     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [   Running code --    \ � ] ]     R u n n i n g   c o d e   - - Z  ^ _ ^ l     ` a b ` O     c d c r     e f e m    ��
�� elnteNvr f n       g h g 1    
��
�� 
UIAc h 1    ��
�� 
pScr d m      i i                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��   a $  Suppresses dialogs and alerts    b � j j <   S u p p r e s s e s   d i a l o g s   a n d   a l e r t s _  k l k l    m n o m I    �� p���� 0 	genprompt 	genPrompt p  q�� q m     r r � s s  ��  ��   n h b Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call    o � t t �   D e s k   n a m e   ( N e w s ,   F e a t u r e s ,   S p o r t ,   A r t s   o r   C u s t o m   e d i t i o n )   g o e s   i n   t h e   q u o t e s   i n   t h i s   h a n d l e r   c a l l l  u v u l     w���� w O     x y x r     z { z m    ��
�� elnteInA { n       | } | 1    ��
�� 
UIAc } 1    ��
�� 
pScr y m     ~ ~                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��   v   �  l  ! 5 ����� � O   ! 5 � � � k   % 4 � �  � � � I  % *������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  + 4�� ���
�� .aevtodocnull  �    alis � o   + 0���� $0 freshpagesfolder freshPagesFolder��  ��   � m   ! " � ��                                                                                  MACS  alis    t  Macintosh HD               ĬplH+   �K$
Finder.app                                                      �r��|��        ����  	                CoreServices    Ĭb\      �|��     �K$ �K! �K   6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i    	 � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    � � �  � � � Z     2 � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l   . � � � � k    . � �  � � � r     � � � c     � � � l    ����� � I   �� � �
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
 S p o r t l  x �%&'% Z   x �()*��( =  x }+,+ o   x y���� 0 desk  , m   y |-- �..  N e w s) k   � �// 010 r   � �232 J   � �44 565 m   � �77 �88  N e w s   p a g e s6 9:9 m   � �;; �<<  T V: =��= m   � �>> �??  L e t t e r s��  3 o      ���� 0 weekday_pages  1 @��@ r   � �ABA J   � �CC DED m   � �FF �GG  N e w s   p a g e sE HIH m   � �JJ �KK  T VI LML m   � �NN �OO  L e t t e r sM PQP m   � �RR �SS  S t r u g g l eQ TUT m   � �VV �WW  S t r u g g l e   s p l i tU X��X m   � �YY �ZZ  R e d   L i s t��  B o      ���� 0 weekend_pages  ��  * [\[ =  � �]^] o   � ����� 0 desk  ^ m   � �__ �`` 
 S p o r t\ a��a k   � �bb cdc r   � �efe J   � �gg hih m   � �jj �kk  T w o   p a g e si lml m   � �nn �oo  T h r e e   p a g e sm pqp m   � �rr �ss , T h r e e   p a g e s   w i t h   s p l i tq tut m   � �vv �ww  E x t r a   l e f t   p a g eu xyx m   � �zz �{{   E x t r a   r i g h t   p a g ey |��| m   � �}} �~~  E x t r a   s p l i t��  f o      ���� 0 weekday_pages  d �� r   � ���� J   � ��� ��� m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  � o      ���� 0 weekend_pages  ��  ��  ��  & @ : This if block sets the page options presented to the user   ' ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r ��� G   � ���� =  � ���� o   � ����� 0 desk  � m   � ��� ���  F e a t u r e s� =  � ���� o   � ����� 0 desk  � m   � ��� ���  A r t s� ��� k   ���� ��� l  ����� r   ���� m   � �� ��� , N o   d a y      w o r k i n g   a h e a d� l     ��~�}� n      ���  ;  � o   �|�| 0 	days_list  �~  �}  � > 8 Adds an extra day option that news and sport don't need   � ��� p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� ��{� Z  �����z� = 	��� o  �y�y 0 desk  � m  �� ���  F e a t u r e s� k  n�� ��� r  $��� J  "�� ��� m  �� ���  S p r e a d� ��� m  �� ���  1 0� ��� m  �� ���  1 3� ��� m  �� ���  L e t t e r s� ��� m  �� ���  A r t s� ��x� m  �� ���  A r t s   s p l i t�x  � o      �w�w 0 weekday_pages  � ��� r  %C��� J  %A�� ��� m  %(�� ���  S p r e a d� ��� m  (+�� ���  9� ��� m  +.�� ���  1 0 - 1 1      s p l i t� ��� m  .1�� ���  1 0 - 1 1      s i n g l e s� ��� m  14�� ���  1 5� ��� m  47�� ��� 
 1 6 - 1 7� ��� m  7:�� ���  L e t t e r s� ��v� m  :=�� ���  E n t s�v  � o      �u�u 0 weekend_pages  � ��t� r  Dn   J  Dl  m  DG �  S p r e a d  m  GJ		 �

  9  m  JM �  1 0  m  MP �  1 3  m  PS � ( N e w s   r e v i e w s      s p l i t  m  SV � , N e w s   r e v i e w s      s i n g l e s  m  VY �  1 5   m  Y\!! �"" 
 1 6 - 1 7  #$# m  \_%% �&&  L e t t e r s$ '(' m  _b)) �**  A r t s( +,+ m  be-- �..  A r t s   s p l i t, /�s/ m  eh00 �11  E n t s�s   o      �r�r 0 ahead_pages  �t  � 232 = qv454 o  qr�q�q 0 desk  5 m  ru66 �77  A r t s3 8�p8 k  y�99 :;: r  y�<=< J  y�>> ?@? m  y|AA �BB  A r t s   ( p 1 1 )@ C�oC m  |DD �EE  A r t s   s p l i t�o  = o      �n�n 0 weekday_pages  ; FGF r  ��HIH J  ��JJ KLK m  ��MM �NN  1 6 - 1 7   ( w e e k e n d )L OPO m  ��QQ �RR  A r t s   s p l i tP STS m  ��UU �VV  A r t s   ( p 1 1 )T W�mW m  ��XX �YY  E n t s�m  I o      �l�l 0 weekend_pages  G Z�kZ r  ��[\[ J  ��]] ^_^ m  ��`` �aa  A r t s   ( p 1 1 )_ bcb m  ��dd �ee  A r t s   s p l i tc fgf m  ��hh �ii  1 6 - 1 7   ( w e e k e n d )g j�jj m  ��kk �ll  E n t s�j  \ o      �i�i 0 ahead_pages  �k  �p  �z  �{  �  ��   mnm l ���h�g�f�h  �g  �f  n opo l ���eqr�e  q [ U Prompt the user to enter the date. Returns theDay for use in page-picker block below   r �ss �   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e .   R e t u r n s   t h e D a y   f o r   u s e   i n   p a g e - p i c k e r   b l o c k   b e l o wp tut r  ��vwv n ��xyx I  ���dz�c�d 0 
dateprompt 
datePromptz {|{ o  ���b�b 0 thetitle theTitle| }�a} o  ���`�` 0 	days_list  �a  �c  y  f  ��w o      �_�_ 0 theday theDayu ~~ l ���^�]�\�^  �]  �\   ��� l ���[���[  �   Get the pages to create   � ��� 0   G e t   t h e   p a g e s   t o   c r e a t e� ��Z� Z  �����Y�� = ����� l ����X�W� o  ���V�V 0 desk  �X  �W  � m  ���� ���  C u s t o m   e d i t i o n� l ������ n ����� I  ���U�T�S�U 0 customedition customEdition�T  �S  �  f  ��� U O The customEdition function itself gets the pages to generate from TextWrangler   � ��� �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r�Y  � k  ���� ��� r  ����� l ����R�Q� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���P
�P 
ret � o  ���O
�O 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�R  �Q  � o      �N�N 0 
prompttext 
promptText� ��� Z  �n����M� = ����� o  ���L�L 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ��� ��� r  ����� l ����K�J� I ���I��
�I .gtqpchltns    @   @ ns  � o  ���H�H 0 ahead_pages  � �G��
�G 
prmp� o  ���F�F 0 
prompttext 
promptText� �E��
�E 
appr� o  ���D�D 0 thetitle theTitle� �C��B
�C 
mlsl� m  ���A
�A boovtrue�B  �K  �J  � o      �@�@ &0 masterstogenerate mastersToGenerate� ��?� Z ����>�=� = ����� 1  ���<
�< 
rslt� m  ���;
�; boovfals� R  ��:�9�
�: .ascrerr ****      � ****�9  � �8��7
�8 
errn� m  ��6�6���7  �>  �=  �?  � ��� > ��� o  �5�5 0 theday theDay� m  �� ���  S a t u r d a y� ��� k  9�� ��� r  $��� l "��4�3� I "�2��
�2 .gtqpchltns    @   @ ns  � o  �1�1 0 weekday_pages  � �0��
�0 
prmp� o  �/�/ 0 
prompttext 
promptText� �.��
�. 
appr� o  �-�- 0 thetitle theTitle� �,��+
�, 
mlsl� m  �*
�* boovtrue�+  �4  �3  � o      �)�) &0 masterstogenerate mastersToGenerate� ��(� Z %9���'�&� = %(��� 1  %&�%
�% 
rslt� m  &'�$
�$ boovfals� R  +5�#�"�
�# .ascrerr ****      � ****�"  � �!�� 
�! 
errn� m  /2�����   �'  �&  �(  � ��� = <A��� o  <=�� 0 theday theDay� m  =@�� ���  S a t u r d a y� ��� k  Dj�� ��� r  DU��� l DS���� I DS���
� .gtqpchltns    @   @ ns  � o  DE�� 0 weekend_pages  � ���
� 
prmp� o  FG�� 0 
prompttext 
promptText� ���
� 
appr� o  HI�� 0 thetitle theTitle� ���
� 
mlsl� m  LM�
� boovtrue�  �  �  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z Vj����� = VY��� 1  VW�
� 
rslt� m  WX�
� boovfals� R  \f��
�
� .ascrerr ****      � ****�
  � �	��
�	 
errn� m  `c�����  �  �  �  �  �M  � ��� l oo����  �  �  � ��� Z  o������ = ot��� o  op�� 0 desk  � m  ps   �  N e w s� l w~ n w~ I  x~� ���  0 newsgen newsGen 	 o  xy���� &0 masterstogenerate mastersToGenerate	 
��
 o  yz���� 0 theday theDay��  ��    f  wx S M theDay is passed to distinguish between, for example, Saturday & weekday TV     � �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  �  = �� o  ������ 0 desk   m  �� �  F e a t u r e s  n �� I  �������� 0 featsgen featsGen  o  ������ &0 masterstogenerate mastersToGenerate �� o  ������ 0 theday theDay��  ��    f  ��  = �� o  ������ 0 desk   m  �� � 
 S p o r t  !  l ��"#$" n ��%&% I  ����'���� 0 	sportsgen 	sportsGen' (��( o  ������ &0 masterstogenerate mastersToGenerate��  ��  &  f  ��#   No day checks   $ �))    N o   d a y   c h e c k s! *+* = ��,-, o  ������ 0 desk  - m  ��.. �//  A r t s+ 0��0 l ��1231 n ��454 I  ����6���� 0 artsgen artsGen6 7��7 o  ������ &0 masterstogenerate mastersToGenerate��  ��  5  f  ��2   No day checks   3 �88    N o   d a y   c h e c k s��  �  �  �Z   � 9:9 l     ��������  ��  ��  : ;<; l     ��������  ��  ��  < =>= l     ��?@��  ? I C list_position: Returns theItem's position in theList as an integer   @ �AA �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r> BCB i   
 DED I      ��F���� 0 list_position  F GHG o      ���� 0 	this_item  H I��I o      ���� 0 	this_list  ��  ��  E Y     "J��KL��J Z   MN����M =   OPO n    QRQ 4    ��S
�� 
cobjS o    ���� 0 i  R o    ���� 0 	this_list  P o    ���� 0 	this_item  N L    TT o    ���� 0 i  ��  ��  �� 0 i  K m    ���� L I   	��U��
�� .corecnte****       ****U o    ���� 0 	this_list  ��  ��  C VWV l     ��������  ��  ��  W XYX l     ��������  ��  ��  Y Z[Z l     ��\]��  \ ( " Prompt the user to enter the date   ] �^^ D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e[ _`_ i    aba I      ��c���� 0 
dateprompt 
datePromptc ded o      ���� 0 thetitle theTitlee f��f o      ���� 0 	days_list  ��  ��  b k    gg hih r     jkj J     ll mnm m     oo �pp  J a n u a r yn qrq m    ss �tt  F e b r u a r yr uvu m    ww �xx 
 M a r c hv yzy m    {{ �|| 
 A p r i lz }~} m     ���  M a y~ ��� m    �� ���  J u n e� ��� m    �� ���  J u l y� ��� m    �� ���  A u g u s t� ��� m    	�� ���  S e p t e m b e r� ��� m   	 
�� ���  O c t o b e r� ��� m   
 �� ���  N o v e m b e r� ���� m    �� ���  D e c e m b e r��  k o      ���� 0 months_list  i ��� l   ��������  ��  ��  � ��� l   ������  � > 8 Get tomorrow's weekday as a seed default for the prompt   � ��� p   G e t   t o m o r r o w ' s   w e e k d a y   a s   a   s e e d   d e f a u l t   f o r   t h e   p r o m p t� ��� Z    >������ >   ��� c    ��� l   ������ l   ������ n    ��� m    ��
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
errn� m   q t�x�x���y  �  �~  � 6 0 Choosing "Cancel" in the dialog ends the script   � ��� `   C h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� l  | |�w�v�u�w  �v  �u  � ��� l  | |�t� �t  � 2 , Quick return if no date crunching is needed     � X   Q u i c k   r e t u r n   i f   n o   d a t e   c r u n c h i n g   i s   n e e d e d�  Z   | ��s�r =  | � o   | }�q�q 0 theday theDay m   } � �		 , N o   d a y      w o r k i n g   a h e a d k   � �

  r   � � m   � � � * A   d a t e   n e e d s   e n t e r i n g o      �p�p 0 pagedate pageDate  r   � � m   � � � 
 A h e a d o      �o�o 0 filedate fileDate �n l  � � L   � � o   � ��m�m 0 theday theDay $  For use in page-picker prompt    � <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t�n  �s  �r    l  � ��l�k�j�l  �k  �j     l  � ��i!"�i  !   Predicted date crunching   " �## 2   P r e d i c t e d   d a t e   c r u n c h i n g  $%$ Z   �.&'(�h& =  � �)*) o   � ��g�g 0 theday theDay* l  � �+�f�e+ c   � �,-, o   � ��d�d 0 tmday tmDay- m   � ��c
�c 
TEXT�f  �e  ' l  � �./0. k   � �11 232 l  � ��b45�b  4 ) # Set defaults to tomorrow's details   5 �66 F   S e t   d e f a u l t s   t o   t o m o r r o w ' s   d e t a i l s3 787 r   � �9:9 n  � �;<; 1   � ��a
�a 
day < o   � ��`�` 0 tomorrow  : o      �_�_ 0 prdate prDate8 =>= r   � �?@? J   � �AA B�^B l  � �C�]�\C c   � �DED n  � �FGF m   � ��[
�[ 
mnthG o   � ��Z�Z 0 tomorrow  E m   � ��Y
�Y 
TEXT�]  �\  �^  @ o      �X�X 0 prmonth prMonth> H�WH r   � �IJI n  � �KLK 1   � ��V
�V 
yearL o   � ��U�U 0 tomorrow  J o      �T�T 0 pryear prYear�W  /   Chosen day is tomorrow   0 �MM .   C h o s e n   d a y   i s   t o m o r r o w( NON >  � �PQP o   � ��S�S 0 theday theDayQ l  � �R�R�QR c   � �STS o   � ��P�P 0 tmday tmDayT m   � ��O
�O 
TEXT�R  �Q  O U�NU l  �*VWXV k   �*YY Z[Z l  � ��M\]�M  \ E ? Determine offset from tomorrow and create a date object for it   ] �^^ ~   D e t e r m i n e   o f f s e t   f r o m   t o m o r r o w   a n d   c r e a t e   a   d a t e   o b j e c t   f o r   i t[ _`_ r   � �aba n  � �cdc I   � ��Le�K�L 0 list_position  e fgf l  � �h�J�Ih c   � �iji o   � ��H�H 0 tmday tmDayj m   � ��G
�G 
TEXT�J  �I  g k�Fk o   � ��E�E 0 	days_list  �F  �K  d  f   � �b o      �D�D 0 
predictpos 
predictPos` lml r   � �non n  � �pqp I   � ��Cr�B�C 0 list_position  r sts o   � ��A�A 0 theday theDayt u�@u o   � ��?�? 0 	days_list  �@  �B  q  f   � �o o      �>�> 0 	actualpos 	actualPosm vwv r   � �xyx \   � �z{z o   � ��=�= 0 	actualpos 	actualPos{ o   � ��<�< 0 
predictpos 
predictPosy o      �;�; 0 shiftpos shiftPosw |}| Z   �~��:~ ?  � ���� o   � ��9�9 0 shiftpos shiftPos� m   � ��8�8   l  � ����� r   � ���� [   � ���� o   � ��7�7 0 tomorrow  � l  � ���6�5� ]   � ���� o   � ��4�4 0 shiftpos shiftPos� 1   � ��3
�3 
days�6  �5  � o      �2�2 0 predictedday predictedDay� "  Another day in current week   � ��� 8   A n o t h e r   d a y   i n   c u r r e n t   w e e k� ��� A  � ���� o   � ��1�1 0 shiftpos shiftPos� m   � ��0�0  � ��/� l  �
���� r   �
��� [   ���� o   � ��.�. 0 tomorrow  � l  ���-�,� ]   ���� l  ���+�*� [   ���� m   ��)�) � o  �(�( 0 shiftpos shiftPos�+  �*  � 1  �'
�' 
days�-  �,  � o      �&�& 0 predictedday predictedDay�   Implies next week   � ��� $   I m p l i e s   n e x t   w e e k�/  �:  } ��� l �%�$�#�%  �$  �#  � ��� l �"���"  � - ' Set defaults with chosen day's details   � ��� N   S e t   d e f a u l t s   w i t h   c h o s e n   d a y ' s   d e t a i l s� ��� r  ��� n ��� 1  �!
�! 
day � o  � �  0 predictedday predictedDay� o      �� 0 prdate prDate� ��� r  "��� J   �� ��� l ���� c  ��� n ��� m  �
� 
mnth� o  �� 0 predictedday predictedDay� m  �
� 
TEXT�  �  �  � o      �� 0 prmonth prMonth� ��� r  #*��� n #(��� 1  $(�
� 
year� o  #$�� 0 predictedday predictedDay� o      �� 0 pryear prYear�  W !  Chosen day is not tomorrow   X ��� 6   C h o s e n   d a y   i s   n o t   t o m o r r o w�N  �h  % ��� l //����  �  �  � ��� l //����  � &   Prompt for month, date and year   � ��� @   P r o m p t   f o r   m o n t h ,   d a t e   a n d   y e a r� ��� r  /H��� c  /F��� l /D���� I /D���
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
errn� m  ����������  ��  ��  � ��� Z  ��������� l �������� E  ��   o  ������ 0 thedate theDate m  �� �  -��  ��  � r  �� n  �� 7����	
�� 
ctxt m  ������ 	 l ��
����
 \  �� l ������ l ������ I ������
�� .sysooffslong    ��� null��   ��
�� 
psof m  �� �  - ����
�� 
psin o  ������ 0 thedate theDate��  ��  ��  ��  ��   m  ������ ��  ��   o  ������ 0 thedate theDate o      ���� 0 thedate theDate��  ��  �  r  �� c  �� l ������ n  �� 1  ����
�� 
ttxt l ������ I ���� 
�� .sysodlogaskr        TEXT m  ��!! �"" * P l e a s e   t y p e   t h e   y e a r :  ��#$
�� 
dtxt# o  ������ 0 pryear prYear$ ��%��
�� 
appr% o  ������ 0 thetitle theTitle��  ��  ��  ��  ��   m  ����
�� 
TEXT o      ���� 0 theyear theYear &'& Z ��()����( = ��*+* 1  ����
�� 
rslt+ m  ��,, �-- 
 f a l s e) R  ������.
�� .ascrerr ****      � ****��  . ��/��
�� 
errn/ m  ����������  ��  ��  ' 010 l ����������  ��  ��  1 232 l ����45��  4 . ( Pass date details to creation functions   5 �66 P   P a s s   d a t e   d e t a i l s   t o   c r e a t i o n   f u n c t i o n s3 787 n �9:9 I  ���;���� "0 create_pagedate create_pageDate; <=< o  ������ 0 theday theDay= >?> o  ������ 0 themonth theMonth? @A@ o  ������ 0 thedate theDateA B��B o  ������ 0 theyear theYear��  ��  :  f  ��8 CDC n EFE I  ��G���� "0 create_filedate create_fileDateG HIH o  ���� 0 themonth theMonthI JKJ o  ���� 0 thedate theDateK LML o  ���� 0 theyear theYearM N��N o  ���� 0 months_list  ��  ��  F  f  D OPO l ��������  ��  ��  P Q��Q l RSTR L  UU o  ���� 0 theday theDayS $  For use in page-picker prompt   T �VV <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t��  ` WXW l     ��������  ��  ��  X YZY l     ��������  ��  ��  Z [\[ l     ��]^��  ] 2 , Assemble date for use on the inDesign pages   ^ �__ X   A s s e m b l e   d a t e   f o r   u s e   o n   t h e   i n D e s i g n   p a g e s\ `a` i    bcb I      ��d���� "0 create_pagedate create_pageDated efe o      ���� 0 theday theDayf ghg o      ���� 0 themonth theMonthh iji o      ���� 0 thedate theDatej k��k o      ���� 0 theyear theYear��  ��  c Z     �lm��nl >    opo o     ���� 0 theday theDayp m    qq �rr  S a t u r d a ym l   stus k    vv wxw r    yzy l   {����{ b    |}| b    ~~ b    ��� b    ��� b    ��� b    	��� o    ���� 0 theday theDay� m    �� ���   � o   	 
���� 0 themonth theMonth� m    �� ���   � o    ���� 0 thedate theDate m    �� ���   } o    ���� 0 theyear theYear��  ��  z o      ���� 0 pagedate pageDatex ���� l   ��������  ��  ��  ��  t   Weekday pageDate   u ��� "   W e e k d a y   p a g e D a t e��  n l   ����� k    ��� ��� l   ������  � &   Create a date object for Sunday   � ��� @   C r e a t e   a   d a t e   o b j e c t   f o r   S u n d a y� ��� r    0��� l   .������ [    .��� l   *������ 4    *���
�� 
ldt � l   )������ b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� o    ���� 0 theday theDay� m    �� ���  ,  � o     ���� 0 thedate theDate� m   ! "�� ���   � o   # $�� 0 themonth theMonth� m   % &�� ���   � o   ' (�~�~ 0 theyear theYear��  ��  ��  ��  � l  * -��}�|� ]   * -��� m   * +�{�{ � 1   + ,�z
�z 
days�}  �|  ��  ��  � o      �y�y 0 sun  � ��� l  1 1�x�w�v�x  �w  �v  � ��� l  1 1�u���u  � 2 , Check if the weekend spans a month boundary   � ��� X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r y� ��� Z   1 J���t�� >  1 8��� l  1 6��s�r� c   1 6��� n  1 4��� m   2 4�q
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
TEXT�_  �^  � o   P Q�Z�Z 0 theyear theYear� k   U ^�� ��� l  U U�Y���Y  � &   Sunday year with leading hyphen   � ��� @   S u n d a y   y e a r   w i t h   l e a d i n g   h y p h e n� ��X� r   U ^��� l  U \��W�V� b   U \��� m   U V   �  -� l  V [�U�T c   V [ n  V Y 1   W Y�S
�S 
year o   V W�R�R 0 sun   m   Y Z�Q
�Q 
TEXT�U  �T  �W  �V  � o      �P�P 0 
secondyear 
secondYear�X  �`  � r   a f m   a d		 �

   o      �O�O 0 
secondyear 
secondYear�  l  g g�N�M�L�N  �M  �L    r   g � l  g ��K�J b   g � b   g � b   g � b   g � b   g x b   g v b   g r b   g p !  b   g l"#" m   g j$$ �%%   S a t u r d a y / S u n d a y  # o   j k�I�I 0 themonth theMonth! m   l o&& �''    o   p q�H�H 0 thedate theDate m   r u(( �))  - o   v w�G�G 0 secondmonth secondMonth l  x *�F�E* c   x +,+ n  x }-.- 1   y }�D
�D 
day . o   x y�C�C 0 sun  , m   } ~�B
�B 
TEXT�F  �E   m   � �// �00    o   � ��A�A 0 theyear theYear o   � ��@�@ 0 
secondyear 
secondYear�K  �J   o      �?�? 0 pagedate pageDate 1�>1 l  � ��=23�=  2 Z T Empty secondMonth/Year strings (set above) mean this can be used for every Saturday   3 �44 �   E m p t y   s e c o n d M o n t h / Y e a r   s t r i n g s   ( s e t   a b o v e )   m e a n   t h i s   c a n   b e   u s e d   f o r   e v e r y   S a t u r d a y�>  �   Saturday/Sunday pageDate   � �55 2   S a t u r d a y / S u n d a y   p a g e D a t ea 676 l     �<�;�:�<  �;  �:  7 898 l     �9�8�7�9  �8  �7  9 :;: l     �6<=�6  < . ( Assemble date for use in the file names   = �>> P   A s s e m b l e   d a t e   f o r   u s e   i n   t h e   f i l e   n a m e s; ?@? i    ABA I      �5C�4�5 "0 create_filedate create_fileDateC DED o      �3�3 0 themonth theMonthE FGF o      �2�2 0 thedate theDateG HIH o      �1�1 0 theyear theYearI J�0J o      �/�/ 0 months_list  �0  �4  B k     =KK LML Z    NO�.�-N A    PQP l    R�,�+R c     STS o     �*�* 0 thedate theDateT m    �)
�) 
nmbr�,  �+  Q m    �(�( 
O r    UVU l   W�'�&W b    XYX m    	ZZ �[[  0Y o   	 
�%�% 0 thedate theDate�'  �&  V o      �$�$ 0 thedate theDate�.  �-  M \]\ l   �#�"�!�#  �"  �!  ] ^_^ r    `a` n   bcb I    � d��  0 list_position  d efe o    �� 0 themonth theMonthf g�g o    �� 0 months_list  �  �  c  f    a o      �� 0 themonth theMonth_ hih Z   +jk��j A   lml o    �� 0 themonth theMonthm m    �� 
k r   " 'non l  " %p��p b   " %qrq m   " #ss �tt  0r o   # $�� 0 themonth theMonth�  �  o o      �� 0 themonth theMonth�  �  i uvu l  , ,����  �  �  v w�w l  , =xyzx r   , ={|{ l  , ;}��} b   , ;~~ b   , /��� o   , -�� 0 thedate theDate� o   - .�� 0 themonth theMonth l  / :��
�	� n   / :��� 7 0 :���
� 
ctxt� m   4 6�� � m   7 9�� � o   / 0�� 0 theyear theYear�
  �	  �  �  | o      �� 0 filedate fileDatey ? 9 Combines the date, month and last two digits of the year   z ��� r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�  @ ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ��� l     ������  � Y S pageGen: Opens the master file and calls functions to construct the requested page   � ��� �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g e� ��� l     ������  � ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   � ��� �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e r� ��� l     ������  � @ : The page number is that of the left-hand page for spreads   � ��� t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s� ��� i    ��� I      ������� 0 pagegen pageGen� ��� o      ���� 0 pagetype pageType� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 theslug theSlug� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O     ?��� k    >�� ��� I   �����
�� .aevtodocnull  �    alis� o    	����  0 masterdocument masterDocument��  � ��� n   ��� I    ������� 0 applymaster applyMaster� ��� o    ���� 0 	themaster 	theMaster� ��� o    ���� 0 pagetype pageType� ���� o    ���� 0 
pagenumber 
pageNumber��  ��  �  f    � ��� l   ��������  ��  ��  � ��� Z    '������� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ��� 
 N e w s -� l   #���� n   #��� I    #�������  0 drawembargobox drawEmbargoBox� ���� o    ���� 0 pagetype pageType��  ��  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *��  ��  � ��� l  ( (��������  ��  ��  � ��� n  ( /��� I   ) /������� 0 	cleansave 	cleanSave� ��� o   ) *���� 0 
pagenumber 
pageNumber� ���� o   * +���� 0 theslug theSlug��  ��  �  f   ( )� ���� O  0 >��� I  6 =�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m   8 9��
�� savoyes ��  � l  0 3������ 1   0 3��
�� 
pacd��  ��  ��  � m     ��                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    !��� I      ������� 0 applymaster applyMaster� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 pagetype pageType� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O    ���� O   ���� Z   
������� =  
 ��� o   
 ���� 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    �� 
�� 
mspr  o    ���� 0 	themaster 	theMaster� n       1    ��
�� 
pmas 4    ��
�� 
page m    ���� � 3 - Applies a master to the existing single page   � � Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� �� Z    ����� H      E    	
	 o    ���� 0 	themaster 	theMaster
 m     �  X - B l a n k l  # � k   # �  I  # 3��
�� .InESovrrobj         obj  n   # * 4   ' *��
�� 
txtf m   ( ) �  E d i t i o n   d a t e 4   # '��
�� 
mspr o   % &���� 0 	themaster 	theMaster ����
�� 
dPge 4   + /��
�� 
page m   - .���� ��    l  4 < ! r   4 <"#" o   4 5���� 0 pagedate pageDate# l     $����$ n      %&% 1   9 ;��
�� 
pcnt& 4   5 9��'
�� 
txtf' m   7 8(( �))  E d i t i o n   d a t e��  ��      Sets the date   ! �**    S e t s   t h e   d a t e +,+ Q   = m-.��- l  @ d/01/ I  @ d��23
�� .InESovrrobj         obj 2 l  @ [4����4 6  @ [565 n   @ H787 2   F H��
�� 
cobj8 n   @ F9:9 1   D F��
�� 
mpgs: 4   @ D��;
�� 
page; m   B C���� 6 =  K Z<=< n  L T>?> 1   P T��
�� 
pnam? 1   L P��
�� 
pilr= m   U Y@@ �AA  W o r k��  ��  3 ��B��
�� 
dPgeB 4   \ `��C
�� 
pageC m   ^ _���� ��  0 o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items   1 �DD �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s. R      ������
�� .ascrerr ****      � ****��  ��  ��  , E��E Z   n �FG����F >  n sHIH o   n o���� 0 
pagenumber 
pageNumberI m   o rJJ �KK  G l  v �LMNL k   v �OO PQP I  v ���RS
�� .InESovrrobj         obj R n   v TUT 4   z ��V
�� 
txtfV m   { ~WW �XX  P a g e   n u m b e rU 4   v z��Y
�� 
msprY o   x y���� 0 	themaster 	theMasterS ��Z��
�� 
dPgeZ 4   � ���[
�� 
page[ m   � ����� ��  Q \��\ r   � �]^] o   � ����� 0 
pagenumber 
pageNumber^ l     _����_ n      `a` 1   � ���
�� 
pcnta n   � �bcb 4   � ���d
�� 
txtfd m   � �ee �ff  P a g e   n u m b e rc 4   � ���g
�� 
pageg m   � ����� ��  ��  ��  M G A Mostly to skip the front, which doesn't have a page number frame   N �hh �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��   6 0 The X-Blanks have no page number or date frames    �ii `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s��  ��  ��  � jkj =  � �lml o   � ����� 0 pagetype pageTypem m   � �nn �oo  s p r e a dk p��p k   ��qq rsr l  � �tuvt I  � �����w
�� .corecrel****      � null��  w ��xy
�� 
koclx m   � ���
�� 
sprdy �z�~
� 
prdtz K   � �{{ �}|�|
�} 
pmas| 4   � ��{}
�{ 
mspr} o   � ��z�z 0 	themaster 	theMaster�|  �~  u G A Creates a two-page spread at pages 2 & 3 with the master applied   v �~~ �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e ds �y Z   �����x�w� H   � ��� E   � ���� o   � ��v�v 0 	themaster 	theMaster� m   � ��� ���  X - B l a n k� k   ���� ��� I  � ��u��
�u .InESovrrobj         obj � n   � ���� 4   � ��t�
�t 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ��s�
�s 
mspr� o   � ��r�r 0 	themaster 	theMaster� �q��p
�q 
dPge� 4   � ��o�
�o 
page� m   � ��n�n �p  � ��� I  � ��m��
�m .InESovrrobj         obj � n   � ���� 4   � ��l�
�l 
txtf� m   � ��� ���  R - E d i t i o n   d a t e� 4   � ��k�
�k 
mspr� o   � ��j�j 0 	themaster 	theMaster� �i��h
�i 
dPge� 4   � ��g�
�g 
page� m   � ��f�f �h  � ��� l  � ����� r   � ���� o   � ��e�e 0 pagedate pageDate� l     ��d�c� n      ��� 1   � ��b
�b 
pcnt� 4   � ��a�
�a 
txtf� m   � ��� ���  L - E d i t i o n   d a t e�d  �c  � * $ Sets the date on the left-hand page   � ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e� ��� l  ����� r   ���� o   � ��`�` 0 pagedate pageDate� l     ��_�^� n      ��� 1  �]
�] 
pcnt� 4   ��\�
�\ 
txtf� m   ��� ���  R - E d i t i o n   d a t e�_  �^  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  [���[� k  	R�� ��� I 	-�Z��
�Z .InESovrrobj         obj � l 	$��Y�X� 6 	$��� n  	��� 2  �W
�W 
cobj� n  	��� 1  �V
�V 
mpgs� 4  	�U�
�U 
page� m  �T�T � = #��� n ��� 1  �S
�S 
pnam� 1  �R
�R 
pilr� m  "�� ���  W o r k�Y  �X  � �Q��P
�Q 
dPge� 4  %)�O�
�O 
page� m  '(�N�N �P  � ��M� I .R�L��
�L .InESovrrobj         obj � l .I��K�J� 6 .I��� n  .6��� 2  46�I
�I 
cobj� n  .4��� 1  24�H
�H 
mpgs� 4  .2�G�
�G 
page� m  01�F�F � = 9H��� n :B��� 1  >B�E
�E 
pnam� 1  :>�D
�D 
pilr� m  CG�� ���  W o r k�K  �J  � �C��B
�C 
dPge� 4  JN�A�
�A 
page� m  LM�@�@ �B  �M  � R      �?�>�=
�? .ascrerr ****      � ****�>  �=  �[  � ��<� Z  \����;�:� > \a��� o  \]�9�9 0 
pagenumber 
pageNumber� m  ]`�� ���  � k  d��� ��� I dv�8��
�8 .InESovrrobj         obj � n  dm��� 4  hm�7�
�7 
txtf� m  il�� ���  L - P a g e   n u m b e r� 4  dh�6�
�6 
mspr� o  fg�5�5 0 	themaster 	theMaster� �4��3
�4 
dPge� 4  nr�2�
�2 
page� m  pq�1�1 �3  � ��� I w��0��
�0 .InESovrrobj         obj � n  w�   4  {��/
�/ 
txtf m  | �  R - P a g e   n u m b e r 4  w{�.
�. 
mspr o  yz�-�- 0 	themaster 	theMaster� �,�+
�, 
dPge 4  ���*
�* 
page m  ���)�) �+  � 	 r  ��

 o  ���(�( 0 
pagenumber 
pageNumber l     �'�& n       1  ���%
�% 
pcnt n  �� 4  ���$
�$ 
txtf m  �� �  L - P a g e   n u m b e r 4  ���#
�# 
page m  ���"�" �'  �&  	 �! r  �� l ��� � c  �� l ���� [  �� o  ���� 0 
pagenumber 
pageNumber m  ���� �  �   m  ���
� 
TEXT�   �   l     �� n        1  ���
� 
pcnt  n  ��!"! 4  ���#
� 
txtf# m  ��$$ �%%  R - P a g e   n u m b e r" 4  ���&
� 
page& m  ���� �  �  �!  �;  �:  �<  �x  �w  �y  ��  ��  � l   '��' 1    �
� 
pacd�  �  � m     ((                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � )*) l     ����  �  �  * +,+ l     ����  �  �  , -.- l     �
/0�
  / c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   0 �11 �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e. 232 i   " %454 I      �	6��	  0 drawembargobox drawEmbargoBox6 7�7 o      �� 0 pagetype pageType�  �  5 O     {898 O    z:;: k    y<< =>= Z    $?@A�? =   BCB o    �� 0 pagetype pageTypeC m    DD �EE  s i n g l e@ r    FGF m    �� G o      �� 0 pagenum pageNumA HIH =   JKJ o    �� 0 pagetype pageTypeK m    LL �MM  s p r e a dI N� N r     OPO m    ���� P o      ���� 0 pagenum pageNum�   �  > QRQ l  % %��������  ��  ��  R STS r   % 4UVU 6  % 2WXW l  % )Y����Y 4  % )��Z
�� 
layrZ m   ' (���� ��  ��  X =  * 1[\[ 1   + -��
�� 
pnam\ m   . 0]] �^^  W o r kV o      ���� 0 	worklayer 	workLayerT _`_ l  5 5��������  ��  ��  ` aba O   5 bcdc r   < aefe I  < _����g
�� .corecrel****      � null��  g ��hi
�� 
koclh m   > ?��
�� 
txtfi ��j��
�� 
prdtj K   @ Ykk ��lm
�� 
pilrl o   A B���� 0 	worklayer 	workLayerm ��no
�� 
gbndn J   C Opp qrq m   C Dss @,      r tut m   D Evv �b�     u wxw m   E Hyy @\�     x z��z m   H K{{ �I      ��  o ��|��
�� 
pcnt| m   R U}} �~~ " E m b a r g o e d   s t o r i e s��  ��  f o      ���� 0 ebox eBoxd 4   5 9��
�� 
page o   7 8���� 0 pagenum pageNumb ��� l  c q���� r   c q��� 4   c k���
�� 
ObSt� m   g j�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   l p��
�� 
aobs� o   k l���� 0 ebox eBox��  ��  � K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n� ���� r   r y��� m   r s��
�� boovtrue� n      ��� 1   t x��
�� 
plck� o   s t���� 0 ebox eBox��  ; l   ������ 4   ���
�� 
docu� m    ���� ��  ��  9 m     ��                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  3 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   & )��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
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
pageNumber� m   # $���� � m   % &����  ��  ��  � l  * 2���� r   * 2��� J   * .�� ��� m   * +�� @.      � ���� m   + ,�� @&      ��  � l     ������ 1   . 1��
�� 
zero��  ��  � ( " For left-hand singles and spreads   � ��� D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s� ��� l  5 :������ =  5 :��� `   5 8��� o   5 6���� 0 
pagenumber 
pageNumber� m   6 7���� � m   8 9���� ��  ��  � ���� l  = E���� r   = E��� J   = A�� ��� m   = >�� @"      � ���� m   > ?�� @&      ��  � l     ������ 1   A D��
�� 
zero��  ��  �   For right-hand singles   � ��� .   F o r   r i g h t - h a n d   s i n g l e s��  ��  � ��� l  J J��������  ��  ��  � ���� I  J ]�����
�� .CoResavedocu        obj ��  � �����
�� 
kfil� b   L Y��� b   L W��� b   L U��� b   L S��� o   L Q���� $0 freshpagesfolder freshPagesFolder� o   Q R���� 0 theslug theSlug� m   S T�� �	 	   _� o   U V���� 0 filedate fileDate� m   W X		 �		 
 . i n d d��  ��  � l   	����	 1    ��
�� 
pacd��  ��  � m     		                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � 			 l     ��������  ��  ��  	 			 l     ��������  ��  ��  	 			
		 l     ��		��  	 f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	 �		 �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	
 			 i   * -			 I      �������� 0 customedition customEdition��  ��  	 k    z		 			 l     ��������  ��  ��  	 			 l     ��		��  	 | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	 �		 �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	 			 l     ��		��  	 a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	 �		 �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	 		 	 l     ��	!	"��  	! [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	" �	#	# �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	  	$	%	$ l     ��������  ��  ��  	% 	&	'	& l     ��	(	)��  	( > 8 The human-friendly names used in the TextWrangler file	   	) �	*	* p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		' 	+	,	+ r     X	-	.	- J     V	/	/ 	0	1	0 m     	2	2 �	3	3 
 F r o n t	1 	4	5	4 m    	6	6 �	7	7  S a t F r o n t	5 	8	9	8 m    	:	: �	;	;  H o m e _ S	9 	<	=	< m    	>	> �	?	?  H o m e _ L	= 	@	A	@ m    	B	B �	C	C  H o m e _ R	A 	D	E	D m    	F	F �	G	G  F o r e i g n _ S	E 	H	I	H m    	J	J �	K	K  F o r e i g n _ L	I 	L	M	L m    	N	N �	O	O  F o r e i g n _ R	M 	P	Q	P m    		R	R �	S	S  S t r u g g l e _ S	Q 	T	U	T m   	 
	V	V �	W	W  S t r u g g l e _ L	U 	X	Y	X m   
 	Z	Z �	[	[  S t r u g g l e _ R	Y 	\	]	\ m    	^	^ �	_	_  N e w s R e v i e w s _ S	] 	`	a	` m    	b	b �	c	c  N e w s R e v i e w s _ L	a 	d	e	d m    	f	f �	g	g  N e w s R e v i e w s _ R	e 	h	i	h m    	j	j �	k	k  S p r e a d	i 	l	m	l m    	n	n �	o	o  T V _ S	m 	p	q	p m    	r	r �	s	s  T V _ L	q 	t	u	t m    	v	v �	w	w  T V _ R	u 	x	y	x m    	z	z �	{	{  L e t t e r s _ S	y 	|	}	| m    	~	~ �		  L e t t e r s _ L	} 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    "	�	� �	�	�  R e d L i s t	� 	�	�	� m   " %	�	� �	�	�  F e a t _ S	� 	�	�	� m   % (	�	� �	�	�  F e a t _ L	� 	�	�	� m   ( +	�	� �	�	�  F e a t _ R	� 	�	�	� m   + .	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ S	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ L	� 	�	�	� m   4 7	�	� �	�	�  A r t s _ R	� 	�	�	� m   7 :	�	� �	�	�  B a c k	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ S	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ L	� 	�	�	� m   @ C	�	� �	�	�  S p o r t _ R	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   F I	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ S	� 	�	�	� m   L O	�	� �	�	�  B l a n k _ L	� 	���	� m   O R	�	� �	�	�  B l a n k _ R��  	. o      ���� 0 
human_list  	, 	�	�	� l  Y Y��	�	���  	�    The InDesign master names   	� �	�	� 4   T h e   I n D e s i g n   m a s t e r   n a m e s	� 	�	�	� r   Y �	�	�	� J   Y �	�	� 	�	�	� m   Y \	�	� �	�	�  N e w s - F r o n t	� 	�	�	� m   \ _	�	� �	�	�  N e w s - S a t F r o n t	� 	�	�	� m   _ b	�	� �	�	�  N e w s - H o m e - S p l i t	� 	�	�	� m   b e	�	� �	�	�  N e w s - H o m e - L	� 	�	�	� m   e h	�	� �	�	�  N e w s - H o m e - R	� 	�	�	� m   h k	�	� �	�	� $ N e w s - F o r e i g n - S p l i t	� 	�	�	� m   k n	�	� �	�	�  N e w s - F o r e i g n - L	� 	�	�	� m   n q	�	� �	�	�  N e w s - F o r e i g n - R	� 	�	�	� m   q t	�	� �	�	� & F e a t - S t r u g g l e - S p l i t	� 	�	�	� m   t w	�	� �	�	�  F e a t - S t r u g g l e - L	� 	�	�	� m   w z	�	� �	�	�  F e a t - S t r u g g l e - R	� 	�	�	� m   z }	�	� �
 
  * F e a t - N e w s R e v i e w - S p l i t	� 


 m   } �

 �

 " F e a t - N e w s R e v i e w - L
 


 m   � �

 �

 " F e a t - N e w s R e v i e w - R
 
	


	 m   � �

 �

  F e a t - S p r e a d

 


 m   � �

 �

  F e a t - T V - S p l i t
 


 m   � �

 �

  F e a t - T V - L
 


 m   � �

 �

  F e a t - T V - R
 


 m   � �

 �

 $ F e a t - L e t t e r s - S p l i t
 


 m   � �

 �
 
   F e a t - L e t t e r s - L
 
!
"
! m   � �
#
# �
$
$  F e a t - L e t t e r s - R
" 
%
&
% m   � �
'
' �
(
(  F e a t - R e d L i s t
& 
)
*
) m   � �
+
+ �
,
,   F e a t - B l a n k - S p l i t
* 
-
.
- m   � �
/
/ �
0
0  F e a t - B l a n k - L
. 
1
2
1 m   � �
3
3 �
4
4  F e a t - B l a n k - R
2 
5
6
5 m   � �
7
7 �
8
8  A r t s - E n t s - S p l i t
6 
9
:
9 m   � �
;
; �
<
<   A r t s - B l a n k - S p l i t
: 
=
>
= m   � �
?
? �
@
@  A r t s - B l a n k - L
> 
A
B
A m   � �
C
C �
D
D  A r t s - B l a n k - R
B 
E
F
E m   � �
G
G �
H
H  S p r t - B a c k
F 
I
J
I m   � �
K
K �
L
L   S p r t - B l a n k - S p l i t
J 
M
N
M m   � �
O
O �
P
P  S p r t - B l a n k - L
N 
Q
R
Q m   � �
S
S �
T
T  S p r t - B l a n k - R
R 
U
V
U m   � �
W
W �
X
X  S p r t - R a c i n g - L
V 
Y
Z
Y m   � �
[
[ �
\
\  S p r t - R a c i n g - R
Z 
]
^
] m   � �
_
_ �
`
`  X - B l a n k - S p l i t
^ 
a
b
a m   � �
c
c �
d
d  X - B l a n k - L
b 
e��
e m   � �
f
f �
g
g  X - B l a n k - R��  	� o      ���� 0 masters_list  	� 
h
i
h l  � ���
j
k��  
j $  Slugs to use in the file name   
k �
l
l <   S l u g s   t o   u s e   i n   t h e   f i l e   n a m e
i 
m
n
m r   �J
o
p
o J   �H
q
q 
r
s
r m   � �
t
t �
u
u 
 F r o n t
s 
v
w
v m   � �
x
x �
y
y 
 F r o n t
w 
z
{
z m   � �
|
| �
}
}  H o m e
{ 
~

~ m   � �
�
� �
�
�  H o m e
 
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
� m   �
�
� �
�
�  T V
� 
�
�
� m  
�
� �
�
�  T V
� 
�
�
� m  
�
� �
�
�  F e a t u r e s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  R e d L i s t
� 
�
�
� m  
�
� �
�
�  F e a t u r e s
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m   
�
� �
�
�  A r t s - E n t s
� 
�
�
� m   #
�
� �
�
�  A r t s
� 
�
�
� m  #&
�
� �
�
�  A r t s
� 
�
�
� m  &)
�
� �
�
�  A r t s
� 
�
�
� m  ),
�
� �
�
�  B a c k
� 
�
�
� m  ,/
�
� �
�
� 
 S p o r t
� 
�
�
� m  /2
�
� �
�
� 
 S p o r t
� 
�
�
� m  25
�
� �
�
� 
 S p o r t
� 
�
�
� m  58
�
� �
�
�  R a c i n g
� 
�
�
� m  8;
�
� �
�
�  R a c i n g
� 
�
�
� m  ;>   � 
 B L A N K
�  m  >A � 
 B L A N K �� m  AD � 
 B L A N K��  
p o      ���� 0 
slugs_list  
n 	
	 l KK�������  ��  �  
  l KK�~�~   1 + Single-page masters (used to set pageType)    � V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )  r  K� J  K�  m  KN �  N e w s - F r o n t  m  NQ �  N e w s - S a t F r o n t  m  QT �    N e w s - H o m e - L !"! m  TW## �$$  N e w s - H o m e - R" %&% m  WZ'' �((  N e w s - F o r e i g n - L& )*) m  Z]++ �,,  N e w s - F o r e i g n - R* -.- m  ]`// �00  F e a t - S t r u g g l e - L. 121 m  `c33 �44  F e a t - S t r u g g l e - R2 565 m  cf77 �88 " F e a t - N e w s R e v i e w - L6 9:9 m  fi;; �<< " F e a t - N e w s R e v i e w - R: =>= m  il?? �@@  F e a t - T V - L> ABA m  loCC �DD  F e a t - T V - RB EFE m  orGG �HH  F e a t - L e t t e r s - LF IJI m  ruKK �LL  F e a t - L e t t e r s - RJ MNM m  uxOO �PP  F e a t - R e d L i s tN QRQ m  x{SS �TT  F e a t - B l a n k - LR UVU m  {~WW �XX  F e a t - B l a n k - RV YZY m  ~�[[ �\\  A r t s - B l a n k - LZ ]^] m  ��__ �``  A r t s - B l a n k - R^ aba m  ��cc �dd  S p r t - B a c kb efe m  ��gg �hh  S p r t - B l a n k - Lf iji m  ��kk �ll  S p r t - B l a n k - Rj mnm m  ��oo �pp  S p r t - R a c i n g - Ln qrq m  ��ss �tt  S p r t - R a c i n g - Rr uvu m  ��ww �xx  X - B l a n k - Lv y�}y m  ��zz �{{  X - B l a n k - R�}   o      �|�| 0 singles_list   |}| l ���{~�{  ~ , & Spread masters (used to set pageType)    ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )} ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V - S p l i t� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��z� m  ���� ���  X - B l a n k - S p l i t�z  � o      �y�y 0 spreads_list  � ��� l ���x�w�v�x  �w  �v  � ��u� O  �z��� O  �y��� k  �x�� ��� l ������ r  ����� l ����t�s� I ���r��
�r .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �q��p
�q 
Opts� K  ���� �o��
�o 
SMod� m  ���n
�n SModGrep� �m��l
�m 
STop� m  ���k
�k boovtrue�l  �p  �t  �s  � o      �j�j 0 hashline hashLine�   Finds the beginning line   � ��� 2   F i n d s   t h e   b e g i n n i n g   l i n e� ��� l ����� r  ���� l ���i�h� [  ���� l ���g�f� l ���e�d� n  ���� 1  ��c
�c 
SLin� l ����b�a� n  ����� 1  ���`
�` 
MSpc� o  ���_�_ 0 hashline hashLine�b  �a  �e  �d  �g  �f  � m  �^�^ �i  �h  � o      �]�] 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � ��� h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e� ��� l ���� r  ��� l ��\�[� 1  �Z
�Z 
ELin�\  �[  � o      �Y�Y 0 theend theEnd� @ : The last instruction must be on the last line of the file   � ��� t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e� ��� l �X�W�V�X  �W  �V  � ��� Y  v��U���T� l q���� k  q�� ��� l 9���� r  9��� l 7��S�R� I 7�Q��
�Q .R*chFindMtch���     TEXT� m  �� �    ^ ( . + ) \ t ( . + ) $� �P
�P 
FnIn 4   &�O
�O 
clin o  $%�N�N 0 x   �M�L
�M 
Opts K  )1 �K�J
�K 
SMod m  ,/�I
�I SModGrep�J  �L  �S  �R  � o      �H�H 0 searchresult searchResult� 9 3 Finds characters, then a tab, then more characters   � � f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s� 	 l ::�G�F�E�G  �F  �E  	 

 l :G r  :G l :E�D�C I :E�B�A
�B .R*chGSubutxt    ��� null�A   �@�?
�@ 
RplP m  >A �  \ 1�?  �D  �C   o      �>�> 0 
pagenumber 
pageNumber < 6 The page number (or a spread's left-hand page number)    � l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )  l HU r  HU l HS�=�< I HS�;�:
�; .R*chGSubutxt    ��� null�:   �9 �8
�9 
RplP  m  LO!! �""  \ 2�8  �=  �<   o      �7�7 0 hmaster hMaster = 7 Human-friendly master name, as contained in human_list    �## n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t $%$ l VV�6�5�4�6  �5  �4  % &�3& Z  Vq'(�2�1' H  V`)) E  V_*+* l V[,�0�/, n  V[-.- 1  W[�.
�. 
MTxt. o  VW�-�- 0 searchresult searchResult�0  �/  + m  [^// �00  - 	 -( l cm1231 k  cm44 565 l cc�,�+�*�,  �+  �*  6 787 Q  ck9:;9 k  f�<< =>= l fo?@A? r  foBCB l fmD�)�(D n fmEFE I  gm�'G�&�' 0 list_position  G HIH o  gh�%�% 0 hmaster hMasterI J�$J o  hi�#�# 0 
human_list  �$  �&  F  f  fg�)  �(  C o      �"�" 0 listpos listPos@ Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   A �KK �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s t> LML l pxNOPN r  pxQRQ l pvS�!� S n  pvTUT 4  qv�V
� 
cobjV o  tu�� 0 listpos listPosU o  pq�� 0 masters_list  �!  �   R o      �� 0 	themaster 	theMasterO 1 + Sets theMaster to the InDesign master name   P �WW V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m eM XYX l yy����  �  �  Y Z[Z Z  y�\]^�\ E y|_`_ o  yz�� 0 singles_list  ` o  z{�� 0 	themaster 	theMaster] r  �aba m  �cc �dd  s i n g l eb o      �� 0 pagetype pageType^ efe E ��ghg o  ���� 0 spreads_list  h o  ���� 0 	themaster 	theMasterf i�i r  ��jkj m  ��ll �mm  s p r e a dk o      �� 0 pagetype pageType�  �  [ non l ������  �  �  o pqp Z  ��rst�r = ��uvu o  ���� 0 pagetype pageTypev m  ��ww �xx  s i n g l es l ��yz{y r  ��|}| l ��~��
~ b  ��� b  ����� o  ���	�	 0 
pagenumber 
pageNumber� m  ���� ���  _� l ������ n  ����� 4  ����
� 
cobj� o  ���� 0 listpos listPos� o  ���� 0 
slugs_list  �  �  �  �
  } o      �� 0 theslug theSlugz 2 , Block to set the slug used to name the file   { ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l et ��� = ����� o  ���� 0 pagetype pageType� m  ���� ���  s p r e a d� ��� r  ����� l ���� ��� b  ����� b  ����� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  -� l �������� [  ����� o  ������ 0 
pagenumber 
pageNumber� m  ������ ��  ��  � m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  �   ��  � o      ���� 0 theslug theSlug�  �  q ��� l ����������  ��  ��  � ��� Z  ��������� G  ����� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      ���� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l��  ��  � ��� l ����������  ��  ��  � ��� l ������ n ����� I  ��������� 0 pagegen pageGen� ��� o  ������ 0 pagetype pageType� ��� o  ������ 0 	themaster 	theMaster� ��� o  ������ 0 theslug theSlug� ���� o  ������ 0 
pagenumber 
pageNumber��  ��  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ���� l ����������  ��  ��  ��  : R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ����
���  ; k  k�� ��� l ������  � M G Handles "variable not defined" - aimed at listPos - to catch bad input   � ��� �   H a n d l e s   " v a r i a b l e   n o t   d e f i n e d "   -   a i m e d   a t   l i s t P o s   -   t o   c a t c h   b a d   i n p u t� ��� r  3��� b  /��� b  +��� b  '��� b  #��� b  ��� b  ��� b  ��� b  ��� b  ��� m  	�� ��� R T h e r e   i s   a   p r o b l e m   w i t h   t h i s   i n s t r u c t i o n :� o  	��
�� 
ret � o  ��
�� 
ret � l ������ n  ��� 1  ��
�� 
MTxt� o  ���� 0 searchresult searchResult��  ��  � o  ��
�� 
ret � o  ��
�� 
ret � m  "�� ��� � P l e a s e   d o u b l e - c h e c k   t h a t   t h e   p a g e   t y p e   i s   s p e l l e d   e x a c t l y   a s   l i s t e d .� o  #&��
�� 
ret � o  '*��
�� 
ret � m  +.�� ��� � D o   y o u   w i s h   t o   g e n e r a t e   t h e   r e s t   o f   t h e   p a g e s   o r   s t o p   t h e   s c r i p t ?� o      ���� 0 message2753  � ��� I 4N����
�� .sysodlogaskr        TEXT� o  47���� 0 message2753  � ����
�� 
btns� J  :B    m  := �  C o n t i n u e �� m  =@ �  S t o p��  � ����
�� 
dflt m  EH		 �

  S t o p��  � �� Z Ok���� = OZ l OV���� n  OV 1  RV��
�� 
bhit l OR���� 1  OR��
�� 
rslt��  ��  ��  ��   m  VY �  S t o p R  ]g����
�� .ascrerr ****      � ****��   ����
�� 
errn m  ad��������  ��  ��  ��  8  l ll��������  ��  ��   �� l ll��������  ��  ��  ��  2 : 4 Lines consisting of "hyphen tab hyphen" are skipped   3 � h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�2  �1  �3  � P J Goes through each line from the one after hashLine to the end of the file   � � �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�U 0 x  � o  ���� 0 thestart theStart� o  ���� 0 theend theEnd�T  � �� l ww��������  ��  ��  ��  � n  �� 4  ���� 
�� 
ctxt  m  ������  4  ����!
�� 
TxtW! m  ������ � m  ��""�                                                                                  !Rch  alis    f  Macintosh HD               ĬplH+   �KFTextWrangler.app                                               *У��        ����  	                Applications    Ĭb\      У��     �KF  +Macintosh HD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    M a c i n t o s h   H D  Applications/TextWrangler.app   / ��  �u  	 #$# l     ��������  ��  ��  $ %&% l     ��'(��  ' , & newsGen: News-page generation routine   ( �)) L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e& *+* i   . 1,-, I      ��.���� 0 newsgen newsGen. /0/ o      ���� &0 masterstogenerate mastersToGenerate0 1��1 o      ���� 0 theday theDay��  ��  - k    v22 343 Z     _56����5 E    787 o     ���� &0 masterstogenerate mastersToGenerate8 m    99 �::  N e w s   p a g e s6 k    [;; <=< Z    +>?@��> >   	ABA o    ���� 0 theday theDayB m    CC �DD  S a t u r d a y? l   EFGE I    ��H���� 0 pagegen pageGenH IJI m    KK �LL  s i n g l eJ MNM m    OO �PP  N e w s - F r o n tN QRQ m    SS �TT  1 _ F r o n tR U��U m    VV �WW  ��  ��  F ; 5 If block to create the weekday or weekend front page   G �XX j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e@ YZY =   [\[ o    ���� 0 theday theDay\ m    ]] �^^  S a t u r d a yZ _��_ I    '��`���� 0 pagegen pageGen` aba m     cc �dd  s i n g l eb efe m     !gg �hh  N e w s - S a t F r o n tf iji m   ! "kk �ll  1 _ F r o n tj m��m m   " #nn �oo  ��  ��  ��  ��  = pqp I   , 7��r���� 0 pagegen pageGenr sts m   - .uu �vv  s p r e a dt wxw m   . /yy �zz  N e w s - H o m e - S p l i tx {|{ m   / 0}} �~~  2 - 3 _ H o m e| �� m   0 3�� ���  2��  ��  q ��� I   8 I������� 0 pagegen pageGen� ��� m   9 <�� ���  s p r e a d� ��� m   < ?�� ���  N e w s - H o m e - S p l i t� ��� m   ? B�� ���  4 - 5 _ H o m e� ���� m   B E�� ���  4��  ��  � ���� I   J [������� 0 pagegen pageGen� ��� m   K N�� ���  s p r e a d� ��� m   N Q�� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   Q T�� ���  6 - 7 _ F o r e i g n� ���� m   T W�� ���  6��  ��  ��  ��  ��  4 ��� l  ` `��������  ��  ��  � ��� Z   ` �������� E  ` e��� o   ` a���� &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h ������� >  h m��� o   h i���� 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p ����~� 0 pagegen pageGen� ��� m   q t�� ���  s i n g l e� ��� m   t w�� ���  F e a t - T V - L� ��� m   w z�� ��� 
 1 2 _ T V� ��}� m   z }�� ���  1 2�}  �~  � ��� =  � ���� o   � ��|�| 0 theday theDay� m   � ��� ���  S a t u r d a y� ��{� I   � ��z��y�z 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - B l a n k - R� ��� m   � ��� ���  1 5 _ F e a t u r e s� ��x� m   � ��� ���  1 5�x  �y  �{  ��  ��  ��  � ��� l  � ��w�v�u�w  �v  �u  � ��� Z   ����t�s� E  � ���� o   � ��r�r &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   ��� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ��q� m   � ��� ���  W e d n e s d a y�q  � o      �p�p 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   � ���� J   � ��� ��� m   � ��� �    T u e s d a y�  m   � � �  T h u r s d a y �o m   � � �  F r i d a y�o  � o      �n�n 0 p14_days  � 	 l  � ��m�l�k�m  �l  �k  	 
�j
 Z   ��i E  � � o   � ��h�h 0 p10_days   o   � ��g�g 0 theday theDay I   � ��f�e�f 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �  F e a t - L e t t e r s - L  m   � � �  1 0 _ L e t t e r s �d m   � � �  1 0�d  �e    !  E  � �"#" o   � ��c�c 0 p14_days  # o   � ��b�b 0 theday theDay! $%$ I   � ��a&�`�a 0 pagegen pageGen& '(' m   � �)) �**  s i n g l e( +,+ m   � �-- �..  F e a t - L e t t e r s - L, /0/ m   � �11 �22  1 4 _ L e t t e r s0 3�_3 m   � �44 �55  1 4�_  �`  % 676 =  � 898 o   � ��^�^ 0 theday theDay9 m   � �:: �;;  S a t u r d a y7 <�]< I  �\=�[�\ 0 pagegen pageGen= >?> m  @@ �AA  s p r e a d? BCB m  
DD �EE $ F e a t - L e t t e r s - S p l i tC FGF m  
HH �II  1 8 - 1 9 _ L e t t e r sG J�ZJ m  KK �LL  1 8�Z  �[  �]  �i  �j  �t  �s  � MNM l �Y�X�W�Y  �X  �W  N OPO Z  :QR�V�UQ E "STS o  �T�T &0 masterstogenerate mastersToGenerateT m  !UU �VV  S t r u g g l eR I  %6�SW�R�S 0 pagegen pageGenW XYX m  &)ZZ �[[  s i n g l eY \]\ m  ),^^ �__  F e a t - S t r u g g l e - L] `a` m  ,/bb �cc  8 _ S t r u g g l ea d�Qd m  /2ee �ff  8�Q  �R  �V  �U  P ghg Z  ;Xij�P�Oi E ;@klk o  ;<�N�N &0 masterstogenerate mastersToGeneratel m  <?mm �nn  S t r u g g l e   s p l i tj I  CT�Mo�L�M 0 pagegen pageGeno pqp m  DGrr �ss  s p r e a dq tut m  GJvv �ww & F e a t - S t r u g g l e - S p l i tu xyx m  JMzz �{{  8 - 9 _ S t r u g g l ey |�K| m  MP}} �~~  8�K  �L  �P  �O  h � l YY�J�I�H�J  �I  �H  � ��G� Z  Yv���F�E� E Y^��� o  YZ�D�D &0 masterstogenerate mastersToGenerate� m  Z]�� ���  R e d   L i s t� I  ar�C��B�C 0 pagegen pageGen� ��� m  be�� ���  s i n g l e� ��� m  eh�� ���  F e a t - R e d L i s t� ��� m  hk�� ���  2 0 _ R e d L i s t� ��A� m  kn�� ���  2 0�A  �B  �F  �E  �G  + ��� l     �@�?�>�@  �?  �>  � ��� l     �=�<�;�=  �<  �;  � ��� l     �:���:  � 1 + featsGen: Features-page generation routine   � ��� V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   2 5��� I      �9��8�9 0 featsgen featsGen� ��� o      �7�7 &0 masterstogenerate mastersToGenerate� ��6� o      �5�5 0 theday theDay�6  �8  � k    ��� ��� Z     %���4�3� E    ��� o     �2�2 &0 masterstogenerate mastersToGenerate� m    �� ���  S p r e a d� Z    !���1�� =   	��� o    �0�0 0 theday theDay� m    �� ���  S a t u r d a y� I    �/��.�/ 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ��-� m    �� ���  1 2�-  �.  �1  � I    !�,��+�, 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ��*� m    �� ���  8�*  �+  �4  �3  � ��� l  & &�)�(�'�)  �(  �'  � ��� Z   & ;���&�%� E  & )��� o   & '�$�$ &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7�#��"�# 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ��!� m   0 3�� ���  1 0�!  �"  �&  �%  � ��� l  < <� ���   �  �  � ��� Z   < Y����� E  < A��� o   < =�� &0 masterstogenerate mastersToGenerate� m   = @�� ���  1 3� I   D U���� 0 pagegen pageGen� ��� m   E H   �  s i n g l e�  m   H K �  F e a t - T V - R  m   K N �		  1 3 _ F e a t u r e s 
�
 m   N Q �  1 3�  �  �  �  �  l  Z Z����  �  �    Z   Z w�� E  Z _ o   Z [�� &0 masterstogenerate mastersToGenerate m   [ ^ �  9 I   b s��� 0 pagegen pageGen  m   c f �  s i n g l e  m   f i �  F e a t - B l a n k - R  !  m   i l"" �##  9 _ F e a t u r e s! $�$ m   l o%% �&&  9�  �  �  �   '(' Z   x �)*��) E  x }+,+ o   x y�� &0 masterstogenerate mastersToGenerate, m   y |-- �..  1 0 - 1 1      s p l i t* I   � ��/�
� 0 pagegen pageGen/ 010 m   � �22 �33  s p r e a d1 454 m   � �66 �77   F e a t - B l a n k - S p l i t5 898 m   � �:: �;;  1 0 - 1 1 _ F e a t u r e s9 <�	< m   � �== �>>  1 0�	  �
  �  �  ( ?@? Z   � �AB��A E  � �CDC o   � ��� &0 masterstogenerate mastersToGenerateD m   � �EE �FF  1 0 - 1 1      s i n g l e sB k   � �GG HIH I   � ��J�� 0 pagegen pageGenJ KLK m   � �MM �NN  s i n g l eL OPO m   � �QQ �RR  F e a t - B l a n k - LP STS m   � �UU �VV  1 0 _ F e a t u r e sT W�W m   � �XX �YY  1 0�  �  I Z�Z I   � ��[� � 0 pagegen pageGen[ \]\ m   � �^^ �__  s i n g l e] `a` m   � �bb �cc  F e a t - B l a n k - Ra ded m   � �ff �gg  1 1 _ F e a t u r e se h��h m   � �ii �jj  1 1��  �   �  �  �  @ klk l  � ���������  ��  ��  l mnm l  � ���������  ��  ��  n opo Z   � �qr����q E  � �sts o   � ����� &0 masterstogenerate mastersToGeneratet m   � �uu �vv  1 5r I   � ���w���� 0 pagegen pageGenw xyx m   � �zz �{{  s i n g l ey |}| m   � �~~ �  F e a t - B l a n k - R} ��� m   � ��� ���  1 5 _ F e a t u r e s� ���� m   � ��� ���  1 5��  ��  ��  ��  p ��� l  � ���������  ��  ��  � ��� Z   �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ��� 
 1 6 - 1 7� l  � ����� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  A r t s - E n t s - S p l i t� ��� m   � ��� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   � ��� ���  1 6��  ��  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  � ��� l ��������  ��  ��  � ��� Z  {������� E ��� o  ���� &0 masterstogenerate mastersToGenerate� m  �� ���  L e t t e r s� k  
w�� ��� l 
���� r  
��� J  
�� ��� m  
�� ���  M o n d a y� ���� m  �� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r  %��� J  #�� ��� m  �� ���  T u e s d a y� ��� m  �� ���  T h u r s d a y� ��� m  �� ���  F r i d a y� ���� m  !�� ��� , N o   d a y      w o r k i n g   a h e a d��  � o      ���� 0 p14_days  � ��� l &&��������  ��  ��  � ���� Z  &w������ E &)��� o  &'���� 0 p10_days  � o  '(���� 0 theday theDay� I  ,=������� 0 pagegen pageGen� ��� m  -0�� ���  s i n g l e� ��� m  03�� ���  F e a t - L e t t e r s - L� ��� m  36�� ���  1 0 _ L e t t e r s� ���� m  69�� ���  1 0��  ��  � ��� E @C��� o  @A���� 0 p14_days  � o  AB���� 0 theday theDay� ��� I  FW������� 0 pagegen pageGen� ��� m  GJ�� ���  s i n g l e� ��� m  JM�� ���  F e a t - L e t t e r s - L� ��� m  MP�� ���  1 4 _ L e t t e r s� ���� m  PS   �  1 4��  ��  �  = Z_ o  Z[���� 0 theday theDay m  [^ �  S a t u r d a y �� I  bs��	���� 0 pagegen pageGen	 

 m  cf �  s p r e a d  m  fi � $ F e a t - L e t t e r s - S p l i t  m  il �  1 8 - 1 9 _ L e t t e r s �� m  lo �  1 8��  ��  ��  ��  ��  ��  ��  �  l ||��������  ��  ��    Z  |����� E |�  o  |}���� &0 masterstogenerate mastersToGenerate  m  }�!! �""  A r t s l ��#$%# I  ����&���� 0 pagegen pageGen& '(' m  ��)) �**  s i n g l e( +,+ m  ��-- �..  A r t s - B l a n k - R, /0/ m  ��11 �22  1 1 _ A r t s0 3��3 m  ��44 �55  1 1��  ��  $ ( " Create the weekday Arts page (11)   % �66 D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��   787 l ����������  ��  ��  8 9:9 Z  ��;<����; E ��=>= o  ������ &0 masterstogenerate mastersToGenerate> m  ��?? �@@  A r t s   s p l i t< I  ����A���� 0 pagegen pageGenA BCB m  ��DD �EE  s p r e a dC FGF m  ��HH �II   A r t s - B l a n k - S p l i tG JKJ m  ��LL �MM  1 0 - 1 1 _ A r t sK N��N m  ��OO �PP  1 0��  ��  ��  ��  : QRQ l ����������  ��  ��  R STS Z  ��UV����U E ��WXW o  ������ &0 masterstogenerate mastersToGenerateX m  ��YY �ZZ  E n t sV I  ����[���� 0 pagegen pageGen[ \]\ m  ��^^ �__  s i n g l e] `a` m  ��bb �cc  F e a t - E n t s - La ded m  ��ff �gg  1 4 _ E n t se h��h m  ��ii �jj  1 4��  ��  ��  ��  T k��k l ����������  ��  ��  ��  � lml l     ��������  ��  ��  m non l     ��������  ��  ��  o pqp l     ��rs��  r , & artsGen: Arts-page generation routine   s �tt L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n eq uvu i   6 9wxw I      ��y���� 0 artsgen artsGeny z��z o      ���� &0 masterstogenerate mastersToGenerate��  ��  x k     ]{{ |}| Z     ~����~ E    ��� o     ���� &0 masterstogenerate mastersToGenerate� m    �� ���  1 6 - 1 7   ( w e e k e n d ) l   ���� I    ������� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    	�� ���  A r t s - E n t s - S p l i t� ��� m   	 
�� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   
 �� ���  1 6��  ��  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  } ��� l   ��������  ��  ��  � ��� Z    '������� E   ��� o    ���� &0 masterstogenerate mastersToGenerate� m    �� ���  A r t s   ( p 1 1 )� l   #���� I    #������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  A r t s - B l a n k - R� ��� m    �� ���  1 1 _ A r t s� ���� m    �� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  � ��� l  ( (��������  ��  ��  � ��� Z   ( =������� E  ( +��� o   ( )���� &0 masterstogenerate mastersToGenerate� m   ) *�� ���  A r t s   s p l i t� l  . 9���� I   . 9������� 0 pagegen pageGen� ��� m   / 0�� ���  s p r e a d� ��� m   0 1�� ���   A r t s - B l a n k - S p l i t� ��� m   1 2�� ���  1 0 - 1 1 _ A r t s� ���� m   2 5�� ���  1 0��  ��  � + % Creates an Arts split-spread (10-11)   � ��� J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  � ��� l  > >��������  ��  ��  � ��� Z   > [������� E  > C��� o   > ?���� &0 masterstogenerate mastersToGenerate� m   ? B�� ���  E n t s� I   F W������� 0 pagegen pageGen� ��� m   G J�� ���  s i n g l e� ��� m   J M�� ���  F e a t - E n t s - L� ��� m   M P�� ���  1 4 _ E n t s� ���� m   P S�� ���  1 4��  ��  ��  ��  � ���� l  \ \��~�}�  �~  �}  ��  v ��� l     �|�{�z�|  �{  �z  � ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  � 0 * sportsGen: Sports-page generation routine   � ��� T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��u� i   : =��� I      �t��s�t 0 	sportsgen 	sportsGen� ��r� o      �q�q &0 masterstogenerate mastersToGenerate�r  �s  � k    ��� ��� Z      �p�o  E     o     �n�n &0 masterstogenerate mastersToGenerate m     �  T w o   p a g e s k      I    �m	�l�m 0 pagegen pageGen	 

 m     �  s i n g l e  m    	 �  S p r t - B a c k  m   	 
 �  1 6 _ B a c k �k m   
  �  1 6�k  �l   �j I    �i�h�i 0 pagegen pageGen  m     �  s i n g l e   m    !! �""  S p r t - B l a n k - R  #$# m    %% �&&  1 5 _ S p o r t$ '�g' m    (( �))  1 5�g  �h  �j  �p  �o  � *+* l   �f�e�d�f  �e  �d  + ,-, Z    U./�c�b. E   !010 o    �a�a &0 masterstogenerate mastersToGenerate1 m     22 �33  T h r e e   p a g e s/ k   $ Q44 565 I   $ -�`7�_�` 0 pagegen pageGen7 898 m   % &:: �;;  s i n g l e9 <=< m   & '>> �??  S p r t - B a c k= @A@ m   ' (BB �CC  1 6 _ B a c kA D�^D m   ( )EE �FF  1 6�^  �_  6 GHG I   . ?�]I�\�] 0 pagegen pageGenI JKJ m   / 2LL �MM  s i n g l eK NON m   2 5PP �QQ  S p r t - B l a n k - RO RSR m   5 8TT �UU  1 5 _ S p o r tS V�[V m   8 ;WW �XX  1 5�[  �\  H Y�ZY I   @ Q�YZ�X�Y 0 pagegen pageGenZ [\[ m   A D]] �^^  s i n g l e\ _`_ m   D Gaa �bb  S p r t - B l a n k - L` cdc m   G Jee �ff  1 4 _ S p o r td g�Wg m   J Mhh �ii  1 4�W  �X  �Z  �c  �b  - jkj l  V V�V�U�T�V  �U  �T  k lml Z   V �no�S�Rn E  V [pqp o   V W�Q�Q &0 masterstogenerate mastersToGenerateq m   W Zrr �ss , T h r e e   p a g e s   w i t h   s p l i to k   ^ �tt uvu I   ^ o�Pw�O�P 0 pagegen pageGenw xyx m   _ bzz �{{  s i n g l ey |}| m   b e~~ �  S p r t - B a c k} ��� m   e h�� ���  1 6 _ B a c k� ��N� m   h k�� ���  1 6�N  �O  v ��M� I   p ��L��K�L 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���   S p r t - B l a n k - S p l i t� ��� m   w z�� ���  1 4 - 1 5 _ S p o r t� ��J� m   z }�� ���  1 4�J  �K  �M  �S  �R  m ��� l  � ��I�H�G�I  �H  �G  � ��� Z   � ����F�E� E  � ���� o   � ��D�D &0 masterstogenerate mastersToGenerate� m   � ��� ���  F o u r   p a g e s� k   � ��� ��� I   � ��C��B�C 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��A� m   � ��� ���  2 4�A  �B  � ��� I   � ��@��?�@ 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - R� ��� m   � ��� ���  2 3 _ S p o r t� ��>� m   � ��� ���  2 3�>  �?  � ��� I   � ��=��<�= 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - L� ��� m   � ��� ���  2 2 _ S p o r t� ��;� m   � ��� ���  2 2�;  �<  � ��:� I   � ��9��8�9 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - R a c i n g - R� ��� m   � ��� ���  2 1 _ R a c i n g� ��7� m   � ��� ���  2 1�7  �8  �:  �F  �E  � ��� l  � ��6�5�4�6  �5  �4  � ��� Z   ����3�2� E  � ���� o   � ��1�1 &0 masterstogenerate mastersToGenerate� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� k   ��� ��� I   � ��0��/�0 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k�    m   � � �  2 4 _ B a c k �. m   � � �  2 4�.  �/  �  I   ��-	�,�- 0 pagegen pageGen	 

 m   � � �  s p r e a d  m   � � �   S p r t - B l a n k - S p l i t  m   � � �  2 2 - 2 3 _ S p o r t �+ m   � �  2 2�+  �,   �* I  �)�(�) 0 pagegen pageGen  m  
 �  s i n g l e   m  
!! �""  S p r t - R a c i n g - R  #$# m  %% �&&  2 1 _ R a c i n g$ '�'' m  (( �))  2 1�'  �(  �*  �3  �2  � *+* l �&�%�$�&  �%  �$  + ,-, Z  9./�#�". E !010 o  �!�! &0 masterstogenerate mastersToGenerate1 m   22 �33  R a c i n g   o n l y/ I  $5� 4��  0 pagegen pageGen4 565 m  %(77 �88  s i n g l e6 9:9 m  (+;; �<<  S p r t - R a c i n g - R: =>= m  +.?? �@@  2 1 _ R a c i n g> A�A m  .1BB �CC  2 1�  �  �#  �"  - DED l ::����  �  �  E FGF Z  :WHI��H E :?JKJ o  :;�� &0 masterstogenerate mastersToGenerateK m  ;>LL �MM  E x t r a   l e f t   p a g eI I  BS�N�� 0 pagegen pageGenN OPO m  CFQQ �RR  s i n g l eP STS m  FIUU �VV  S p r t - B l a n k - LT WXW m  ILYY �ZZ  L _ X X _ S p o r tX [�[ m  LO\\ �]]  0 0�  �  �  �  G ^_^ l XX����  �  �  _ `a` Z  Xubc��b E X]ded o  XY�� &0 masterstogenerate mastersToGeneratee m  Y\ff �gg   E x t r a   r i g h t   p a g ec I  `q�h�� 0 pagegen pageGenh iji m  adkk �ll  s i n g l ej mnm m  dgoo �pp  S p r t - B l a n k - Rn qrq m  gjss �tt  R _ X X _ S p o r tr u�u m  jmvv �ww  0 0�  �  �  �  a xyx l vv��
�	�  �
  �	  y z�z Z  v�{|��{ E v{}~} o  vw�� &0 masterstogenerate mastersToGenerate~ m  wz ���  E x t r a   s p l i t| I  ~����� 0 pagegen pageGen� ��� m  ��� ���  s p r e a d� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��� m  ���� ��� " S p l i t _ X X - X X _ S p o r t� ��� m  ���� ���  0 0�  �  �  �  �  �u       �� K U����������������  � � ���������������������������������  $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� 0 	genprompt 	genPrompt�� 0 list_position  �� 0 
dateprompt 
datePrompt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� 0 pagegen pageGen�� 0 applymaster applyMaster��  0 drawembargobox drawEmbargoBox�� 0 	cleansave 	cleanSave�� 0 customedition customEdition�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 artsgen artsGen�� 0 	sportsgen 	sportsGen
�� .aevtoappnull  �   � ****� �� ����������� 0 	genprompt 	genPrompt�� ����� �  ���� 0 desk  ��  � 	�������������������� 0 desk  �� 0 	days_list  �� 0 thetitle theTitle�� 0 weekday_pages  �� 0 weekend_pages  �� 0 ahead_pages  �� 0 theday theDay�� 0 
prompttext 
promptText�� &0 masterstogenerate mastersToGenerate� s � � � � � ����� ��� ��������� ����� � � � � � ���#��-7;>FJNRVY_jnrvz}��������������������������	!%)-0��6ADMQUX`dhk�������������� ������.���� 
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
bool�� �� �� 0 
dateprompt 
datePrompt�� 0 customedition customEdition
�� 
ret 
�� 
mlsl�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 	sportsgen 	sportsGen�� 0 artsgen artsGen�����  -������v����� �&E�O��  )a a lhY hY hOa a a a a a a vE�O�a  �a %E�Y a E�O�a  
 �a  a & s�a   +a  a !a "mvE�Oa #a $a %a &a 'a (a vE�Y ?�a )  6a *a +a ,a -a .a /a vE�Oa 0a 1a 2a 3a 4a 5a vE�Y hY Ơa 6 
 �a 7 a & �a 8�6FO�a 9  ga :a ;a <a =a >a ?a vE�Oa @a Aa Ba Ca Da Ea Fa Ga HvE�Oa Ia Ja Ka La Ma Na Oa Pa Qa Ra Sa Ta UvE�Y :�a V  1a Wa XlvE�Oa Ya Za [a \�vE�Oa ]a ^a _a `�vE�Y hY hO)��l+ aE�O�a b  
)j+ cY �a d_ e%_ e%a f%E�O�a g  +���a hea  E�O�f  )a a lhY hY e�a i +���a hea  E�O�f  )a a lhY hY 4�a j  +���a hea  E�O�f  )a a lhY hY hO�a k  )��l+ lY 7�a m  )��l+ nY %�a o  )�k+ pY �a q  )�k+ rY h� ��E���������� 0 list_position  �� ����� �  ������ 0 	this_item  �� 0 	this_list  ��  � �������� 0 	this_item  �� 0 	this_list  �� 0 i  � ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY��� ��b���������� 0 
dateprompt 
datePrompt�� ����� �  ������ 0 thetitle theTitle�� 0 	days_list  ��  � ���������������������������������� 0 thetitle theTitle�� 0 	days_list  �� 0 months_list  �� 0 tomorrow  �� 0 tmday tmDay�� 0 theday theDay�� 0 prdate prDate�� 0 prmonth prMonth�� 0 pryear prYear�� 0 
predictpos 
predictPos�� 0 	actualpos 	actualPos�� 0 shiftpos shiftPos�� 0 predictedday predictedDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear� 8osw{����������������������������������������������������������������������!,������ 
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
ttxt
�� 
ctxt
�� 
psof
�� 
psin
�� .sysooffslong    ��� null�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate���������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hO�a . &�[a /\[Zk\Z*a 0a 1a 2�a * 3k2E�Y hOa 4a )�a �a * +a ,,�&E�O_ a 5  )a a lhY hO)����a *+ 6O)����a *+ 7O�� ��c���������� "0 create_pagedate create_pageDate�� ����� �  ���������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear��  � ������~�}�|�{�� 0 theday theDay�� 0 themonth theMonth� 0 thedate theDate�~ 0 theyear theYear�} 0 sun  �| 0 secondmonth secondMonth�{ 0 
secondyear 
secondYear� q����z�y����x�w�v���u 	$&(�t/�z 0 pagedate pageDate
�y 
ldt 
�x 
days
�w 
mnth
�v 
TEXT
�u 
year
�t 
day �� ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OP� �sB�r�q���p�s "0 create_filedate create_fileDate�r �o��o �  �n�m�l�k�n 0 themonth theMonth�m 0 thedate theDate�l 0 theyear theYear�k 0 months_list  �q  � �j�i�h�g�j 0 themonth theMonth�i 0 thedate theDate�h 0 theyear theYear�g 0 months_list  � �f�eZ�ds�c�b�a
�f 
nmbr�e 
�d 0 list_position  
�c 
ctxt�b �a 0 filedate fileDate�p >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E�� �`��_�^���]�` 0 pagegen pageGen�_ �\��\ �  �[�Z�Y�X�[ 0 pagetype pageType�Z 0 	themaster 	theMaster�Y 0 theslug theSlug�X 0 
pagenumber 
pageNumber�^  � �W�V�U�T�W 0 pagetype pageType�V 0 	themaster 	theMaster�U 0 theslug theSlug�T 0 
pagenumber 
pageNumber� 
��S�R��Q�P�O�N�M�L
�S .aevtodocnull  �    alis�R 0 applymaster applyMaster�Q  0 drawembargobox drawEmbargoBox�P 0 	cleansave 	cleanSave
�O 
pacd
�N 
svop
�M savoyes 
�L .CoReclosnull���     obj �] @� <b  j O)���m+ O�� )�k+ Y hO)��l+ O*�, 	*��l 	UU� �K��J�I���H�K 0 applymaster applyMaster�J �G��G �  �F�E�D�F 0 	themaster 	theMaster�E 0 pagetype pageType�D 0 
pagenumber 
pageNumber�I  � �C�B�A�C 0 	themaster 	theMaster�B 0 pagetype pageType�A 0 
pagenumber 
pageNumber� ,(�@��?�>�=�<�;�:�9(�8�7�6��5�4@�3�2JWen�1�0�/�.�-����������,$
�@ 
pacd
�? 
mspr
�> 
page
�= 
pmas
�< 
txtf
�; 
dPge
�: .InESovrrobj         obj �9 0 pagedate pageDate
�8 
pcnt
�7 
mpgs
�6 
cobj�  
�5 
pilr
�4 
pnam�3  �2  
�1 
kocl
�0 
sprd
�/ 
prdt�. 
�- .corecrel****      � null
�, 
TEXT�H���*�,���  �*�/*�k/�,FO�� |*�/��/�*�k/l 
O�*��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�a "/�,FO�*�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU� �+5�*�)���(�+  0 drawembargobox drawEmbargoBox�* �'��' �  �&�& 0 pagetype pageType�)  � �%�$�#�"�% 0 pagetype pageType�$ 0 pagenum pageNum�# 0 	worklayer 	workLayer�" 0 ebox eBox� ��!DL� ��]������svy{��}������
�! 
docu
�  
layr
� 
pnam
� 
page
� 
kocl
� 
txtf
� 
prdt
� 
pilr
� 
gbnd� 
� 
pcnt� 
� .corecrel****      � null
� 
ObSt
� 
aobs
� 
plck�( |� x*�k/ p��  kE�Y ��  lE�Y hO*�k/�[�,\Z�81E�O*�/ '*�������a a a va a a a  E�UO*a a /�a ,FOe�a ,FUU� �������� 0 	cleansave 	cleanSave� ��� �  ��� 0 
pagenumber 
pageNumber� 0 theslug theSlug�  � �
�	�
 0 
pagenumber 
pageNumber�	 0 theslug theSlug� 	��������������	�
� 
pacd
� 
layr
� 
plck
� 
pacl
� 
zero
� 
kfil� 0 filedate fileDate
� .CoResavedocu        obj � `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU� � 	���������  0 customedition customEdition��  ��  � ������������������������������������ 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart�� 0 theend theEnd�� 0 x  �� 0 searchresult searchResult�� 0 
pagenumber 
pageNumber�� 0 hmaster hMaster�� 0 listpos listPos�� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 theslug theSlug�� 0 message2753  � �	2	6	:	>	B	F	J	N	R	V	Z	^	b	f	j	n	r	v	z	~	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	���	�	�	�	�	�	�	�	�	�	�	�	�
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
f
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
�
�
� #'+/37;?CGKOSW[_cgkoswz����������������"��������������������������������!��/����clw�����������������������	������������ &�� �� 
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
errn������{����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %a &vE�Oa 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja Ka La &vE�Oa Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa pa qa ra &vE�Oa sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa ��*a �k/a �k/�a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�Oe��kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPW lX � �a �_ �%_ �%�a �,%_ �%_ �%a �%_ �%_ �%a �%E^ O] a �a �a �lva �a �a � �O_ �a �,a �  )a �a �lhY hOPY h[OY��OPUU� ��-���������� 0 newsgen newsGen�� ����� �  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  � ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  � F9CKOSV����]cgknuy}������������������������)-14:@DHKUZ^bemrvz}������� �� 0 pagegen pageGen��w�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y hO�a A *a Ba Ca Da E�+ Y h� ������������� 0 featsgen featsGen�� ����� �  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  � ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  � V�������������������� "%-26:=EMQUX^bfiuz~��������������������� !)-14?DHLOY^bfi�� �� 0 pagegen pageGen��ؠ�  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a   (*a !a "a #a $�+ O*a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . *a /a 0a 1a 2�+ Y hO�a 3 ra 4a 5lvE�Oa 6a 7a 8a 9�vE�O�� *a :a ;a <a =�+ Y 9�� *a >a ?a @a A�+ Y �a B  *a Ca Da Ea F�+ Y hY hO�a G *a Ha Ia Ja K�+ Y hO�a L *a Ma Na Oa P�+ Y hO�a Q *a Ra Sa Ta U�+ Y hOP� ��x���������� 0 artsgen artsGen�� ����� �  ���� &0 masterstogenerate mastersToGenerate��  � ���� &0 masterstogenerate mastersToGenerate� �������������������������� �� 0 pagegen pageGen�� ^�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hOP� ������������� 0 	sportsgen 	sportsGen�� ����� �  ���� &0 masterstogenerate mastersToGenerate��  � ���� &0 masterstogenerate mastersToGenerate� S����!%(2:>BELPTW]aehrz~��������������������������!%(27;?BLQUY\fkosv������ �� 0 pagegen pageGen����� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h� �����������
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