class CreateTvShowTimings < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_show_timings do |t|
      t.references :show, foreign_key: true
      t.time :timing

      t.timestamps
    end
  end
end
