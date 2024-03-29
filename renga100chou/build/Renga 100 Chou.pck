GDPC                                                                               D   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.s3tc.stex   �      �      K�Z�N�CaV�։�   res://Spatial.tscn  �      �      Hs��R�:�������z    res://cameramovement.gd.remap   �5      )       �	Q�wENX?�̝���   res://cameramovement.gdc�      �      �5�)�}��E#��2(M   res://clone100.gd.remap �5      #       �~�7��շ�G�"�   res://clone100.gdc  �      Q      yq)�nи08ҭW�'   res://default_env.tres  �      �       um�`�N��<*ỳ�8   res://hideOnH.gd.remap  �5      "       �`lP�h�xb ���qu   res://hideOnH.gdc   �      M      ��P������g��   res://icon.png  P6      �      G1?��z�c��vN��   res://icon.png.import   p0      j      |-���s��������"   res://project.binary@C      �      �5g�t�;�@��ӵ   res://reloader.gd.remap  6      #       �Ho�Ke�i�uh�\[   res://reloader.gdc  �3      �      hrJYL��r�P�N5        [gd_scene load_steps=15 format=2]

[ext_resource path="res://clone100.gd" type="Script" id=1]
[ext_resource path="res://cameramovement.gd" type="Script" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]
[ext_resource path="res://reloader.gd" type="Script" id=4]
[ext_resource path="res://hideOnH.gd" type="Script" id=5]

[sub_resource type="PhysicsMaterial" id=7]
friction = 0.74

[sub_resource type="CubeMesh" id=3]
size = Vector3( 0.5, 2, 1.2 )

[sub_resource type="SpatialMaterial" id=4]
albedo_color = Color( 0.941176, 0.356863, 0.192157, 1 )

[sub_resource type="BoxShape" id=5]
extents = Vector3( 0.25, 1, 0.6 )

[sub_resource type="PhysicsMaterial" id=10]
rough = true

[sub_resource type="PlaneMesh" id=1]
size = Vector2( 300, 300 )

[sub_resource type="SpatialMaterial" id=12]
albedo_color = Color( 0.517647, 0.380392, 0.180392, 1 )
albedo_texture = ExtResource( 3 )
metallic_specular = 0.38

[sub_resource type="BoxShape" id=6]
extents = Vector3( 150, 1, 150 )

[sub_resource type="Environment" id=9]
background_mode = 1
background_color = Color( 0, 0.462745, 1, 1 )
ambient_light_color = Color( 0.396078, 0.462745, 0.764706, 1 )

[node name="Spatial" type="Spatial"]
script = ExtResource( 4 )

