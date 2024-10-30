function filterVideos(category) {
    const videos = document.querySelectorAll('.video-item');
    
    videos.forEach(video => {
      if (category === 'all') {
        video.style.display = 'block';
      } else {
        video.style.display = video.classList.contains(category) ? 'block' : 'none';
      }
    });
  }
  