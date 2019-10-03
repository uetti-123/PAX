class AddVacancyInfoToVacancies < ActiveRecord::Migration[5.2]
  def change
    add_column :vacancies, :term, :text
    add_column :vacancies, :empty_status, :text
  end
end
