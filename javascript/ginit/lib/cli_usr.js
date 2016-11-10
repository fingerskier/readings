var inquirer    = require('inquirer');


module.exports = {
	getGithubToken(callback) {
		var prefs = new Preferences('afgit')

		if (prefs.github && prefs.github.token) return callback(null, prefs.github.token)

		getCredentials(console.log)
	}
	,
}

getCredentials = (callback)=>{
	var questions = [{
		 name: 'username'
		,type: 'input'
		,message: 'Username?'
		,validate: (value)=>{
			if (value.length) return true
			else return 'Username?'
		}
	},{
		name: 'password'
		,type: 'password'
		,message: 'Password?'
		,validate: (value)=>{
			if (value.length) return true
			else return 'Password?'
		}
	}]

	inquirer.prompt(questions).then(callback)
}