class Project < ActiveRecord::Base
  belongs_to :user
  has_many :submissions
  has_many :sources
  has_many :logotypes, :dependent => :destroy
  has_many :fonts, :through => :logotypes
  has_many :schemes, :dependent => :destroy
  has_many :colors, :through => :schemes
  accepts_nested_attributes_for :logotypes
  accepts_nested_attributes_for :schemes
  before_save :assign_colors
  attr_accessor :color_hexes

  private
  
  def assign_fonts
      # if @font_names
      #   self.fonts = @font_names.split(', ').map do |name|
      #     Font.find_or_create_by_name(name)
      #   end
      # end
  end
  
  def assign_colors
      if self.color_hexes
        self.colors = []
        self.color_hexes.each do |hex|
          self.colors << Color.find_or_create_by_hex(hex)
        end
      end
  end
  
  
end
