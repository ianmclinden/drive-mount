FasdUAS 1.101.10   ��   ��    k             l     ��  ��     # Auth: Ian McLinden     � 	 	 ( #   A u t h :   I a n   M c L i n d e n   
  
 l     ��  ��     # DriveMount Applet     �   & #   D r i v e M o u n t   A p p l e t      l     ��  ��     #     �    #      l     ��  ��    ] W# Note: This assumes already saved login keys, else the script will ask for credentials     �   � #   N o t e :   T h i s   a s s u m e s   a l r e a d y   s a v e d   l o g i n   k e y s ,   e l s e   t h e   s c r i p t   w i l l   a s k   f o r   c r e d e n t i a l s      l     ��  ��    # # every time timeout expires.     �   : #   e v e r y   t i m e   t i m e o u t   e x p i r e s .      l     ��������  ��  ��       !   l     �� " #��   " b \ ---- Params -------------------------------------------------------------------------------    # � $ $ �   - - - -   P a r a m s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )   Edit to set idle timeout    * � + + 2   E d i t   t o   s e t   i d l e   t i m e o u t (  , - , p       . . ������ "0 timeoutinterval TimeoutInterval��   -  / 0 / l     1���� 1 r      2 3 2 m     ����  3 o      ���� "0 timeoutinterval TimeoutInterval��  ��   0  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 I C Edit Drive list with mount entries: {"server","volume",persistent}    9 � : : �   E d i t   D r i v e   l i s t   w i t h   m o u n t   e n t r i e s :   { " s e r v e r " , " v o l u m e " , p e r s i s t e n t } 7  ; < ; l     �� = >��   = J D For Example, mounting smb://samba.mydomain.com/usr/bob would be ...    > � ? ? �   F o r   E x a m p l e ,   m o u n t i n g   s m b : / / s a m b a . m y d o m a i n . c o m / u s r / b o b   w o u l d   b e   . . . <  @ A @ l     �� B C��   B . ( {"samba.mydomain.com", "usr/bob", true}    C � D D P   { " s a m b a . m y d o m a i n . c o m " ,   " u s r / b o b " ,   t r u e } A  E F E p       G G ������ 0 	drivelist 	DriveList��   F  H I H l    J���� J r     K L K J     M M  N�� N l 	  	 O���� O J    	 P P  Q R Q m     S S � T T $ f i l e s . m y d o m a i n . c o m R  U V U m     W W � X X  u s e r s / b o b V  Y�� Y m    ��
