(() => {
  const section = document.querySelector('[data-announcement-limit]');
  const items = section.querySelectorAll('[data-deadline]');
  const limit = Number(section.dataset.announcementLimit);
  const londonDate = new Intl.DateTimeFormat('en-GB', {
    timeZone: 'Europe/London',
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  });

  function updateAnnouncements() {
    const parts = Object.fromEntries(
      londonDate.formatToParts(new Date()).map(({ type, value }) => [type, value])
    );
    const today = `${parts.year}-${parts.month}-${parts.day}`;
    let visible = 0;

    for (const item of items) {
      const deadline = item.dataset.deadline;
      item.hidden = visible >= limit || (deadline !== '' && deadline < today);
      if (!item.hidden) visible += 1;
    }

    section.hidden = visible === 0;
  }

  updateAnnouncements();
  window.addEventListener('pageshow', updateAnnouncements);
  document.addEventListener('visibilitychange', updateAnnouncements);
  window.setInterval(updateAnnouncements, 60_000);
})();
