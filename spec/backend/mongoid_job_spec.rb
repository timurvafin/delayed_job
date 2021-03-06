require 'spec_helper'
require 'backend/shared_backend_spec'
require 'delayed/backend/mongoid'

describe Delayed::Backend::Mongoid::Job do
  before(:all) do
    @backend = Delayed::Backend::Mongoid::Job
    Delayed::Worker.backend = :mongoid
  end
  
  before(:each) do
    Delayed::Backend::Mongoid::Job.destroy_all
  end
  
  it_should_behave_like 'a backend'
end
