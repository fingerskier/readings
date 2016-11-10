/*
	chalk
	clear
	clui
	figlet
	inquirer
	minimist
	preferences

	github
	lodash
	simple-git
	touch
*/

var chalk       = require('chalk');
var clear       = require('clear');
var CLI         = require('clui');
var figlet      = require('figlet');
var Preferences = require('preferences');
var Spinner     = CLI.Spinner;
var GitHubApi   = require('github');
var _           = require('lodash');
var git         = require('simple-git')();	//
var touch       = require('touch');
var fs          = require('fs');

var files = require('./lib/files')
var github = new GitHubApi()
var usr = require('./lib/cli_usr')


clear()

console.log(
	chalk.yellow(
		figlet.textSync('AFG Gitool', {
			kerning: 'full'
		})))

if (files.directoryExists('.git')) {
	console.log(chalk.red('Already a git repository!'))
	process.exit()
}



usr.getGithubToken(()=>{
	var status = new Spinner('Authenticating...')

	status.start()
})

getGithubCredentials(function(credentials) {
  var status = new Spinner('Authenticating you, please wait...');
  status.start();

  github.authenticate(
    _.extend(
      {
        type: 'basic',
      },
      credentials
    )
  );

  github.authorization.create({
    scopes: ['user', 'public_repo', 'repo', 'repo:status'],
    note: 'ginit, the command-line tool for initalizing Git repos'
  }, function(err, res) {
    status.stop();
    if ( err ) {
      return callback( err );
    }
    if (res.token) {
      prefs.github = {
        token : res.token
      };
      return callback(null, res.token);
    }
    return callback();
  });
});
