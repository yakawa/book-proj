Dir.glob('lib/tasks/*.rake').sort.each do |file|
  load(file)
end

desc 'prepro all'
task :preproc do
  Dir.glob("*.re").each do |file|
    sh "review-preproc --replace #{file}"
  end
end
