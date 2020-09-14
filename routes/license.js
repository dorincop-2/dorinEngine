wiki.get('/License', async function(req, res) {
	var sl = '';
	try {
		sl = await readFile('./skins/' + getSkins(req) + '/license.html');
	} catch(e) {
		sl = '(��Ų ���̼����� �ҷ��� �� �����ϴ�.)';
	}

	res.send(await render(req, '�ٳ��� ����', `
		<h2>�ٳ��� ${versionInfo.major}.${versionInfo.minor}.${versionInfo.revesion}</h2>
		<p>�ӽ������� GNU �Ϲ� ���� ��� �㰡�� ���� 3�� ����մϴ�.</p>
		
		${sl}
	`));
});