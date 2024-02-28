import Buffer "mo:base/Buffer";

actor {

    let name : Text = "Motoko Bootcamp Day 1";
    var manifesto : Text = "Transform the world using DAOs";
    var goals : Buffer.Buffer<Text> = Buffer.Buffer<Text>(0);
 

    public shared query func getName() : async Text {
        return name;
    };

    public shared query func getManifesto() : async Text {
        return manifesto;
    };

    public func setManifesto(newManifesto : Text) : async () {
        manifesto := newManifesto;
    };

    public func addGoal(newGoal : Text) : async () {
        goals.add(newGoal);
        return;
    };

    public shared query func getGoals() : async [Text] {
        return Buffer.toArray(goals);
    };
};
