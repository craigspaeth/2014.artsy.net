{ translateY, opacity } = transitions = require './transitions'

module.exports = [
  # galleries-shared

  { # In
    stage: '#frame-galleries-shared', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
    ].concat(transitions.bisectedColumnsIn('galleries-shared'))
  }
  { # Hold
    stage: '#frame-galleries-shared', duration: '100%', easing: 'linear'
    actors: [
      element: '.frame--vcenter', translateY: translateY.hold
    ].concat(transitions.bisectedColumnsHold('galleries-shared'))
  }
  { # Out
    stage: '#frame-galleries-shared', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
    ].concat(transitions.bisectedColumnsOut('galleries-shared'))
  }

  # inquiries-graph

  { # In
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: [30, 20] }
      { element: '.graph', opacity: opacity.in }
      { element: '.graph--caption', opacity: opacity.in }
    ]
  }

  { # Progress
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [20, 10] }
      { element: '#graph-overlay--data', translateX: [0, 103] }
      { element: '#graph-overlay--label_2012', opacity: opacity.out }
    ]
  }
  { # Progress
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [10, 0] }
      { element: '#graph-overlay--data', translateX: [103, 206] }
      { element: '#graph-overlay--label_2013', opacity: opacity.out }
    ]
  }
  { # Progress
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [0, -10] }
      { element: '#graph-overlay--data', translateX: [206, 309] }
      { element: '#graph-overlay--label_2014', opacity: opacity.out }
    ]
  }
  { # Progress
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: [-10, -20] }
      { element: '#graph-overlay--data', translateX: [309, 412] }
      { element: '#graph-overlay--label_2015', opacity: opacity.out }
    ]
  }

  { # Out
    stage: '#frame-inquiries-graph', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: [-20, -30] }
      { element: '.graph', opacity: opacity.out }
      { element: '.graph--caption', opacity: opacity.out }
    ]
  }

  # museums-and-institutions

  { # In
    stage: '#frame-museums-and-institutions', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#museums-and-institutions-backdrop', opacity: opacity.in, scale: [1, 1.05] }
    ]
  }
  { # Hold
    stage: '#frame-museums-and-institutions', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '#museums-and-institutions-backdrop', scale: [1.05, 1.1] }
    ]
  }
  { # Out
    stage: '#frame-museums-and-institutions', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#museums-and-institutions-backdrop', opacity: opacity.out, scale: [1.1, 1.15] }
    ]
  }

  # educational-database

  { # In
    stage: '#frame-educational-database', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#columns', opacity: [0, 1] }
      { element: '.column-0', translateY: [-25, 0] }
      { element: '.column-1', translateY: [25, 0] }
      { element: '.column-2', translateY: [-25, 0] }
      { element: '.column-3', translateY: [25, 0] }
    ]
  }
  { # Hold
    stage: '#frame-educational-database', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '.column-0', translateY: [0, 75] }
      { element: '.column-1', translateY: [0, -75] }
      { element: '.column-2', translateY: [0, 75] }
      { element: '.column-3', translateY: [0, -75] }
    ]
  }
  { # Out
    stage: '#frame-educational-database', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#columns', opacity: [1, 0] }
      { element: '.column-0', translateY: [75, 150] }
      { element: '.column-1', translateY: [-75, -150] }
      { element: '.column-2', translateY: [75, 150] }
      { element: '.column-3', translateY: [-75, -150] }
    ]
  }

  # added-categories

  { # In
    stage: '#frame-added-categories', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#categories', translateY: [150, 50] }
      { element: '#category-0', opacity: [0, 1] }
      { element: '#category-1', opacity: [-0.25, 1] }
      { element: '#category-2', opacity: [-0.5, 1] }
      { element: '#category-3', opacity: [-0.75, 1] }
    ]
  }
  { # Hold
    stage: '#frame-added-categories', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      { element: '#categories', translateY: [50, -50] }
    ]
  }
  { # Out
    stage: '#frame-added-categories', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#categories', translateY: [-50, -150] }
      { element: '#category-0', opacity: [1, -0.75]}
      { element: '#category-1', opacity: [1, -0.5] }
      { element: '#category-2', opacity: [1, -0.25] }
      { element: '#category-3', opacity: [1, 0] }
    ]
  }

  # benefit-auctions-raised

  { # In
    stage: '#frame-benefit-auctions-raised', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
    ].concat(transitions.bisectedColumnsIn('benefit-auctions-raised'))
  }
  { # Hold
    stage: '#frame-benefit-auctions-raised', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ].concat(transitions.bisectedColumnsHold('benefit-auctions-raised'))
  }
  { # Out
    stage: '#frame-benefit-auctions-raised', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
    ].concat(transitions.bisectedColumnsOut('benefit-auctions-raised'))
  }

  # powered-by-artsy

  { # In
    stage: '#frame-powered-by-artsy', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
    ].concat(transitions.bisectedColumnsIn('powered-by-artsy'))
  }
  { # Hold
    stage: '#frame-powered-by-artsy', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ].concat(transitions.bisectedColumnsHold('powered-by-artsy'))
  }
  { # Out
    stage: '#frame-powered-by-artsy', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
    ].concat(transitions.bisectedColumnsOut('powered-by-artsy'))
  }

  # browse-and-collect-fairs

  { # In
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#image-wall--image-0', opacity: [0, 1] }
      { element: '#image-wall--image-1', opacity: [-0.25, 1] }
      { element: '#image-wall--image-2', opacity: [-0.5, 1] }
      { element: '#image-wall--image-3', opacity: [-0.75, 1] }
    ]
  }
  { # Hold
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-browse-and-collect-fairs', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#image-wall--image-0', opacity: [1, -0.75] }
      { element: '#image-wall--image-1', opacity: [1, -0.5] }
      { element: '#image-wall--image-2', opacity: [1, -0.25] }
      { element: '#image-wall--image-3', opacity: [1, 0] }
    ]
  }

  # mobile-app

  { # In
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#mobile-app--video-wall', opacity: opacity.in }
    ]
  }
  { # Hold
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-mobile-app', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#mobile-app--video-wall', opacity: opacity.out }
    ]
  }

  # partners-in-cities

  { # In
    stage: '#frame-partners-in-cities', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
      { element: '#partners-in-cities', opacity: opacity.in }
    ]
  }
  { # Hold
    stage: '#frame-partners-in-cities', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-partners-in-cities', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
    ]
  }

  # average-distance

  { # In
    stage: '#frame-average-distance', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
    ]
  }
  { # Hold
    stage: '#frame-average-distance', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
      # Animate map
    ]
  }
  { # Out
    stage: '#frame-average-distance', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
      { element: '#average-distance', opacity: opacity.out }
    ]
  }

  # joined-artsy

  { # In
    stage: '#frame-joined-artsy', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.in, translateY: translateY.in }
    ]
  }
  { # Hold
    stage: '#frame-joined-artsy', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', translateY: translateY.hold }
    ]
  }
  { # Out
    stage: '#frame-joined-artsy', duration: '100%', easing: 'linear'
    actors: [
      { element: '.frame--vcenter', opacity: opacity.out, translateY: translateY.out }
    ]
  }
]
