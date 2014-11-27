require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar las espectativas de la clase Examen"
        task :spec do
                sh "rspec -I spec/pr10_spec.rb"
        end

desc "Ejecutar con documentacion"
        task :doc do
                sh "rspec --format documentation -I. spec/pr10_spec.rb"
        end

desc "Ejecutar en html"
        task :html do
                sh "rspec  --format html -I. spec/pr10_spec.rb --out report.html"

        end