FasdUAS 1.101.10   ��   ��    k             l     ��  ��     # Auth: Ian McLinden     � 	 	 ( #   A u t h :   I a n   M c L i n d e n   
  
 l     ��  ��     # Drive Auto Mount     �   $ #   D r i v e   A u t o   M o u n t      l     ��  ��     #     �    #      l     ��  ��    ] W# Note: This assumes already saved login keys, else the script will ask for credentials     �   � #   N o t e :   T h i s   a s s u m e s   a l r e a d y   s a v e d   l o g i n   k e y s ,   e l s e   t h e   s c r i p t   w i l l   a s k   f o r   c r e d e n t i a l s      l     ��  ��    # # every time timeout expires.     �   : #   e v e r y   t i m e   t i m e o u t   e x p i r e s .      l     ��������  ��  ��       !   l     �� " #��   " b \ ---- Params -------------------------------------------------------------------------------    # � $ $ �   - - - -   P a r a m s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )   Edit to set idle timeout    * � + + 2   E d i t   t o   s e t   i d l e   t i m e o u t (  , - , p       . . ������ "0 timeoutinterval TimeoutInterval��   -  / 0 / l     1���� 1 r      2 3 2 m     ����  3 o      ���� "0 timeoutinterval TimeoutInterval��  ��   0  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 I C Edit Drive list with mount entries: {"server","volume",persistent}    9 � : : �   E d i t   D r i v e   l i s t   w i t h   m o u n t   e n t r i e s :   { " s e r v e r " , " v o l u m e " , p e r s i s t e n t } 7  ; < ; l     �� = >��   = J D For Example, mounting smb://samba.mydomain.com/usr/bob would be ...    > � ? ? �   F o r   E x a m p l e ,   m o u n t i n g   s m b : / / s a m b a . m y d o m a i n . c o m / u s r / b o b   w o u l d   b e   . . . <  @ A @ l     �� B C��   B . ( {"samba.mydomain.com", "usr/bob", true}    C � D D P   { " s a m b a . m y d o m a i n . c o m " ,   " u s r / b o b " ,   t r u e } A  E F E p       G G ������ 0 	drivelist 	DriveList��   F  H I H l    J���� J r     K L K J     M M  N�� N l 	  	 O���� O J    	 P P  Q R Q m     S S � T T $ e x a m p l e . d o m a i n . c o m R  U V U m     W W � X X  u s r / b o b V  Y�� Y m    ��
�� boovtrue��  ��  ��  ��   L o      ���� 0 	drivelist 	DriveList��  ��   I  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ c ] ---- Script --------------------------------------------------------------------------------    _ � ` ` �   - - - -   S c r i p t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ]  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e   Mount Everything    f � g g "   M o u n t   E v e r y t h i n g d  h i h l    j���� j I    �� k���� 0 mountdrives mountDrives k  l�� l m    ��
�� boovtrue��  ��  ��  ��   i  m n m l     ��������  ��  ��   n  o p o i      q r q I     ������
�� .miscidlenmbr    ��� null��  ��   r k     	 s s  t u t l     �� v w��   v #  Mount only persistent drives    w � x x :   M o u n t   o n l y   p e r s i s t e n t   d r i v e s u  y z y I     �� {���� 0 mountdrives mountDrives {  |�� | m    ��
�� boovfals��  ��   z  }�� } L    	 ~ ~ o    ���� "0 timeoutinterval TimeoutInterval��   p   �  l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 mountdrives mountDrives �  ��� � o      ���� "0 checkpersistent checkPersistent��  ��   � Z     w � ����� � I     �������� 0 checkinternet checkInternet��  ��   � k    s � �  � � � l   ��������  ��  ��   �  ��� � X    s ��� � � k    n � �  � � � r     � � � n     � � � 4    �� �
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
 H a c k i n t o s h  &System/Library/CoreServices/Finder.app  / ��   �  ��� � Z   K h � ����� � =   K N � � � o   K L���� 0 	ismounted 	isMounted � m   L M��
�� boovfals � Q   Q d � ��� � I  T [�� � �
�� .aevtmvolnull���     TEXT � o   T U���� 0 vol   � �� ���
�� 
SRVR � o   V W���� 0 srv  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��   �   If persistent connection    � � � � 2   I f   p e r s i s t e n t   c o n n e c t i o n��  ��   �  ��� � l  m m��������  ��  ��  ��  �� 0 	drivepair 	drivePair � o    ���� 0 	drivelist 	DriveList��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��~�}�  �~  �}   �  ��| � i     � � � I      �{�z�y�{ 0 checkinternet checkInternet�z  �y   � Q      � � � � k     � �  � � � r     � � � c     � � � m     � � � � � ( h t t p : / / w w w . a p p l e . c o m � m    �x
�x 
url  � o      �w�w 0 test_url   �  � � � l  	  � � � � r   	  � � � n   	  � � � 1    �v
�v 
pipd � n   	  � � � 1   
 �u
�u 
HOST � o   	 
�t�t 0 test_url   � o      �s�s 0 dec_   �   returns IP if active net    � � � � 2   r e t u r n s   I P   i f   a c t i v e   n e t �  ��r � L     � � m    �q
�q boovtrue�r   � R      �p�o�n
�p .ascrerr ****      � ****�o  �n   � L     � � m    �m
�m boovfals�|       �l � � � � ��l   � �k�j�i�h
�k .miscidlenmbr    ��� null�j 0 mountdrives mountDrives�i 0 checkinternet checkInternet
�h .aevtoappnull  �   � **** � �g r�f�e � ��d
�g .miscidlenmbr    ��� null�f  �e   �   � �c�b�c 0 mountdrives mountDrives�b "0 timeoutinterval TimeoutInterval�d 
*fk+  O� � �a ��`�_ � ��^�a 0 mountdrives mountDrives�` �] ��]  �  �\�\ "0 checkpersistent checkPersistent�_   � �[�Z�Y�X�W�V�[ "0 checkpersistent checkPersistent�Z 0 	drivepair 	drivePair�Y 0 srv  �X 0 vol  �W 0 persist  �V 0 	ismounted 	isMounted � �U�T�S�R�Q�P ��O�N�M�L�K�J�U 0 checkinternet checkInternet�T 0 	drivelist 	DriveList
�S 
kocl
�R 
cobj
�Q .corecnte****       ****
�P 
bool
�O 
cdis
�N .coredoexnull���     obj 
�M 
SRVR
�L .aevtmvolnull���     TEXT�K  �J  �^ x*j+   p j�[��l kh ��k/E�O��l/E�O��m/E�O�e 
 �e �& 2� *�/j E�UO�f   ��l 
W X  hY hY hOP[OY��Y h � �I ��H�G � ��F�I 0 checkinternet checkInternet�H  �G   � �E�D�E 0 test_url  �D 0 dec_   �  ��C�B�A�@�?
�C 
url 
�B 
HOST
�A 
pipd�@  �?  �F  ��&E�O��,�,E�OeW 	X  f � �> ��=�< � ��;
�> .aevtoappnull  �   � **** � k      � �  / � �  H � �  h�:�:  �=  �<   �   � �9�8 S W�7�6�9 �8 "0 timeoutinterval TimeoutInterval�7 0 	drivelist 	DriveList�6 0 mountdrives mountDrives�; �E�O��emvkvE�O*ek+ ascr  ��ޭ