## �p�r  

Amazon Photo�ɑ�ʂ̂��C�ɓ���摜���A�b�v���[�h����  
odrive_backup.bat�F8�s�ڂŎw�肳�ꂽ�p�X�z���̃t�@�C���̃o�b�N�A�b�v���J�n  

Amazon Photo��API�����ݎ�t�I�������ׁAodrive�𗘗p��CLI�Ńo�b�N�A�b�v����(GUI�\�t�g�̃C���X�g�[���͕s�v)

## �Z�b�g�A�b�v  

�������Z�b�g�A�b�v��������o���ׁ̈A�l�܂����ꍇ�ȉ��Q�l�����N�Q��  
https://tech.blog.uribou.me/acd_with_odrive/

https://docs.odrive.com/docs/odrive-sync-agent



1�Dodrive�A�J�E���g���쐬  
https://www.odrive.com/account/myodrive

2�DAmazon�A�J�E���g�ƘA�g����  

3�DAmazon Drive��Auth Keys���m�F���T���Ă���  
https://www.odrive.com/account/authcodes

4�Dsetup.txt��4�s��[auth-code]�Ɋm�F�����R�[�h����͂���([]�͕s�v)  

5�D�Ǘ��Ҍ�����powershell���J���Asetup.txt�̃R�}���h���ォ�珇�Ɏ��{  

6�D�ȉ��R�}���h�����{���AhasSession:True�ł���Ί���
```
python "$HOME/.odrive-agent/bin/odrive.py status"
```

## �g����  

odrive_backup.bat�����s����  

## ���ӓ_  

odrive_backup.bat�͊J�n���ɈȑO��backup job�������ĐV�K��backup�R�}���h�����s���Ă��邪�A  
����͂����܂Łujob��ǉ����Ă��邾���v�Ȃ̂�bat�����������A�b�v���[�h�����ł͂Ȃ��B  
bat���̂�job�ǉ������シ�����ėǂ����A�A�b�v���[�h���ɒ[�����ʐM�s�\�ɂȂ�ƃA�b�v���[�h�͒��f�����B

## ���̑�  

- backup���I��������ǂ������ǂ����f����Ηǂ��H  
 - �^�X�N�}�l�[�W���[���ŏ��ш�����j�^�[���邵�Ĕ��f���邵���Ȃ�  

- �[���ċN����R�}���h���g���Ȃ��Ȃ���  
 - �_�E�����[�h����Ă���͂���odriveagent.exe���Ď��s����K�v�����邩������Ȃ�  

- �t�@�C���̃_�E�����[�h�͕s�H  
 - sync�ŉ\�Ȃ͂������t�@�C�����삪�ł��Ȃ������׈�U���߁B  
 - �K��Amazon Photo�Ō���(�O����v)���@�\����̂ŁA����DL�������t�@�C���̘A�Ԕ�������  

- �t�@�C�����X�g�͎擾�ł��Ȃ��H  
 - �ł��Ȃ��炵���B  

- Amazon Drive�ł����Ă��A�b�v���[�h�t�@�C�����摜�ł���΃t�H���_�������邱�Ƃ��\�B�Ή����������֗��ł́H  
 - 2023�N����Amazon Drive���p�~�����炵���̂Œ��߁BAmazon Drive��API�����S�Ɏg���Ȃ��Ȃ邾�낤���炱����g���Ȃ��Ȃ邩���B  
