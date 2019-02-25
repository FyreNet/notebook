class CreateDocumentAnalyses < ActiveRecord::Migration[5.2]
  def change
    create_table :document_analyses do |t|
      t.references :document, foreign_key: true
      t.integer :word_count
      t.integer :page_count
      t.integer :paragraph_count
      t.integer :character_count
      t.integer :readability_score
      t.float :combined_average_reading_level
      t.integer :flesch_kincaid_grade_level
      t.integer :flesch_kincaid_age_minimum
      t.float :flesch_kincaid_reading_ease
      t.float :forcast_grade_level
      t.float :coleman_liau_index
      t.float :automated_readability_index
      t.float :gunning_fog_index
      t.integer :adjective_count
      t.integer :noun_count
      t.integer :verb_count
      t.integer :pronoun_count
      t.integer :proposition_count
      t.integer :conjunction_count
      t.integer :adverb_count
      t.integer :determiner_count
      t.json :n_syllable_words
      t.integer :words_used_once_count
      t.integer :words_used_repeatedly_count
      t.integer :simple_words_count
      t.integer :complex_words_count
      t.json :words_per_sentence

      t.timestamps
    end
  end
end
