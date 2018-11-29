puts '-- seed table "teams" with MAC'
Team.create({username: 'MAC', password: '123123',
	    password_confirmation: '123123'})
puts '-- seed table "teams" with POL'
Team.create({username: 'POL', password: '123123',
	    password_confirmation: '123123'})

questions = [
  # question 01
  {description: 'Show hostname without reading it from a file', key: 'diente'},
  # question 02
  {description: 'Show logged in users and where', key: 'ala'},
  # question 03
  {description: 'List hidden files, subdirectories and permissions of
   directories _ATK and _DEF', key: 'ala'},
  # question 04
  {description: 'Where is the ifconfig command', key: 'exp'},
  # question 05
  {description: 'Change pwd to _ATK, then change to _LVL, and return to
   _ATK **without using the explicit path**', key: 'nido'},
  # question 06
  {description: 'Show all the lines in the POKE file that match with a
   word that contains:
   * two dots
   * the next 4 characters are betwen 1 and 5
   * the next 3 to 6 characters contain the letters a and e', key: 'nxt'},
  # question 07
  {description: 'List all the files of bosque_verde whose name do not
  contain 4 characters', key: 'trueno'},
  # question 08
  {description: 'Count the number of files in the directory', key:
   '1604'},
  # question 09
  {description: 'Print the middle line of the file medium', key:
   'equilibrio'},
  # question 10
  {description: 'Show the content of the file medalla the same way man
   command does', key: 'exp100'},
  # question 11
  {description: 'Create the directories water, fire, grass with
   read-only permissions (using only mkdir)', key: 'fire'},
  # question 12
  {description: 'Copy recursively the files that start with "-" in the
  dir _MGKRP, only replace if it\'s newer than existing. Explain the process',
  key: 'magikarp'},
  # question 13
  {description: 'List all the files in the 3rd level of dir _Cascada,
   whose name is zubat, regardless of caps', key: 'misty'},
  # question 14
  {description: 'Show the content of files inside the file golpe, send
   errors to /dev/null', key: 'hidro'},
  # question 15
  {description: 'Go to dir _under and remove all the files and
   directories that are 4 and 6 letters long', key: 'lugia'},
  # question 16
  {description: 'List the child processes of parent process 1 and sort
   them desc', key: 'cubone'},
  # question 17
  {description: 'Show the size of home directory, send stderr to one
   file and stdout to another file', key: 'fired'},
  # question 18
  {description: 'In Islas_Remolino, change permissions of _ball file so
   they are equal to permissions of file cOsA', key: 'nextplant'},
  # question 19
  {description: 'Move files from _Grass directory that are 4, 6 and 8
   characters long, without overwritting existing files in dir _Region', key:
   'bro'},
  # question 20
  {description: 'Show the man page of chmod with numerated lines and
   make it easy to read', key: 'gary'},
  # question 21
  {description: 'Generate this sequence of numbers 115 116 117 118 119
   120 215 216 217 218 219 220 315 316 317 318 319 320 415 416 417 418 419
   420 515 516 517 518 519 520', key: 'repelente'},
  # question 22
  {description: 'Find file gyarados in monte_plateado and count its
   line number, then find a file whose size is equal to the number of lines
   obtained, then show its last line', key: 'latigo'},
  # question 23
  {description: 'Sort the files eevee-saur and ivy-saur, then compare
   them', key: 'r3d'}
]

questions.each_with_index do |question, index|
  # Arrays start at 0, db starts with 1, etc etc
  puts '-- seed table "questions" with question %02d' % (index + 1)
  Question.create(question)
end

answers = [
  {team_id: 1, question_id: 1, complete: true},
  {team_id: 1, question_id: 2, complete: false},
  {team_id: 1, question_id: 3, complete: true},
  {team_id: 1, question_id: 4, complete: false},
  {team_id: 1, question_id: 10, complete: true},
  {team_id: 1, question_id: 15, complete: true},
  {team_id: 1, question_id: 17, complete: true},

  {team_id: 2, question_id: 3, complete: true},
  {team_id: 2, question_id: 5, complete: false},
  {team_id: 2, question_id: 6, complete: true},
  {team_id: 2, question_id: 7, complete: false},
  {team_id: 2, question_id: 20, complete: true},
  {team_id: 2, question_id: 23, complete: false},
]

answers.each_with_index do |answer, index|
  # Arrays start at 0, db starts with 1, etc etc
  # puts '-- seed table "answer" with answer %02d for team %02d' % (answer.id, team.id)
  Answer.create(answer)
end