[node name="dominos" type="RigidBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -59.4647, 1, 0 )
mass = 0.25
physics_material_override = SubResource( 7 )
gravity_scale = 2.0
script = ExtResource( 1 )

[node name="MeshInstance2" type="MeshInstance" parent="dominos"]
mesh = SubResource( 3 )
skeleton = NodePath("../..")
material/0 = SubResource( 4 )

[node name="CollisionShape" type="CollisionShape" parent="dominos"]
shape = SubResource( 5 )

[node name="ground" type="RigidBody" parent="."]
mode = 1
physics_material_override = SubResource( 10 )

[node name="MeshInstance" type="MeshInstance" parent="ground"]
mesh = SubResource( 1 )
skeleton = NodePath("../..")
material/0 = SubResource( 12 )

[node name="CollisionShape" type="CollisionShape" parent="ground"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -1, 0 )
shape = SubResource( 6 )

[node name="trigger domino" type="RigidBody" parent="."]
transform = Transform( 0.96178, 0.273825, 0, -0.273825, 0.96178, 0, 0, 0, 1, -61.0318, 1.16487, 0 )
mass = 0.25
physics_material_override = SubResource( 7 )
gravity_scale = 2.0

[node name="MeshInstance2" type="MeshInstance" parent="trigger domino"]
mesh = SubResource( 3 )
skeleton = NodePath("../..")
material/0 = SubResource( 4 )

[node name="CollisionShape" type="CollisionShape" parent="trigger domino"]
shape = SubResource( 5 )

[node name="DirectionalLight" type="DirectionalLight" parent="."]
transform = Transform( 0.959457, 0.186192, -0.211602, 0.101811, 0.471113, 0.876177, 0.262825, -0.862198, 0.433056, -12.9223, 28.9435, 0 )
shadow_enabled = true

[node name="Spatial" type="Spatial" parent="."]
transform = Transform( 0.678031, 0, -0.735033, 0, 1, 0, 0.735033, 0, 0.678031, -63.5113, 9.386, 22.253 )
script = ExtResource( 2 )

[node name="Camera" type="Camera" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 0.979501, 0.201437, 0, -0.201437, 0.979501, 0, 0, 0 )
environment = SubResource( 9 )
fov = 60.0
far = 1000.0

[node name="Node2D" type="Node2D" parent="."]
script = ExtResource( 5 )

[node name="RichTextLabel" type="RichTextLabel" parent="Node2D"]
margin_left = 13.0
margin_top = 14.0
margin_right = 290.0
margin_bottom = 95.0
text = "WASD to move
Space to go up, shift to go down
R to reload scene (and lock cursor on browsers)
H to hide this"
GDSC         !   �      ������ڶ   ��������Ӷ��   ����������׶   �����׶�   �����϶�   �������Ӷ���   ����¶��   ���������Ӷ�   �������������������   �����¶�   ����¶��   ��������������������ض��   �������ض���   ϶��   �������Ӷ���   ζ��   ���������������Ŷ���   ����׶��   ��������������ض   ���������Ķ�   ��������Ӷ��   ����������������Ҷ��             Camera    ����MbP?            left      right         up        down            fly       sink                                                    	      
               %      -      .      /      6      <      H      V      c      n      z      �      �      �      �      �      �      �      �      �       �   !   3YYYYYY;�  �  PRQY;�  V�  YYY0�  PQV�  �  �  P�  Q�  �  T�  �  T�  YYY0�	  P�
  QV�  &�
  4�  V�  �  T�  �
  T�  T�  �  �  �  T�  T�  �
  T�  T�  �  �  &�  T�  T�  	Z�  V�  �  T�  T�  Z�  �  '�  T�  T�  Z�  V�  �  T�  T�  Z�  YY0�  P�  QV�  ;�  �  T�  P�  R�  R�  R�  Q�  �  �  �  P�  P�  T�  RR�  T�  QQ�  �  &�  T�  P�	  QV�  �  P�  PR�  �  RQQ�  &�  T�  P�
  QV�  �  P�  PR�  �  RQQY`              GDSC            R      ��������϶��   �����϶�   ���ζ���   �߶�   ��ƶ   ��������Ӷ��   ����������������嶶�   ��������۶��   ���������Ҷ�   ���������¶�   ������������Ҷ��  ffffff @   d            333333 @   	   add_child                                                    	   	   
   
                     '      ;      @      K      L      M      N      O      P      3YYYYYYYYY0�  PQV�  ;�  S�  )�  �K  P�  QV�  ;�  �  P�  Q�  �  T�  �  T�  T�  P�  P�  R�  R�  QQ�  �  �  S�  �	  PQT�
  P�  R�  QYYYYYY`               [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            %      ���ӄ�   �����¶�   ����   ����¶��   ���������������������Ҷ�   ������Ӷ      hide                                                        	   	   
   
                                  !      "      #      3YYYYYYYYY0�  P�  QV�  &�  T�  PQV�  �  �  YYYYYY`   GDST@   @       ���m�Fn�+*"�   �*�    �2"}U- �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU   �������2+*UU  �*Z    �2"}Ux���M���+*"   �*P   �2
"�// ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ �������������* � @�2
"~��� �������2+* ������������ ������������ ������������ ������C�2UUU ���������2U�� ���������2u�� ���������2UV\X ���������2U�5% ���������2]��� ���������2UV� ������C�2UUUT ������������ ������������ ������������ �������2+*PPPP �������2+* ������������ ������������ ������������ ������Մ�2�� ��������wLTT\\ �������״���� ���������[R�U ���������[�@U �������״���� ��������wL55 ������Մ�2TTVV ������������ ������������ ������������ �������2+*PPPP �������2+* ������������ ���������2U�5� ���������2U`
� ���������2�%�� ��������wL\VUU �������״���� �������״���� �������״���� �������״���� ��������wL5�UU ���������2WX� ���������2U	�� ���������2UV\r ������������ �������2+*PPPP �������2+* ���������2UU� ��������PK���� �������״���� ������mwLXUUU �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� ������mwL%UUU �������״���� ��������PKK�?? ���������2UUVT �������2+*PPPP �������2+* ���������2UUU ���������2��� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� ���������2/�Kr ���������2TUUU �������2+*PPPP �������2+* ������������ ���������2���� �������״���� ���������Z��C ��������B� �U ��������wLUW\Z ��������wLUUU5 ��������wLUUU\ ��������wLU�5� ��������B
 VU ���������Z���� �������״���� ���������2RRRR ������������ �������2+*PPPP �������2+* ������������ ���������2���� �������״���� ��������Bbc� ������Y�BUUU7 �������wLSS\T ��������wL5555 ��������wL\\\\ �������wL��5 ������X�BUUU� ��������B���� �������״���� ���������2RRRR ������������ �������2+*PPPP �������2+* ������������ ���������2���� �������״���� ������=�wL5UUU ��������wL�UUU ������wLwL     ��������wL5�UU ��������wL\WUU ������wLwL     ��������wLUUU ������=�wL\UUU �������״���� ���������2RRRR ������������ �������2+*PPPP �������2+* ������������ ���������2�� ��������wL�
UU ��������wL~ -% �������TwLUUUV ��������wLU� ��������wLU� � ��������wLU� � ��������wLUWTT �������TwLUUU� ��������wL� xX ��������wL*�UU ���������2PPRR ������������ �������2+*PPPP �������2+* ������������ ���������2�%5 ������^�wLUUWT ��������wL%5�U ��������wLW �U ��������wL

U ������;�wLTVWU ������;�wL��U ��������wLT��U ��������wL� �U ��������wLX\WU ������^�wLUU� ���������2ZX\T ������������ �������2+*PPPP �������2+* ������������ ������St�2UUU ���������2��5 ��������wLUUWx �������״���� �������״���� �������״���� �������״���� �������״���� �������״���� ��������wLUU�- ���������2/�p\ ������St�2TUUU ������������ �������2+*PPPP �������2+* ������������ ������������ �������:�2?��� ���������2�UU ���������2� �U ���������2��U ���������[U � ���������[U� _ ���������2���U ���������2� zU ���������2�^UU �������:�2���� ������������ ������������ �������2+*PPPP�*0  �2"%5� ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ ������������ �������������* ` 
 �2
"���~��o�i�+*"   �*    �N�2"-U} �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU �������2+*  UU�*    �5�2"�xU}�?���m�+*
"�   �������2+*U%	 �������2+*U    �������2+*U    �������2+*U    �������2+*U    �������2+*U    �������2+*U   �!���?�2+*UX`@ �������2+* ������������ ���������2��� ���������2rJ� ���������2���� ���������2WPss ������������ �������2+*@@@@ �������c+*���= �������֮2�!�� ������߮:���� �������״���� �������״���� ������߮:c/�� �������֮2{H/? �������c+*| ������PK+*=��� �������֮2���� ��������IJ��Z ������{�wLUUW� ������{�wLUU� ��������IJ��� �������֮2?�OO ������PK+*| �������2+* �������ή2���� ��������BXҋ� ��������wL�U ��������wL��VU ��������B%��� �������ή2OOOO �������2+*@@@@ �������2+* ���������2��� ������^�wLXQ�� �������wL��rZ �������wL_b�� ������^�wL%EJ_ ���������2@Ook �������2+*@@@@ �������2+* �������֮2�UU �������Ʈ2���� ������Z�wLUU+ ������Z�wLUU�� �������Ʈ2���W �������֮2STUU �������2+*@@@@�����o0�2+*	%U �������2+*   U �������2+*   U �������2+*   U �������2+*   U �������2+*   U �������2+*   U���®2+*@`XUL�ȟ�����2+*� ��������l2UU�# ��������l2UUc�L��?����2+*��� ��������l2%��� ������ڝwL^UUx ������ڝwL�UU- ��������l2XrRZ ������ڕl2��%� ������|��R��,� ������|��R��8� ������ڕl2ZZXZL�������x�+*5UUU ������y�l2�UU ������y�l2��UUL������x�+*\UUU���������tl2U%����������tl2UXB@��������z}l2)�U�������z}l2h@zU�������u�2}��}���   �S�K������     ������            [remap]

importer="texture"
type="StreamTexture"
path.s3tc="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.s3tc.stex"
path.etc="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.etc.stex"
metadata={
"imported_formats": [ "s3tc", "etc" ],
"vram_texture": true
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.s3tc.stex", "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.etc.stex" ]

[params]

compress/mode=2
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=true
flags/filter=true
flags/mipmaps=true
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
      GDSC            2      ������ڶ   �����϶�   �����¶�   �����¶�   ����¶��   ���������������������Ҷ�   �������Ӷ���   �������������������Ӷ���      reload                                                   	   	   
   
                                 $      ,      -      .      /      0      3YYYYYYYYY0�  PQV�  -YYY0�  P�  QV�  &�  T�  PQV�  �  PQT�  PQYYYYY`            [remap]

path="res://cameramovement.gdc"
       [remap]

path="res://clone100.gdc"
             [remap]

path="res://hideOnH.gdc"
              [remap]

path="res://reloader.gdc"
             �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Renga 100 Chou     application/run/main_scene         res://Spatial.tscn     application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/up              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script      
   input/down              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script      
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      	   input/fly�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script      
   input/sink�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/reload�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   R      physical_scancode             unicode           echo          script      
   input/hide�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   H      physical_scancode             unicode           echo          script         physics/common/physics_fps      �   !   physics/common/physics_jitter_fix          )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres               