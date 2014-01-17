require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutTrueAndFalse < Neo::Koan
  def true_stuff(condition)
    if condition
      :true_stuff
    else
      :false_stuff
    end
  end

  def test_true_is_treated_as_true
    assert_equal :true_stuff, true_stuff(true)
  end

  def test_false_is_treated_as_false
    assert_equal :false_stuff, true_stuff(false)
  end

  def test_nil_is_treated_as_false_too
    assert_equal :false_stuff, true_stuff(nil)
  end

  def test_everything_else_is_treated_as_true
    assert_equal :true_stuff, true_stuff(1)
    assert_equal :true_stuff, true_stuff(0)
    assert_equal :true_stuff, true_stuff([])
    assert_equal :true_stuff, true_stuff({})
    assert_equal :true_stuff, true_stuff("Strings")
    assert_equal :true_stuff, true_stuff("")
  end

end
