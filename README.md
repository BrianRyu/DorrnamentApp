# README

* Associated Volleyball Professionals

# Models

    * Players
    * Draft
    * Teams
    * Entry 
    * Tournaments (Dorrnaments)
    * Venues

* Stretch:
    * AVP/Sections
    * Multi-venue tournaments
    * Simplify divisions in each tournament
    * Details about each model

# Associations
    * Players 
        has_many Drafts
        has_many Teams through Draft
        has_many Entries through Teams
        has_many Tournaments through Entries
    * Teams 
        has_many Drafts
        has_many Entries
        has_many Players through Draft
        has_many Tournaments through Entry
        has_many Venues through Tournaments
    * Draft
        belongs_to Player
        belongs_to Team
    * Entry
        belongs_to Team
        belongs_to Tournament
    * Tournaments
        has_many Entries
        has_many Teams through Entry
        has_many Drafts through Teams
        has_many Players through Drafts
        belongs_to Venue
    * Venue
        has_many Tournaments

# dorrnament_app
