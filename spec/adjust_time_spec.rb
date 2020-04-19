RSpec.describe Tools::Adjust_time do
  it 'add some time and adjust to a new time' do
    adjust_time = Tools::Adjust_time.new(['01:00:00', 1, 30, 10])
    expect(adjust_time.new_time?('02:30:10'))
  end

  it 'add some time and adjust to a new time' do
    adjust_time = Tools::Adjust_time.new(['18:22:30', 4, 60, 30])
    expect(adjust_time.new_time?('23:23:00'))
  end

  it 'add some time and adjust to a new time' do
    adjust_time = Tools::Adjust_time.new(['00:00:00', 72, 120, 120])
    expect(adjust_time.new_time?('02:02:00'))
  end

  it 'add some time and adjust to a new time' do
    adjust_time = Tools::Adjust_time.new(['06:34:56', 1, 30, 70])
    expect(adjust_time.new_time?('08:06:06'))
  end

end