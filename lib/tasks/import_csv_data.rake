namespace :csvimport do

  desc "Import CSV Data."
  task :import_csv_data => :environment do

    require 'csv'

    csv_file_path = '/change.csv'

    CSV.foreach(csv_file_path) do |row|

      p = Project.create!({
          :name => row[0],
          :Website => row[1],
          :info => row[2],
          :area => row[3],
          :tag_list => row[4],
        }
      )

    end

  end

end