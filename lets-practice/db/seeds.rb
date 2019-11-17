# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.
# Song.destroy_all

song_one_art = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573649733/p1nhmcwukwkt9iqnixu8.jpg"
song_one_sheet = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573650554/tnkbapm9gboas05z59wm.svg"

song_one = Song.new(name: "Gnossienne No. 1",
                        artist: "Eric Satie",
                        native_bpm: 95,
                        info: "A melancholy and mysterious minimal piano piece from French Composer 1890.",
                        key: "C Minor",
                        chords: "Fm - Cm - Bbm",
                        time_signature: "4/4",
                        date_uploaded: Date.today)

song_one.remote_photo_url = song_one_art
song_one.remote_sheet_music_url = song_one_sheet

song_one.save!

# song_two_art = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573387991/fltd21d8y5aqlabjlag8.png"
# song_two_sheet = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573387993/cwqyohhoaertc3i7zd2m.svg"

# song_two = Song.new(name: "Avril 14th",
#                         artist: "Aphex Twin",
#                         native_bpm: 158,
#                         info: "A melancholy and childlike piano piece from an English Techno Producer. Reminiscent of Eric Satie.",
#                         key: "Ab Major",
#                         chords: "Fm - Db - Bbm - Ab - Eb - DbM7",
#                         time_signature: "4/4",
#                         date_uploaded: Date.today)

# song_two.remote_photo_url = song_two_art
# song_two.remote_sheet_music_url = song_two_sheet

# song_two.save!

# song_three_sheet_art = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573650040/nyfap958gb5buaktfprr.jpg"
# song_three_sheet_sheet = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573633363/feogo88alz0qf6wzkkot.png"

# song_three_sheet = Song.new(name: "Sympathy for the devil",
#                         artist: "The Rolling Stones",
#                         native_bpm: 116,
#                         info: "A upbeat and groovy Rhythm and Blues track with rhythmic Piano Part.",
#                         key: "A Major",
#                         chords: "",
#                         time_signature: "E - Em - Dm - Am - A - D - Bm - B - E7 - Bm7- Em7",
#                         date_uploaded: Date.today)

# song_three_sheet.remote_photo_url = song_three_sheet_art
# song_three_sheet.remote_sheet_music_url = song_three_sheet_sheet

# song_three_sheet.save!

# song_four_art = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573633693/pc9yldpcsmtgwkbapbfz.jpg"
# song_four_sheet = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573650140/znhf0jedsvfwljstqr2e.png"

# song_four = Song.new(name: "Let it be",
#                         artist: "The Beatles",
#                         native_bpm: 143,
#                         info: "A sad and uplifting ballad with choral harmonies, from the famous Liverpudlian",
#                         key: "C Major",
#                         chords: "C - G - Am - F - E - Bm7 - E7 - B7",
#                         time_signature: "4/4",
#                         date_uploaded: Date.today)

# song_four.remote_photo_url = song_four_art
# song_four.remote_sheet_music_url = song_four_sheet

# song_four.save!

# song_five_art = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573650402/rmdvegtku0xl6apzybll.jpg"
# song_five_sheet = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573650403/vbacd6guubrcryczevrh.png"

# song_five = Song.new(name: "Movin' on up",
#                         artist: "Primal Scream",
#                         native_bpm: 94,
#                         info: "A groovy rhythm and blues track with rhythmic piano from the early 90s brit pop/rock period with gospel harmonies.",
#                         key: "C Minor",
#                         chords: "C - G - F - Dm - Cm - Gm - A# - G# - F7 - C5",
#                         time_signature: "4/4",
#                         date_uploaded: Date.today)

# song_five.remote_photo_url = song_five_art
# song_five.remote_sheet_music_url = song_five_sheet

# song_five.save!

# song_six_art = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573650552/ksjmca2ue149wuqlvqfu.jpg"
# song_six_sheet = "https://res.cloudinary.com/dpxibu6l4/image/upload/v1573633889/oy8wafrlj9ppewh0aclo.png"

# song_six = Song.new(name: "Overnight",
#                         artist: "Chilly Gonzales",
#                         native_bpm: 79,
#                         info: "A melancholy but playful jazz piano piece by a Modern Canadian Pianist.",
#                         key: "G Minor",
#                         chords: "Cm - Gm - F - Dm - Am - C - C7 - Eb - Bb",
#                         time_signature: "4/4",
#                         date_uploaded: Date.today)

# song_six.remote_photo_url = song_six_art
# song_six.remote_sheet_music_url = song_six_sheet

# song_six.save!
