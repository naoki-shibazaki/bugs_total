class ShowPdf < Prawn::Document
  
    def initialize
      super(page_size: 'A4') 
      stroke_axis
  
      font_families.update('JP' => { 
                              normal: 'app/assets/fonts/ipaexm.ttf', 
                              bold: 'app/assets/fonts/ipaexg.ttf' 
                          })
      font 'JP'
        
      #-------- ↓ここにコードを記述する ----------
      text "タイトル", size: 20, align: :center
      move_down 20
  
      text "◉サブタイトル", size: 14
      move_down 10
  
      schedule = [
        ["項目", "詳細"],
        ["(1)", ""],
        ["(2)", ""],
        ["(3)", ""],
        ["(4)", ""],
        ["(5)", ""],
      ]
  
      table schedule, cell_style: {height: 30},
      column_widths: [120, 400] do
        cells.size = 10
        row(0).border_top_width = 2
        row(0).border_bottom_width = 2
        columns(0).row(0..5).border_left_width = 2
        columns(-1).row(0..5).border_right_width = 2
        row(-1).border_bottom_width = 2
      end
  
    end
  end