require './config/environment'

if ActiveRecord::Migrator.needs_migration? #kept this in here for testing newly loaded databases
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use UserController
use ExerciseController
use WorkoutController
run ApplicationController
