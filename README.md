# ProtoSpace

##Tables

###users

> has_many prototypes

> has_many proto_comments

- username

- email

- password

- group

- profile

- work

- avatar

###prototypes

> belongs_to user

> has_many proto_comments

> has_many proto_images

> has_many proto_tags

- user_id

- catchcopy

- concept

### proto_comments

> belongs_to prototypes

- user_id

- prototype_id

- comment

### proto_images

> belongs_to prototypes

- prototype_id

- image

### proto_tags

> belongs_to prototypes

- prototype_id

- web_design

- ui

- application