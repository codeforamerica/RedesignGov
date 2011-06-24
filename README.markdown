===========
RedesignGov
===========

Status: building out models

Architecture
============
G = Government Officials
D = Designers

Users
has one project (G only)
has many submissions (D only)
type (either G or D)
email
password
display_name
project_id (for G only)


Projects
belongs to one user (G)
has many submissions
has many files (current logo, icons)
org_name
org_desc
values (hash)
colors (hash)
font_ids (hash)
influence_file_ids (hash)
icon_file_ids (hash)
current_logo_file_id
deadline
comments
active (bool)


Submissions
belongs to one user (D)
belongs to one project
has many files
has many comments


Comments
belongs to one user
belongs to one submission
content


Files
type (icon, current logo, influential logo, submission [vector, bitmap])
path


Fonts (seed with common fonts)
name
(files eventually... but need to work out licensing issues)