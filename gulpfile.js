var gulp = require('gulp');
var theo = require('theo');
var svgstore = require('gulp-svgstore');
var svgmin = require('gulp-svgmin');
var path = require('path');

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

gulp.task('svgstore', function () {
  gulp.src('source/images/svg/src/*.svg')
    .pipe(svgmin(function (file) {
      var prefix = path.basename(file.relative, path.extname(file.relative));
        return {
          plugins: [{
            cleanupIDs: {
            prefix: prefix + '-',
            minify: true
            }
          }]
        }
      }))
      .pipe(svgstore())
      .pipe(gulp.dest('source/images/svg/build'));
});

gulp.task('default', ['theo']);
gulp.task('svg', ['svgstore']);