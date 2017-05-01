class RegistrationScreen < UI::Screen
  include Hiccup

  def on_show
    navigation.hide_bar
  end

  def on_load
    $self = self
    render markup, css
    view.update_layout
  end

  def move_view
    views[:root][:view].proxy.frame = CGRectMake(0, -300, 100, 100)
  end

  def markup
    [:view,
     { id: :root, flex: 1, padding: 40, background_color: 'dd6655' },
     [:label, { text: 'Lorem ipsum', text_alignment: :center }],
     [:input, { id: :name, placeholder: 'Your name' }],
     [:input, { placeholder: 'Your email address' }],
     [:input, { placeholder: 'Create password' }],
     [:view, { flex_direction: :row },
      [:input, { placeholder: 'Your postcode', flex: 1 }],
      [:input, { placeholder: 'Your birthday', flex: 1, date_picker: true }]],
     [:button, { title: 'Create account' }]]
  end

  def css
    { label: { color: :white,
               text_alignment: :center,
               margin: 10,
               font: font },
      link: { border_width: 0,
              color: :white,
              font: font.merge(size: 20) },
      input: { border_width: 1,
               border_color: :white,
               border_radius: 5,
               color: :white,
               margin: 5,
               height: 32,
               padding: 20,
               input_offset: 10 },
      button: { color: :white,
                height: 40,
                background_color: :orange,
                border_radius: 8,
                border_width: 1,
                border_color: :orange,
                font: font,
                margin: 2 } }
  end

  def font
    { name: 'Helvetica-Nueue', size: 16 }
  end
end
