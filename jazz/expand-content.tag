<expand-content>
  <p>
    <button onclick={ toggle }>{ expanded ? "Hide" : "Show more" }</button>
  </p>
  <div ref="wrapper" hide={ ! expanded } class={ animate: expanded }>
    <yield/>
  </div>

  <style>
    .animate {
      overflow: hidden;
      animation: expand-content 0.3s;
    }

    button {
      padding-left: var(--baseline);
      padding-right: var(--baseline);
    }

    @keyframes expand-content {
      0% {
        max-height: 0;
      }
      99% {
        max-height: 80vh;
      }
      100% {
        max-height: none;
      }
    }
  </style>

  // Coerce attribute value into boolean
  this.expanded = opts.expanded !== undefined ? true : false;

  toggle(e) {
    this.expanded = ! this.expanded;
  }

</expand-content>
