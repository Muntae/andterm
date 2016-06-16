class Parser < ActiveRecord::Base
    def self.startParse accessor, name
        
        #파싱해온게 텅 비어있으면 seed정보 가져옴
        if accessor.present?
            time = Time.new
            curver = Curver.find_by_name(name)
            curver.ftitle = accessor[0].inner_text
            curver.ltitle = accessor[accessor.size-1].inner_text
            curver.length = accessor.size
            curver.month = time.month
            curver.day = time.day
            curver.hour = time.hour
            curver.min = time.min
            curver.save
        end
        
        pastver = Pastver.find_by_name(name)
        curver = Curver.find_by_name(name)

        if pastver.ftitle != curver.ftitle || pastver.ltitle != curver.ltitle || pastver.length != curver.length
        
            if curver.month < 10
                month = "0" + curver.month.to_s
            else
                month = curver.month.to_s
            end
            
            #일
            if curver.day < 10
                day = "0" + curver.day.to_s
            else
                day = curver.day.to_s
            end
            
            #시
            if curver.hour < 10
                hour = "0" + curver.hour.to_s
            else
                hour = curver.hour.to_s
            end
            
            #분
            if curver.min < 10
                min = "0" + curver.min.to_s
            else
                min = curver.min.to_s
            end
            
            #현재정보를 과거정보에 업데이트 시킴
            newver = Pastver.find_by_name(name)
            newver.ftitle = curver.ftitle
            newver.ltitle = curver.ltitle
            newver.length = curver.length
            newver.month = month.to_i
            newver.day = day.to_i
            newver.hour = hour.to_i
            newver.min = min.to_i
            newver.save
            
            return month.to_s + day.to_s + hour.to_s + min.to_s
            
        else
        
            #월
            if pastver.month < 10
                month = "0" + pastver.month.to_s
            else
                month = pastver.month.to_s
            end
            
            #일
            if pastver.day < 10
                day = "0" + pastver.day.to_s
            else
                day = pastver.day.to_s
            end
            
            #시
            if pastver.hour < 10
                hour = "0" + pastver.hour.to_s
            else
                hour = pastver.hour.to_s
            end
            
            #분
            if pastver.min < 10 
                min = "0" + pastver.min.to_s
            else
                min = pastver.min.to_s
            end
            
            return month.to_s + day.to_s + hour.to_s + min.to_s
        end
    end
end
