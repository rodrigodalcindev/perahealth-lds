var gulp = require('gulp');
var theo = require('theo');

theo.registerTransform('web', [
  'color/hex',
  'relative/pixel'
]);

gulp.task('theo', function() {
  gulp.src('data/design_tokens/*.yml')
    .pipe(theo.plugins.transform('web'))
    .pipe(theo.plugins.format('sass'))
    .pipe(gulp.dest('dist'));

  gulp.src('data/design_tokens/*.yml')
    .pipe(theo.plugins.transform('ios'))
    .pipe(theo.plugins.format('ios.json'))
    .pipe(gulp.dest('dist'));
});

gulp.task('default', ['theo']);