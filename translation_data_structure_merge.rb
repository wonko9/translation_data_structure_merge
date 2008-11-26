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

compare_languages(translations,"en-US","en-PR")
# outputs
[
  ["save","Save","Go for it"],
  ["click_here","Click Here", "Slamit!"],
  ["email.thank_you","Thank You", "Shove Off"],
  ["email.invitation.been_invited","You've been invited by {{inviter}}","{{inviter}} demands you board"],
  ["email.invitation.num_others.one","Your network has one other member","Another shipmate awaits"]
  ["email.invitation.num_others.other","Your network has {{count}} other members","{{count}} other members"]
]
