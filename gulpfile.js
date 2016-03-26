var gulp = require('gulp');
var lintspaces = require("gulp-lintspaces");

gulp.task("test", function() {
  return gulp.src("odin.zsh-theme")
    .pipe(lintspaces(
      options = {
        newline: true,
        newlineMaximum: 2,
        trailinespaces: true,
        indentation: 'spaces',
        spaces: 2
      }
    ))
    .pipe(lintspaces.reporter());
});
