# Sinatra Order of Operations Guide

## Checklist

### PART 1 — Project Setup: Corneal, MVC, ActiveRecord

**BEFORE YOU CODE**
- [x] 1. Check project requirements in `spec.md`
- [x] 2. Ideate!  What do you want to build?
      - choose a domain you're familiar with!
      - choose a domain you care about
- [x] 3. Wireframing & User Stories
      - Write down your models, their attributes, and their associations
      - "As a user, I can ....."
      - "A user should be able to ....."
      - What does your app _do_?
- [x] 4. Design your MVP = 'Minimum Viable Product' vs. what are my 'stretch goals'
      - Stretch goals - bonus features you want but don't need

**NOW WE CODE (BUT JUST OUR MODELS — NO CONTROLLERS OR VIEWS)**

- [x] 5. Generate new project using corneal gem
- [x] 6. Create github repo
- [x] 7. Build your models
      - Migrations
      - Model classes
      - Associations
- [x] 8. Test your models and associations in the console
      - Create some seed data
      - Adjust migrations as needed

**KEYWORDS FOR ASSESSMENT**
- ActiveRecord
- MVC
- Associations (has_many, belongs_to macro)
- `has_secure_password`
- Migrations

### PART 2 — Authentication (User Login)

**NOW, CONSIDER CONTROLLERS AND VIEWS**




### Using the corneal gem

You are welcome to use the [corneal gem].  However, you should understand what it's doing.  Remove any folders and files you're not using.  For example, if you're not going to write any tests, delete the `spec` folder.

[corneal gem]:https://github.com/thebrianemory/corneal