�� boovtrue��  ��  ��  ��   L o      ���� 0 	drivelist 	DriveList��  ��   I  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ c ] ---- Script --------------------------------------------------------------------------------    _ � ` ` �   - - - -   S c r i p t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e &   Mount Everything if not running    f � g g @   M o u n t   E v e r y t h i n g   i f   n o t   r u n n i n g d  h i h l   $ j���� j Z    $ k l�� m k I    �������� 0 isopen isOpen��  ��   l I    �� n���� 0 mountdrives mountDrives n  o�� o m    ��
�� boovtrue��  ��  ��   m I   $������
�� .aevtquitnull��� ��� null��  ��  ��  ��   i  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t   Idle Handler    u � v v    I d l e   H a n d l e r s  w x w i      y z y I     ������
�� .miscidlenmbr    ��� null��  ��   z k     	 { {  | } | l     �� ~ ��   ~ #  Mount only persistent drives     � � � :   M o u n t   o n l y   p e r s i s t e n t   d r i v e s }  � � � I     �� ����� 0 mountdrives mountDrives �  ��� � m    ��
�� boovfals��  ��   �  ��� � L    	 � � o    ���� "0 timeoutinterval TimeoutInterval��   x  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Exit Handler    � � � �    E x i t   H a n d l e r �  � � � i     � � � I     ������
�� .aevtquitnull��� ��� null��  ��   � M      � � I     ������
�� .aevtquitnull��� ��� null��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 mountdrives mountDrives �  ��� � o      ���� "0 checkpersistent checkPersistent��  ��   � Z     w � ����� � I     �������� *0 isinternetconnected isInternetConnected��  ��   � k    s � �  � � � l   ��������  ��  ��   �  ��� � X    s ��� � � k    n � �  � � � r     � � � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 	drivepair 	drivePair � o      ���� 0 srv   �  � � � r    % � � � n    # � � � 4     #�� �
�� 
cobj � m   ! "����  � o     ���� 0 	drivepair 	drivePair � o      ���� 0 vol   �  � � � r   & , � � � n   & * � � � 4   ' *�� �
�� 
cobj � m   ( )����  � o   & '���� 0 	drivepair 	drivePair � o      ���� 0 persist   �  � � � l  - -��������  ��  ��   �  � � � Z   - l � ����� � G   - 8 � � � =   - 0 � � � o   - .���� "0 checkpersistent checkPersistent � m   . /��
�� boovtrue � =   3 6 � � � o   3 4���� 0 persist   � m   4 5��
�� boovtrue � l  ; h � � � � k   ; h � �  � � � O   ; J � � � r   ? I � � � I  ? G�� ���
�� .coredoexnull���     obj  � 4   ? C�� �
�� 
cdis � o   A B���� 0 vol  ��   � o      ���� 0 	ismounted 	isMounted � m   ; < � ��                                                                                  MACS  alis    n  
Hackintosh                 Ӥ�H+   M6�
Finder.app                                                      O���p�        ����  	                CoreServices    ӥ'^      ��;     M6� M6� M6�  4Hackintosh:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p   
 H a c k i n t o s h  &System/Library/CoreServices/Finder.app  / ��   �  ��� � Z   K h � ����� � =   K N � � � o   K L���� 0 	ismounted 	isMounted � m   L M�
� boovfals � Q   Q d � ��~ � I  T [�} � �
�} .aevtmvolnull���     TEXT � o   T U�|�| 0 vol   � �{ ��z
�{ 
SRVR � o   V W�y�y 0 srv  �z   � R      �x�w�v
�x .ascrerr ****      � ****�w  �v  �~  ��  ��  ��   �   If persistent connection    � � � � 2   I f   p e r s i s t e n t   c o n n e c t i o n��  ��   �  ��u � l  m m�t�s�r�t  �s  �r  �u  �� 0 	drivepair 	drivePair � o    �q�q 0 	drivelist 	DriveList��  ��  ��   �  � � � l     �p�o�n�p  �o  �n   �  � � � l     �m � ��m   �   Don't double-open    � � � � $   D o n ' t   d o u b l e - o p e n �  � � � i     � � � I      �l�k�j�l 0 isopen isOpen�k  �j   � Z      � ��i � � =     � � � n      � � � 1    �h
�h 
prun � m      � ��                                                                                      @ alis    X  
Hackintosh                 Ӥ�H+   M7DriveMount.app                                                  �o�Ӫd�        ����  	                Applications    ӥ'^      Ӫ��     M7  'Hackintosh:Applications: DriveMount.app     D r i v e M o u n t . a p p   
 H a c k i n t o s h  Applications/DriveMount.app   / ��   � m    �g
�g boovtrue � L    
 � � m    	�f
�f boovtrue�i   � L     � � m    �e
�e boovfals �  � � � l     �d�c�b�d  �c  �b   �  � � � l     �a � ��a   � %  Test connection for keep-alive    � � � � >   T e s t   c o n n e c t i o n   f o r   k e e p - a l i v e �  ��` � i     � � � I      �_�^�]�_ *0 isinternetconnected isInternetConnected�^  �]   � Q      � � � � k        r     c     m     � ( h t t p : / / w w w . a p p l e . c o m m    �\
�\ 
url  o      �[�[ 0 test_url   	
	 l  	  r   	  n   	  1    �Z
�Z 
pipd n   	  1   
 �Y
�Y 
HOST o   	 
�X�X 0 test_url   o      �W�W 0 dec_     returns IP if active net    � 2   r e t u r n s   I P   i f   a c t i v e   n e t
 �V L     m    �U
�U boovtrue�V   � R      �T�S�R
�T .ascrerr ****      � ****�S  �R   � L     m    �Q
�Q boovfals�`       �P�P   �O�N�M�L�K�J
�O .miscidlenmbr    ��� null
�N .aevtquitnull��� ��� null�M 0 mountdrives mountDrives�L 0 isopen isOpen�K *0 isinternetconnected isInternetConnected
�J .aevtoappnull  �   � **** �I z�H�G �F
�I .miscidlenmbr    ��� null�H  �G      �E�D�E 0 mountdrives mountDrives�D "0 timeoutinterval TimeoutInterval�F 
*fk+  O� �C ��B�A!"�@
�C .aevtquitnull��� ��� null�B  �A  !  " �?
�? .aevtquitnull��� ��� null�@ )jd*   �> ��=�<#$�;�> 0 mountdrives mountDrives�= �:%�: %  �9�9 "0 checkpersistent checkPersistent�<  # �8�7�6�5�4�3�8 "0 checkpersistent checkPersistent�7 0 	drivepair 	drivePair�6 0 srv  �5 0 vol  �4 0 persist  �3 0 	ismounted 	isMounted$ �2�1�0�/�.�- ��,�+�*�)�(�'�2 *0 isinternetconnected isInternetConnected�1 0 	drivelist 	DriveList
�0 
kocl
�/ 
cobj
�. .corecnte****       ****
�- 
bool
�, 
cdis
�+ .coredoexnull���     obj 
�* 
SRVR
�) .aevtmvolnull���     TEXT�(  �'  �; x*j+   p j�[��l kh ��k/E�O��l/E�O��m/E�O�e 
 �e �& 2� *�/j E�UO�f   ��l 
W X  hY hY hOP[OY��Y h �& ��%�$&'�#�& 0 isopen isOpen�%  �$  &  '  ��"
�" 
prun�# ��,e  eY f �! �� �()��! *0 isinternetconnected isInternetConnected�   �  ( ��� 0 test_url  � 0 dec_  ) �����
� 
url 
� 
HOST
� 
pipd�  �  �  ��&E�O��,�,E�OeW 	X  f �*��+,�
� .aevtoappnull  �   � ***** k     $--  /..  H//  h��  �  �  +  , �� S W����� � "0 timeoutinterval TimeoutInterval� 0 	drivelist 	DriveList� 0 isopen isOpen� 0 mountdrives mountDrives
� .aevtquitnull��� ��� null� %�E�O��emvkvE�O*j+  *ek+ Y *j  ascr  ��ޭ