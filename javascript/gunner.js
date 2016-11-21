var gun = Gun('https://gunjs.herokuapp.com/gun')

var ref = gun.put({hello: 'world'})

ref.val()

ref.put({...})

ref.val()

ref.path('...').val()
