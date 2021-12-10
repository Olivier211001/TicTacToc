users = User.create([{email: "paul@tremblay.com", password: "123456"}, #paul modifier password: 666666
{email: "r@e.com", password: "123456"},
{email: "jo@jo.com", password: "123456"},
{email: "nikita@yurov.com", password: "123456"},
{email: "potato@patate.com", password: "123456"},
{email: "bergie@nordique.com", password: "123456"},
{email: "paul@pedno.com", password: "123456"}])


games = Game.create([{creator: users.first, opponent: users.second,winner:  users.second},
{creator: users.second, opponent: users.first, player_turn: users.first},
{creator: users[3], opponent: users.second,winner:  users[3]},
{creator: users.first, opponent: users[3],winner:  users.first}])
