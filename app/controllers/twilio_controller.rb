require 'twilio-ruby'

class TwilioController < ApplicationController
    include Webhookable 

    after_filter :set_header
  
    skip_before_action :verify_authenticity_token


  def send_text_message
    case_capture

    number_to_send_to = params[:From]

    auto_response = "Your case has been received. We will soon begin investigating your situation."

    # body = params[:Body]
    # case body
    #   when "Injury"
    #       auto_response = "Apply Ice on Injured Limb"
    #   when "Fever"
    #       auto_response = "Take Ibuprofen and Rest"
    #     when "Diarrhea"
    #       auto_response = "Eat Bread Rice Apple and Toast"
    #   end

    twilio_sid = ENV['TWILIO_SID']
    twilio_token = ENV['TWILIO_TOKEN']
    twilio_phone_number = ENV['TWILIO_PHONE_NUMBER']
  
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "#{number_to_send_to}",
      :body => "#{auto_response}"
      )
  end

private

  def index
  end

  def case_capture
    case_sender = params[:From]
    body = params[:Body]
    #Deciphering Case Message
    case_array = body.split(",")
    
    num = case_array.length
    i = 1
    
    event = Case.create(patient_id: case_array[0], sender: case_sender, status: "OPEN") #Specify by First Name 
      
    until i == num do  
        event_relations = CaseSyndrome.new 
        event_relations.case_id = event.id

        checkup = Syndrome.find_by text_code: case_array[i]
          if checkup.blank? == false
            event_relations.syndrome_id = checkup.id
            i = i + 1
          else
            i = i + 1
          end 
         event_relations.save
    end 
  end

  def picture_capture
  end

  def appointment_invitation
  end


# def send_multimedia_message
#     @client.messages.create(
#         :from => '+14159341234',
#         :to => '+16105557069',
#         :body => 'Hey there!',
#         :media_url => 'http://example.com/smileyface.jpg',
#       )
# end

end
