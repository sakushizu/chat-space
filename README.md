# DB設計

## table
  - users
  - groups
  - group_users
  - messages

## association
### user model
  - has_many :messages
  -  :group_users
  - has_many :groups, through: :group_users

### group model
  - has_many :group_users
  - has_many :users, through: :group_users
  - has_many :messages

### group_user model
  - belongs_to :user
  - belongs_to :group

### message model
  - belongs_to :user
  - belongs_to :group

## table column
### users table
  - name(string) null: false
  - devise

### groups table
  - name(string) null: false

### group_users table
  - user_id(references)
  - group_id(references)

### messages table
  - body(text)
  - image(string)
  - user_id(references)
  - group_id(references)
