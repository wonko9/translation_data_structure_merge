# We use translation files to match keys with their translations in different languages.   These keys can be broken into sections,
# ie the keys can be at arbitrary depths.   There is also a feature to deal with pluralization where a key can have a "one" and an
# "other" translation string.   Sometimes you want to compare the translations in two languages.   The included file contains a
# sample from a translation file.   The goal is to write a method called merge_languages that takes two languages and the
# translations data structure and outputs a single data structure which has the composite key (given the arbitrary depth of the
# hash) as well as the translation in both languages.
# 
# Write the method merge_languages which takes the above translations data structure and outputs the one below.


translations = {
  "en-US" => {
    :save => "Save",
    :click_here => "Click Here",
    :email => {
      :thank_you => "Thank You",
      :invitation => {
        :been_invited => "You've been invited by {{inviter}}",
        :num_others => {
          :one => "Your network has one other member",
          :other => "Your network has {{count}} other members"
        }
      }
    }
  },
  "en-PR" => {
    :save => "Go for it",
    :click_here => "Slamit!",
    :email => {
      :thank_you => "Shove off",
      :invitation => {
        :been_invited => "{{inviter}} demands you board",
        :num_others => {
          :one => "Another shipmate awaits",
          :other => "{{count}} other members"
        }
      }
    }
  }
}

# compare_languages() creates a data structure that compares two langauges

merge_languages(translations,"en-US","en-PR")
# outputs
[
  ["save","Save","Go for it"],
  ["click_here","Click Here", "Slamit!"],
  ["email.thank_you","Thank You", "Shove Off"],
  ["email.invitation.been_invited","You've been invited by {{inviter}}","{{inviter}} demands you board"],
  ["email.invitation.num_others.one","Your network has one other member","Another shipmate awaits"]
  ["email.invitation.num_others.other","Your network has {{count}} other members","{{count}} other members"]
]
