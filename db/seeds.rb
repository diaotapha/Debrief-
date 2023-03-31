# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Game.create([
    {
        title: "Card Debrief"
    },
    {
        title: "STOP.START.CONTINUE.CHANGE Debrief"
    },
    {
        title: "Tree of knowledge Debrief"
    },
    {
        title: "Contract Debrief"
    }
])

GameStep.create([
    {
        name: "Heart",
        game_id: 1
    },
    {
        name: "Spade",
        game_id: 1
    },
    {
        name: "Diamond",
        game_id: 1
    },
    {
        name: "Club",
        game_id: 1
    },
    {
        name: "Stop",
        game_id: 2
    },
    {
        name: "Start",
        game_id: 2
    },
    {
        name: "Continue",
        game_id: 2
    },
    {
        name: "Change",
        game_id: 2
    }
])