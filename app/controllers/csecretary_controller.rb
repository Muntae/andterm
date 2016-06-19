class CsecretaryController < ApplicationController
  layout "upview", only: [:updateview]
  def updateview
    #while true
      #학과 공지사항
      cse_noti_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21704&siteId=cse&linkUrl=")
      cse_noti_doc = Nokogiri::HTML(Net::HTTP.get(cse_noti_uri))
      cse_noti = cse_noti_doc.css("td.title/a").to_a
      tempname = "cse_noti"
      @cse0 = Parser.startParse cse_noti, tempname
      
      #학과 수업게시판
      cse_class_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21709&siteId=cse&linkUrl=")
      cse_class_doc = Nokogiri::HTML(Net::HTTP.get(cse_class_uri))
      cse_class = cse_class_doc.css("td.title/a").to_a
      tempname = "cse_class"
      @cse1 = Parser.startParse cse_class, tempname
      
      #학과 채용게시판
      cse_recruit_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21710&siteId=cse")
      cse_recruit_doc = Nokogiri::HTML(Net::HTTP.get(cse_recruit_uri))
      cse_recruit = cse_recruit_doc.css("td.title/a").to_a
      tempname = "cse_recruit"
      @cse2 = Parser.startParse cse_recruit, tempname
      
      #학과 기타행사게시판
      cse_event_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21711&siteId=cse")
      cse_event_doc = Nokogiri::HTML(Net::HTTP.get(cse_event_uri))
      cse_event = cse_event_doc.css("td.title/a").to_a
      tempname = "cse_event"
      @cse3 = Parser.startParse cse_event, tempname
      
      #학과 자유게시판
      cse_free_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21712&siteId=cse")
      cse_free_doc = Nokogiri::HTML(Net::HTTP.get(cse_free_uri))
      cse_free = cse_free_doc.css("td.title/a").to_a
      tempname = "cse_free"
      @cse4 = Parser.startParse cse_free, tempname
      
      # 1학년
      #C프로그래밍(차의영)
      har_c_uri = URI("http://52.196.227.153:8080/parsingHelper/CProgramming001.jsp")
      har_c_doc = Nokogiri::HTML(Net::HTTP.get(har_c_uri))
      har_c = har_c_doc.css("li/a").to_a
      tempname = "har_c"
      @lecture1_0 = Parser.startParse har_c, tempname
      
      #컴시입 공지(조환규 001)
      comsysintro1_uri = URI("http://52.196.227.153:8080/parsingHelper/ComputerSystemIntro001.jsp")
      comsysintro1_doc = Nokogiri::HTML(Net::HTTP.get(comsysintro1_uri))
      comsysintro1 = comsysintro1_doc.css("li/a").to_a
      tempname = "comsysintro1"
      @lecture1_1 = Parser.startParse comsysintro1, tempname
      
      #컴시입 공지(조환규 002)
      comsysintro2_uri = URI("http://52.196.227.153:8080/parsingHelper/ComputerSystemIntro002.jsp")
      comsysintro2_doc = Nokogiri::HTML(Net::HTTP.get(comsysintro2_uri))
      comsysintro2 = comsysintro2_doc.css("li/a").to_a
      tempname = "comsysintro2"
      @lecture1_2 = Parser.startParse comsysintro2, tempname
      
      #컴시입 공지(이도훈)
      vis_cs_noti_uri = URI("http://164.125.35.15/visbic_course/index.php?mid=CS1601notice")
      vis_cs_noti_doc = Nokogiri::HTML(Net::HTTP.get(vis_cs_noti_uri))
      vis_cs_noti = vis_cs_noti_doc.css("td.title/a").to_a
      tempname = "vis_cs_noti"
      @lecture1_3 = Parser.startParse vis_cs_noti, tempname
      
      #컴시입 강의(이도훈)
      vis_cs_lec_uri = URI("http://164.125.35.15/visbic_course/index.php?mid=CS1601lecture")
      vis_cs_lec_doc = Nokogiri::HTML(Net::HTTP.get(vis_cs_lec_uri))
      vis_cs_lec = vis_cs_lec_doc.css("td.title/a").to_a
      tempname = "vis_cs_lec"
      @lecture1_4 = Parser.startParse vis_cs_lec, tempname
      
      #컴시입 공지(류광렬)
      intel_cs_noti_uri = URI("http://52.196.227.153:8080/parsingHelper/ComputerSystemIntro007.jsp")
      intel_cs_noti_doc = Nokogiri::HTML(Net::HTTP.get(intel_cs_noti_uri))
      intel_cs_noti = intel_cs_noti_doc.css("li/a").to_a
      tempname = "intel_cs_noti"
      @lecture1_5 = Parser.startParse intel_cs_noti, tempname
      
      #2학년
      
      #논설 공지(이정태)
      nwlab_logic_noti_uri = URI("http://52.196.227.153:8080/parsingHelper/LogicalCircuit059.jsp")
      nwlab_logic_noti_doc = Nokogiri::HTML(Net::HTTP.get(nwlab_logic_noti_uri))
      nwlab_logic_noti = nwlab_logic_noti_doc.css("ul.notice//a").to_a
      tempname = "nwlab_logic_noti"
      @lecture2_0 = Parser.startParse nwlab_logic_noti, tempname
      
      #논설 강의(이정태)
      nwlab_logic_lect_uri = URI("http://52.196.227.153:8080/parsingHelper/LogicalCircuit059.jsp")
      nwlab_logic_lect_doc = Nokogiri::HTML(Net::HTTP.get(nwlab_logic_lect_uri))
      nwlab_logic_lect = nwlab_logic_lect_doc.css("ul.lecture//li").to_a
      tempname = "nwlab_logic_lect"
      @lecture2_1 = Parser.startParse nwlab_logic_lect, tempname
      
      #논설(양세양 - 학과 수업게시판에서 작성자 양세양으로 검색)
      logic_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21709&siteId=cse&linkUrl=&dum=dum&boardId=10420&page=1&search=%EC%96%91%EC%84%B8%EC%96%91&column=userName")
      logic_doc = Nokogiri::HTML(Net::HTTP.get(logic_uri))
      logic = logic_doc.css("td.title/a").to_a
      tempname = "logic"
      @lecture2_2 = Parser.startParse logic, tempname
      
      #디지털전자회로(김정구)
      abc_de_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8008&siteId=kimjg")
      abc_de_doc = Nokogiri::HTML(Net::HTTP.get(abc_de_uri))
      abc_de = abc_de_doc.css("td.title/a").to_a
      tempname = "abc_de"
      @lecture2_3 = Parser.startParse abc_de, tempname
      
      #공학선형대수학(김민환 - 학과 수업게시판에서 작성자 김민환으로 검색)
      linear_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21709&siteId=cse&linkUrl=&dum=dum&boardId=10420&page=1&search=%EA%B9%80%EB%AF%BC%ED%99%98&column=userName")
      linear_doc = Nokogiri::HTML(Net::HTTP.get(linear_uri))
      linear = linear_doc.css("td.title/a").to_a
      tempname = "linear"
      @lecture2_4 = Parser.startParse linear, tempname
      
      #공학선형대수학 공지(이도훈)
      vis_linear_noti_uri = URI("http://164.125.35.15/visbic_course/index.php?mid=LA1601notice")
      vis_linear_noti_doc = Nokogiri::HTML(Net::HTTP.get(vis_linear_noti_uri))
      vis_linear_noti = vis_linear_noti_doc.css("td.title/a").to_a
      tempname = "vis_linear_noti"
      #@lecture2_ = Parser.startParse vis_linear_noti, tempname
      
      #공학선형대수학 강의(이도훈)
      vis_linear_lec_uri = URI("http://164.125.35.15/visbic_course/index.php?mid=LA1601lecture")
      vis_linear_lec_doc = Nokogiri::HTML(Net::HTTP.get(vis_linear_lec_uri))
      vis_linear_lec = vis_linear_lec_doc.css("td.title").to_a
      tempname = "vis_linear_lec"
      @lecture2_5 = Parser.startParse vis_linear_lec, tempname
      
      #이산수학(김민환 - 학과 수업게시판에서 작성자 김민환으로 검색)
      dis_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21709&siteId=cse&linkUrl=&dum=dum&boardId=10420&page=1&search=%EA%B9%80%EB%AF%BC%ED%99%98&column=userName")
      dis_doc = Nokogiri::HTML(Net::HTTP.get(dis_uri))
      dis = dis_doc.css("td.title/a").to_a
      tempname = "dis"
      @lecture2_6 = Parser.startParse dis, tempname
      
      #이산수학 공지(류광렬)
      intel_dis_noti_uri = URI("http://52.196.227.153:8080/parsingHelper/ComputerSystemIntro007.jsp")
      intel_dis_noti_doc = Nokogiri::HTML(Net::HTTP.get(intel_dis_noti_uri))
      intel_dis_noti = intel_dis_noti_doc.css("li/a").to_a
      tempname = "intel_dis_noti"
      @lecture2_7 = Parser.startParse intel_dis_noti, tempname
      
      #이산수학 공지(김종덕)
      mobile_dis_math_noti_uri = URI("http://mobile.pusan.ac.kr/discrete_math_notice_2016")
      mobile_dis_math_noti_doc = Nokogiri::HTML(Net::HTTP.get(mobile_dis_math_noti_uri))
      mobile_dis_math_noti = mobile_dis_math_noti_doc.css("td.title/a").to_a
      tempname = "mobile_dis_math_noti"
      @lecture2_8 = Parser.startParse mobile_dis_math_noti, tempname
      
      #이산수학 강의(김종덕)
      mobile_dis_math_lec_uri = URI("http://mobile.pusan.ac.kr/discrete_math_material_2016")
      mobile_dis_math_lec_doc = Nokogiri::HTML(Net::HTTP.get(mobile_dis_math_lec_uri))
      mobile_dis_math_lec = mobile_dis_math_lec_doc.css("td.title/a").to_a
      tempname = "mobile_dis_math_lec"
      @lecture2_9 = Parser.startParse mobile_dis_math_lec, tempname
      
      #C++프로그래밍(탁성우)
      nclab_cpp_uri = URI("http://nclab.blogspot.kr/search/label/C%20Double%20Plus")
      nclab_cpp_doc = Nokogiri::HTML(Net::HTTP.get(nclab_cpp_uri))
      nclab_cpp = nclab_cpp_doc.css("h3.post-title.entry-title/a").to_a
      tempname = "nclab_cpp"
      @lecture2_10 = Parser.startParse nclab_cpp, tempname
      
      #컴퓨터기초실험(김정구)
      abc_ex_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8007&siteId=kimjg")
      abc_ex_doc = Nokogiri::HTML(Net::HTTP.get(abc_ex_uri))
      abc_ex = abc_ex_doc.css("td.title/a").to_a
      tempname = "abc_ex"
      @lecture2_11 = Parser.startParse abc_ex, tempname
      
      #컴퓨터기초실험(이정태)
      nwlab_ex_lect_uri = URI("http://52.196.227.153:8080/parsingHelper/ComputerBasicExper003.jsp")
      nwlab_ex_lect_doc = Nokogiri::HTML(Net::HTTP.get(nwlab_ex_lect_uri))
      nwlab_ex_lect = nwlab_ex_lect_doc.css("ul.lecture//li").to_a
      tempname = "nwlab_ex_lect"
      @lecture2_12 = Parser.startParse nwlab_ex_lect, tempname
      
      #컴퓨터기초실험(양세양 - 학과 수업게시판에서 작성자 양세양으로 검색)
      cse_ex_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21709&siteId=cse&linkUrl=&dum=dum&boardId=10420&page=1&search=%EC%96%91%EC%84%B8%EC%96%91&column=userName")
      cse_ex_doc = Nokogiri::HTML(Net::HTTP.get(cse_ex_uri))
      cse_ex = cse_ex_doc.css("td.title/a").to_a
      tempname = "cse_ex"
      @lecture2_13 = Parser.startParse cse_ex, tempname
      
      #컴퓨터기초실험(최윤호)
      sec_ex_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8027&siteId=sec")
      sec_ex_doc = Nokogiri::HTML(Net::HTTP.get(sec_ex_uri))
      sec_ex = sec_ex_doc.css("td.title/a").to_a
      tempname = "sec_ex"
      @lecture2_14 = Parser.startParse sec_ex, tempname
      
      #오픈소스소프트웨어개발(채흥석)
      square_open_uri = URI("http://square.cse.pusan.ac.kr/xe/board_Pqiw21")
      square_open_doc = Nokogiri::HTML(Net::HTTP.get(square_open_uri))
      square_open = square_open_doc.css("tbody/tr/td.title/a").to_a
      tempname = "square_open"
      @lecture2_15 = Parser.startParse square_open, tempname
      
      #오픈소스소프트웨어개발(탁성우)
      nclab_open_uri = URI("http://nclab.blogspot.kr/search/label/Open%20Source%20S%2FW")
      nclab_open_doc = Nokogiri::HTML(Net::HTTP.get(nclab_open_uri))
      nclab_open = nclab_open_doc.css("h3.post-title.entry-title/a").to_a
      tempname = "nclab_open"
      @lecture2_16 = Parser.startParse nclab_open, tempname
      
      #오픈소스소프트웨어개발(최윤호)
      sec_os_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8026&siteId=sec")
      sec_os_doc = Nokogiri::HTML(Net::HTTP.get(sec_os_uri))
      sec_os = sec_os_doc.css("td.title/a").to_a
      tempname = "sec_os"
      @lecture2_17 = Parser.startParse sec_os, tempname
      
      #3학년
      
      #데이터통신 공지(이정태)
      nwlab_data_noti_uri = URI("http://52.196.227.153:8080/parsingHelper/DataCommunication059.jsp")
      nwlab_data_noti_doc = Nokogiri::HTML(Net::HTTP.get(nwlab_data_noti_uri))
      nwlab_data_noti = nwlab_data_noti_doc.css("li//a").to_a
      tempname = "nwlab_data_noti"
      @lecture3_0 = Parser.startParse nwlab_data_noti, tempname
      
      #데이터통신 강의(이정태)
      nwlab_data_lect_uri = URI("http://52.196.227.153:8080/parsingHelper/DataCommunication059.jsp")
      nwlab_data_lect_doc = Nokogiri::HTML(Net::HTTP.get(nwlab_data_lect_uri))
      nwlab_data_lect = nwlab_data_lect_doc.css("ul.lecture//li").to_a
      tempname = "nwlab_data_lect"
      @lecture3_1 = Parser.startParse nwlab_data_lect, tempname
      
      #데이터통신 공지(김종덕)
      mobile_data_noti_uri = URI("http://mobile.pusan.ac.kr/data_communication_notice_2016")
      mobile_data_noti_doc = Nokogiri::HTML(Net::HTTP.get(mobile_data_noti_uri))
      mobile_data_noti = mobile_data_noti_doc.css("td.title/a").to_a
      tempname = "mobile_data_noti"
      @lecture3_2 = Parser.startParse mobile_data_noti, tempname
      
      #데이터통신 강의(김종덕)
      mobile_data_lec_uri = URI("http://mobile.pusan.ac.kr/data_communication_material_2016")
      mobile_data_lec_doc = Nokogiri::HTML(Net::HTTP.get(mobile_data_lec_uri))
      mobile_data_lect = mobile_data_lec_doc.css("td.title/a").to_a
      tempname = "mobile_data_lect"
      @lecture3_3 = Parser.startParse mobile_data_lect, tempname
      
      #운영체제(최윤호)
      sec_os_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8026&siteId=sec")
      sec_os_doc = Nokogiri::HTML(Net::HTTP.get(sec_os_uri))
      sec_os = sec_os_doc.css("td.title/a").to_a
      tempname = "sec_os"
      @lecture3_4 = Parser.startParse sec_os, tempname
      
      #프로그래밍언어론 공지(권혁철)
      ailab_pl_noti_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=7951&siteId=ailab")
      ailab_pl_noti_doc = Nokogiri::HTML(Net::HTTP.get(ailab_pl_noti_uri))
      ailab_pl_noti = ailab_pl_noti_doc.css("td.title/a").to_a
      tempname = "ailab_pl_noti"
      @lecture3_5 = Parser.startParse ailab_pl_noti, tempname
      
      #프로그래밍언어론 강의(권혁철)
      ailab_pl_lect_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=7951&siteId=ailab")
      ailab_pl_lect_doc = Nokogiri::HTML(Net::HTTP.get(ailab_pl_lect_uri))
      ailab_pl_lect = ailab_pl_lect_doc.css("td.title/a").to_a
      tempname = "ailab_pl_lect"
      @lecture3_6 = Parser.startParse ailab_pl_lect, tempname
      
      #프로그래밍언어론 공지(염근혁)
      se_pl_noti_uri = URI("http://se.ce.pusan.ac.kr/xe/pl_2016_01_notice")
      se_pl_noti_doc = Nokogiri::HTML(Net::HTTP.get(se_pl_noti_uri))
      se_pl_noti = se_pl_noti_doc.css("td.title/a").to_a
      tempname = "se_pl_noti"
      @lecture3_7 = Parser.startParse se_pl_noti, tempname
      
      #프로그래밍언어론 강의(염근혁)
      se_pl_lect_uri = URI("http://se.ce.pusan.ac.kr/xe/pl_2016_01_lecture")
      se_pl_lect_doc = Nokogiri::HTML(Net::HTTP.get(se_pl_lect_uri))
      se_pl_lect = se_pl_lect_doc.css("td.title/a").to_a
      tempname = "se_pl_lect"
      @lecture3_8 = Parser.startParse se_pl_lect, tempname
      
      #컴퓨터구조(백윤주)
      com_struc_uri = URI("http://eslab.ismine.net/bbs/bbs/board.php?bo_table=arch2016")
      comstruc_doc = Nokogiri::HTML(Net::HTTP.get(com_struc_uri))
      eslab_comstruc = comstruc_doc.css("td.subject//a").to_a
      tempname = "eslab_comstruc"
      @lecture3_9 = Parser.startParse eslab_comstruc, tempname
      
      #컴퓨터구조 공지(김호원)
      infosec_comstruc_board_uri = URI("http://infosec.pusan.ac.kr/bbs/zboard.php?id=u2016_1_ca_b")
      infosec_comstruc_board_doc = Nokogiri::HTML(Net::HTTP.get(infosec_comstruc_board_uri))
      infosec_comstruc_board = infosec_comstruc_board_doc.css("div//a").to_a
      tempname = "infosec_comstruc_board"
      @lecture3_10 = Parser.startParse infosec_comstruc_board, tempname
      
      #컴퓨터구조 강의(김호원)
      infosec_comstruc_uri = URI("http://infosec.pusan.ac.kr/bbs/zboard.php?id=u2016_1_ca")
      infosec_comstruc_doc = Nokogiri::HTML(Net::HTTP.get(infosec_comstruc_uri))
      infosec_comstruc = infosec_comstruc_doc.css("div//a").to_a
      tempname = "infosec_comstruc"
      @lecture3_11 = Parser.startParse infosec_comstruc, tempname
      
      #컴퓨터소프트웨어실험 공지(권혁철, 전분반)
      ailab_and_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8060&siteId=ailab")
      ailab_and_doc = Nokogiri::HTML(Net::HTTP.get(ailab_and_uri))
      ailab_and_noti = ailab_and_doc.css("td.title/a").to_a
      tempname = "ailab_and_noti"
      @lecture3_12 = Parser.startParse ailab_and_noti, tempname
  
      #컴퓨터소프트웨어실험 강의(권혁철, 전분반)
      ailab_and_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8059&siteId=ailab")
      ailab_and_doc = Nokogiri::HTML(Net::HTTP.get(ailab_and_uri))
      ailab_and_lect = ailab_and_doc.css("td.title/a").to_a
      tempname = "ailab_and_lect"
      @lecture3_13 = Parser.startParse ailab_and_lect, tempname
      
      #4학년
      
      #컴퓨터시각개론(차의영)
      har_comsight_uri = URI("http://52.196.227.153:8080/parsingHelper/ComputerVision059.jsp")
      har_comsight_doc = Nokogiri::HTML(Net::HTTP.get(har_comsight_uri))
      har_comsight = har_comsight_doc.css("li//a").to_a
      tempname = "har_comsight"
      @lecture4_0 = Parser.startParse har_comsight, tempname
      
      #인공지능 공지(권혁철)
      ailab_ai_noti_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8050&siteId=ailab&linkUrl=")
      ailab_ai_noti_doc = Nokogiri::HTML(Net::HTTP.get(ailab_ai_noti_uri))
      ailab_ai_noti = ailab_ai_noti_doc.css("td.title/a").to_a
      tempname = "ailab_ai_noti"
      @lecture4_1 = Parser.startParse ailab_ai_noti, tempname
      
      #인공지능 강의(권혁철)
      ailab_ai_lect_uri = URI("http://prof.pusan.ac.kr/user/indexSub.action?codyMenuSeq=8049&siteId=ailab&linkUrl=")
      ailab_ai_lect_doc = Nokogiri::HTML(Net::HTTP.get(ailab_ai_lect_uri))
      ailab_ai_lect = ailab_ai_lect_doc.css("td.title/a").to_a
      tempname = "ailab_ai_lect"
      @lecture4_2 = Parser.startParse ailab_ai_lect, tempname
      
      #컴퓨터보안 공지(김호원)
      infosec_comsec_board_uri = URI("http://infosec.pusan.ac.kr/bbs/zboard.php?id=u2016_1_cs_b")
      infosec_comsec_board_doc = Nokogiri::HTML(Net::HTTP.get(infosec_comsec_board_uri))
      infosec_comsec_board = infosec_comsec_board_doc.css("div//a").to_a
      tempname = "infosec_comsec_board"
      @lecture4_3 = Parser.startParse infosec_comsec_board, tempname
      
      #컴퓨터보안 강의(김호원)
      infosec_comsec_uri = URI("http://infosec.pusan.ac.kr/bbs/zboard.php?id=u2016_1_cs")
      infosec_comsec_doc = Nokogiri::HTML(Net::HTTP.get(infosec_comsec_uri))
      infosec_comsec = infosec_comsec_doc.css("div//a").to_a
      tempname = "infosec_comsec"
      @lecture4_4 = Parser.startParse infosec_comsec, tempname
      
      #소프트웨어시스템설계(채흥석)
      redmine_uri = URI("http://164.125.34.143/redmine/projects/2016_experiment/news")
      redmine_doc = Nokogiri::HTML(Net::HTTP.get(redmine_uri))
      redmine = redmine_doc.css("div#content//h3").to_a
      tempname = "redmine"
      @lecture4_5 = Parser.startParse redmine, tempname
      
      #집적회로및시스템설계(양세양 - 학과 수업게시판에서 작성자 양세양으로 검색)
      sw_ex_uri = URI("http://uwcms.pusan.ac.kr/user/indexSub.action?codyMenuSeq=21709&siteId=cse&linkUrl=&dum=dum&boardId=10420&page=1&search=%EC%96%91%EC%84%B8%EC%96%91&column=userName")
      sw_ex_doc = Nokogiri::HTML(Net::HTTP.get(sw_ex_uri))
      sw_ex = sw_ex_doc.css("td.title/a").to_a
      tempname = "sw_ex"
      @lecture4_6 = Parser.startParse sw_ex, tempname
      
      #컴퓨터응용설계실험(백윤주)
      eslab_exp_uri = URI("http://eslab.byus.net/bbs/bbs/board.php?bo_table=4_1exp2016")
      eslab_exp_doc = Nokogiri::HTML(Net::HTTP.get(eslab_exp_uri))
      eslab_exp = eslab_exp_doc.css("td.subject//a").to_a
      tempname = "eslab_exp"
      @lecture4_7 = Parser.startParse eslab_exp, tempname
      
      #컴퓨터응용설계실험(염근혁)
      se_ex_uri = URI("http://se.ce.pusan.ac.kr/xe/exp_2016_01_notice")
      se_ex_doc = Nokogiri::HTML(Net::HTTP.get(se_ex_uri))
      se_ex = se_ex_doc.css("td.title/a").to_a
      tempname = "se_ex"
      @lecture4_8 = Parser.startParse se_ex, tempname
      
      #컴퓨터응용설계실험(채흥석)
      redmine_ex_uri = URI("http://164.125.34.143/redmine/projects/2016_experiment/news")
      redmine_ex_doc = Nokogiri::HTML(Net::HTTP.get(redmine_ex_uri))
      redmine_ex = redmine_ex_doc.css("div#content//h3").to_a
      tempname = "redmine_ex"
      @lecture4_9 = Parser.startParse redmine_ex, tempname
      
      #testpage
      testpage = URI("https://simple-muntae.c9.io/")
      test_doc = Nokogiri::HTML(Net::HTTP.get(testpage))
      t = test_doc.css("h3.title/a").to_a
      tempname = "testpage"
      @testpage = Parser.startParse t, tempname
      #sleep(30)
    #end

  end
  
  def read
    
    @one_post = Post.where("id = :id",
    { id: params[:id] }).take
    
  end
  
  def list
    
    @allpost = Post.page(params[:page]).per(8)
    
  end
  
  def create
  
  end
  
  def write
    newpost = Post.new
    newpost.post_title = params[:title]
    newpost.post_name = params[:name]
    newpost.post_pwd = params[:password]
    newpost.post_content = params[:content]
    newpost.save
    
    redirect_to '/csecretary/read/' + newpost.id.to_s
  
  end
  
  def delete
    masterKey = "masterpw1"
    del_post = Post.find(params[:id])
    del_post_confirm = params[:confirm_password]
    if del_post.post_pwd == del_post_confirm || del_post_confirm == masterKey 
      del_post.destroy
      redirect_to '/'

    end
    
  end
  
  def modify
    @one_post = Post.find(params[:id])
  
  end
  
  def update
    masterKey = "masterpw1"
    one_post = Post.find(params[:id])
    one_post_confirm = params[:confirm_password]
    if one_post.post_pwd == one_post_confirm || one_post_confirm == masterKey
      one_post.post_name = params[:new_name]
      one_post.post_content = params[:new_content]
      one_post.save
      redirect_to '/csecretary/read/' + one_post.id.to_s
    else
      redirect_to '/csecretary/read/' + one_post.id.to_s
    end
    
  end
  
  def write_reply
    my_reply = Reply.new
    my_reply.post_id = params[:post_id]
    #my_reply.reply_name = params[:reply_name]
    my_reply.reply_content = params[:reply_content]
    my_reply.save
    
    redirect_to '/csecretary/read/' + my_reply.post_id.to_s
  end
  
  def relay
    redirect_to '/'
  end
end
