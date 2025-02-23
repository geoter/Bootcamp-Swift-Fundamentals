class Friend {
    let name: String
    var friends: Int
    
    init(name: String, friends: Int) {
        self.name = name
        self.friends = friends
    }
}

struct Friends {
    let friendsList: [Friend]
}

let friends = Friends(friendsList: [Friend(name: "Ota", friends: 2)])
//friends.friendsList.append(Friend(name: "John", friends: 1))
friends.friendsList.first?.friends += 1
print("Friends \(friends.friendsList.first!.friends)")


struct Player {
    let name: String
    var speed: Float
}

class Players {
    var playersList: [Player] = []
}

let players = Players()
players.playersList = [Player(name: "john", speed: 2)]
players.playersList.append(Player(name: "kostas", speed: 3))
var player = players.playersList.first
player?.speed = 20
print("Players: \(players.playersList.last?.speed)")
