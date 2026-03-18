const app = document.getElementById('app');
const nameEl = document.getElementById('name');
const passportEl = document.getElementById('passport');
const genderEl = document.getElementById('gender');
const diamondsEl = document.getElementById('diamonds');
const jobEl = document.getElementById('job');
const btnClose = document.getElementById('btn-close');
const avatarEl = document.getElementById('avatar');

function close() {
	fetch(`https://${GetParentResourceName()}/Close`, {
		method: 'POST',
		headers: { 'Content-Type': 'application/json; charset=UTF-8' },
		body: JSON.stringify({})
	});
}

window.addEventListener('message', (event) => {
	const data = event.data;
	if (!data || !data.Action) return;

	if (data.Action === 'Open') {
		const p = data.Payload || {};
		nameEl.textContent = p.Name || '';
		passportEl.textContent = String(p.Passport || '');
		genderEl.textContent = p.Gender || '';
		diamondsEl.textContent = String(p.Diamonds || 0);
		jobEl.textContent = p.Job || '';

		if (p.Avatar && p.Avatar !== '') {
			avatarEl.src = p.Avatar;
			avatarEl.classList.remove('no-photo');
			avatarEl.onerror = function () {
				this.src = '';
				this.onerror = null;
				this.classList.add('no-photo');
			};
		} else {
			avatarEl.src = '';
			avatarEl.classList.add('no-photo');
		}

		app.classList.remove('hidden');
	}

	if (data.Action === 'UpdateAvatar') {
		const p = data.Payload || {};
		if (p.Avatar && p.Avatar !== '') {
			avatarEl.src = p.Avatar;
			avatarEl.classList.remove('no-photo');
			avatarEl.onerror = function () {
				this.src = '';
				this.onerror = null;
				this.classList.add('no-photo');
			};
		}
	}
});

btnClose.addEventListener('click', () => {
	app.classList.add('hidden');
	close();
});

document.addEventListener('keydown', (e) => {
	if (e.key === 'F11') {
		e.preventDefault();
		app.classList.add('hidden');
		close();
	}
});
