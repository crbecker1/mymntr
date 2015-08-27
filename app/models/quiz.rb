class Quiz < ActiveRecord::Base
  belongs_to :account

  def result
    result = {
      fearless: 0,
      cant_touch: 0,
      om_baby: 0,
      badass: 0
    }

    if question_1 == true
      result[:fearless] +=1
      result[:cant_touch] +=1
      result[:om_baby] +=1
      result[:badass] +=1
    end

    if question_1 == false
    end

    if question_2 == true
      result[:fearless] +=1
    end

    if question_2 == false
      puts "hi here"
      result[:cant_touch] +=1
      result[:om_baby] +=1
      result[:badass] +=1
    end

    if question_3 == true
      result[:om_baby] +=1
      result[:badass] +=1
    end

    if question_3 == false
      result[:fearless] +=1
      result[:cant_touch] +=1
    end

    if question_4 == true
      result[:fearless] +=1
    end

    if question_4 == false
      result[:cant_touch] +=1
      result[:om_baby] +=1
      result[:badass] +=1
    end
    
    if question_5 == true
      result[:om_baby] +=1
      result[:badass] +=1
    end

    if question_5 == false
      result[:fearless] +=1
      result[:cant_touch] +=1
    end
    
    if question_6 == true
      result[:fearless] +=1
      result[:badass] +=1
    end

    if question_6 == false
      result[:cant_touch] +=1
      result[:om_baby] +=1
    end
    
    if question_7 == true
      result[:fearless] +=1
      result[:om_baby] +=1
      result[:badass] +=1
    end

    if question_7 == false
      result[:cant_touch] +=1
    end
    
    if question_8 == true
      result[:cant_touch] +=1
      result[:om_baby] +=1
      result[:badass] +=1
    end

    if question_8 == false
      result[:fearless] +=1
    end

    if question_9 == true
      result[:fearless] +=1
      result[:badass] +=1
    end

    if question_9 == false
      result[:cant_touch] +=1
      result[:om_baby] +=1
    end
    
    if question_10 == true
      result[:fearless] +=1
      result[:cant_touch] +=1
      result[:badass] +=1
    end

    if question_10 == false
      result[:om_baby] +=1
    end
    
    if question_11 == true
      result[:badass] +=1
    end

    if question_11 == false
      result[:fearless] +=1
      result[:cant_touch] +=1
      result[:om_baby] +=1
    end
    
    if question_12 == true
      result[:om_baby] +=1
    end

    if question_12 == false
      result[:fearless] +=1
      result[:cant_touch] +=1
      result[:badass] +=1
    end

    brain_type = result.sort_by{|k,v| v}.last.first
  end

end
