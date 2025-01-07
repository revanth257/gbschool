/**
 * 
 */

 var previous = document.getElementById('btnPrevious')
var next = document.getElementById('btnNext')
var gallery = document.getElementById('image-gallery')
var pageIndicator = document.getElementById('page')
var galleryDots = document.getElementById('gallery-dots')

var images = [
  {
    draw: 1,
    recordsTotal: 16,
    recordsFiltered: 4,
    data: [
      {
        title: 'Image 1',
        source: 'https://picsum.photos/500/500?random&img=1'
      },
      {
        title: 'Image 2',
        source: 'https://picsum.photos/500/500?random&img=2'
      },
      {
        title: 'Image 3',
        source: 'https://picsum.photos/500/500?random&img=3'
      },
      {
        title: 'Image 4',
        source: 'https://picsum.photos/500/500?random&img=4'
      },
      {
        title: 'Image 5',
        source: 'https://picsum.photos/500/500?random&img=5'
      },
      {
        title: 'Image 6',
        source: 'https://picsum.photos/500/500?random&img=6'
      },
      {
        title: 'Image 7',
        source: 'https://picsum.photos/500/500?random&img=7'
      },
      {
        title: 'Image 8',
        source: 'https://picsum.photos/500/500?random&img=8'
      },
      {
        title: 'Image 1',
        source: 'https://picsum.photos/500/500?random&img=1'
      },
      {
        title: 'Image 2',
        source: 'https://picsum.photos/500/500?random&img=2'
      },
      {
        title: 'Image 3',
        source: 'https://picsum.photos/500/500?random&img=3'
      },
      {
        title: 'Image 4',
        source: 'https://picsum.photos/500/500?random&img=4'
      },
      {
        title: 'Image 5',
        source: 'https://picsum.photos/500/500?random&img=5'
      },
      {
        title: 'Image 6',
        source: 'https://picsum.photos/500/500?random&img=6'
      },
      {
        title: 'Image 7',
        source: 'https://picsum.photos/500/500?random&img=7'
      },
      {
        title: 'Image 8',
        source: 'https://picsum.photos/500/500?random&img=8'
      }
    ]
  }
]

var perPage = images[0].recordsFiltered
var page = images[0].draw
var pages = Math.ceil(images[0].recordsTotal / perPage)

// Gallery dots
for (var i = 0; i < pages; i++) {
  var dot = document.createElement('button')
  var dotSpan = document.createElement('span')
  var dotNumber = document.createTextNode(i + 1)
  dot.classList.add('gallery-dot')
  dot.setAttribute('data-index', i)
  dotSpan.classList.add('sr-only')

  dotSpan.appendChild(dotNumber)
  dot.appendChild(dotSpan)

  dot.addEventListener('click', function (e) {
    var self = e.target
    goToPage(self.getAttribute('data-index'))
  })

  galleryDots.appendChild(dot)
}

// Previous Button
previous.addEventListener('click', function () {
  if (page === 1) {
    page = 1
  } else {
    page--
    showImages()
  }
})

// Next Button
next.addEventListener('click', function () {
  if (page < pages) {
    page++
    showImages()
  }
})

// Jump to page
function goToPage (index) {
  index = parseInt(index)
  page = index + 1

  showImages()
}

// Load images
function showImages () {
  while (gallery.firstChild) gallery.removeChild(gallery.firstChild)

  var offset = (page - 1) * perPage
  var dots = document.querySelectorAll('.gallery-dot')

  for (var i = 0; i < dots.length; i++) {
    dots[i].classList.remove('active')
  }

  dots[page - 1].classList.add('active')

  for (var i = offset; i < offset + perPage; i++) {
    if (images[0].data[i]) {
      var template = document.createElement('div')
      var title = document.createElement('p')
      var titleText = document.createTextNode(images[0].data[i].title)
      var img = document.createElement('img')

      template.classList.add('template')
      img.setAttribute('src', images[0].data[i].source)
      //   img.setAttribute('alt', images[i].title);

      //   title.appendChild(titleText);
      template.appendChild(img)
      //   template.appendChild(title);
      gallery.appendChild(template)
    }
  }

  // Animate images
  var galleryItems = document.querySelectorAll('.template')
  for (var i = 0; i < galleryItems.length; i++) {
    var onAnimateItemIn = animateItemIn(i)
    setTimeout(onAnimateItemIn, i * 100)
  }

  function animateItemIn (i) {
    var item = galleryItems[i]
    return function () {
      item.classList.add('animate')
    }
  }

  // Update page indicator
  pageIndicator.textContent = 'Page ' + page + ' of ' + pages
}

showImages()
