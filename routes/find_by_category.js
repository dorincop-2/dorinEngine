// ������ �з� ����!

wiki.get('/FindByCategories', async (req, res) => {
	const categoryCount = req.query['count'];
	
	if(!categoryCountres) {
		res.send(await render(req, '�з��� ���� ã��', `
			<form method=get>
				<
			</form>
		`, _, _, _, 'find_by_categories'));
	}
});