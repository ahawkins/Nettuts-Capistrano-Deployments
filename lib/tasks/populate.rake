begin
  namespace :db do
    desc "Populate the development database with some fake data"
    task :populate => :environment do
      5.times do
        Book.create! :title => Forgery::LoremIpsum.sentence, :thoughts => Forgery::LoremIpsum.paragraphs(3)
      end
    end
  end
rescue LoadError
  puts "Please run: sudo gem install forgery"
end