book_club = BookClub.create(name: "(Actually) Dead Poets Society", location: "Amherst, MA")


Member.create(first_name: "Emily", last_name: "Dickinson", email: "nobody@nobodytoo.org", bio: "I don't see what's so great about leaving the house.", favorite_book: "Aurora Leigh", book_club: book_club, leader: true )
Member.create(first_name: "Walt", last_name: "Whitman", email: "walt@yawp.com", bio: "I am small, I contain platitudes.", favorite_book: "English Traits", book_club: book_club, leader: false)
