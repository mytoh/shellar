
## bbc {{{
alias bbc1 "mplayer --playlist='http://www.bbc.co.uk/radio/listen/live/r1.asx'"
alias bbc6  "mplayer --playlist='http://www.bbc.co.uk/radio/listen/live/r6.asx'"
## }}}

### for Podcasting, Streaming, FM, Radio   (UTF-8)                  2013/ 3/25
# 24時間放送でないところは、放送時間を確認してから聞いて下さい。

# NHK
alias sb-nhkr1 'mplayer -playlist http://mfile.akamai.com/129931/live/reflector:46032.asx'
alias sb-nhkr2 'mplayer -playlist http://mfile.akamai.com/129932/live/reflector:46056.asx'
alias sb-nhkfm 'mplayer -playlist http://mfile.akamai.com/129933/live/reflector:46051.asx'

# FMわっぴ〜             (北海道稚内市)
alias sb-wappy "mplayer mms://fmwappy.aa0.netvolante.jp:8080"
alias sb-wakkanai sb-wappy
# FMりべーる             (北海道旭川市)
alias sb-837 'mplayer http://wms.shibapon.net/fm837'
alias sb-asahikawa sb-837
# FM-JAGA                (北海道帯広市)
alias sb-jaga 'mplayer mms://simul.freebit.net/fmjaga'
alias sb-obihiroj sb-jaga
# FM WING                (北海道帯広市)
alias sb-wing 'mplayer mms://simul.freebit.net/fmwing'
alias sb-obihirow sb-wing
# FMくしろ               (北海道釧路市)
alias sb-kushiro "mplayer -playlist http://www.simulradio.jp/asx/FmKushiro.asx"
# FM Dramacity           (北海道札幌市厚別区)
alias sb-dramacity 'mplayer -novideo http://bipscweb.ddo.jp:8080/'
alias sb-sapporod sb-dramacity
# 三角山放送局           (北海道札幌市西区)
alias sb-sankakuyama 'mplayer -playlist http://wm.sankakuyama.co.jp/asx/sankaku_24k.asx'
alias sb-sapporos sb-sankakuyama
# ラジオニセコ  24時間   (北海道虻田郡ニセコ町)
alias sb-niseko "mplayer -playlist http://www.radioniseko.jp/asx/radioniseko_24k.asx"
# FMいるか               (北海道函館市)
alias sb-iruka "mplayer mms://hdv.nkansai.tv/iruka"
alias sb-hakodate sb-iruka

# ラヂオもりおか         (岩手県盛岡市)
alias sb-morioka 'mplayer mms://simul.freebit.net/radiomorioka'
# 横手かまくらエフエム   (秋田県横手市)
alias sb-yokote "mplayer -playlist http://www.simulradio.jp/asx/FmYokote.asx"
# FMゆーとぴあ  24時間   (秋田県湯沢市)
alias sb-yutopia "mplayer -playlist http://www.simulradio.jp/asx/FmYutopia.asx"
alias sb-yuzawa sb-yutopia
# ラジオ石巻             (宮城県石巻市)
alias sb-ishinomaki "mplayer -playlist http://www.simulradio.jp/asx/RadioIshinomaki.asx"
# fmいずみ               (宮城県仙台市)
alias sb-izumi "mplayer -playlist http://www.simulradio.jp/asx/fmIzumi.asx"
alias sb-sendaii sb-izumi
# RADIO3                 (宮城県仙台市)
alias sb-radio3 'mplayer mms://simul.freebit.net/radio3'
alias sb-sendai3 sb-radio3
# FM Mot.com             (福島県本宮市)
alias sb-motcom 'mplayer mms://simul.freebit.net/fmmotcom'
alias sb-motomiya sb-motcom
# エフエム会津           (福島県会津若松市)
alias sb-aizu "mplayer -playlist http://www.simulradio.jp/asx/FmAizu.asx"
# 郡山コミュニティ放送   (福島県郡山市)
alias sb-koco "mplayer -playlist http://www.simulradio.jp/asx/kocofm.asx"
alias sb-koriyama sb-koco
# FMいわき    24時間     (福島県いわき市)
alias sb-iwaki 'mplayer mmsh://wms.shibapon.net/SeaWaveFmIwaki'

# FMぱるるん             (茨城県水戸市)
alias sb-palulun 'mplayer -playlist http://www.simulradio.jp/asx/fmpalulun.asx'
alias sb-mito sb-palulun
# ラヂオつくば  24時間   (茨城県つくば市)
alias sb-tsukuba 'mplayer -novideo mms://ir298.com/IRTsukuba/radiotsukuba.asx'
# エフエムかしま         (茨城県鹿嶋市)
alias sb-kashima "mplayer -playlist http://www.simulradio.jp/asx/FmKashima.asx"
# FM桐生                 (群馬県桐生市)
alias sb-kiryu 'mplayer http://wms.shibapon.net/kiryu.fm'
# まえばしCITYエフエム  24時間   (群馬県前橋市)
alias sb-maebashi "mplayer http://radio.maebashi.fm:8080/mwave"

# かずさエフエム         (千葉県木更津市)
alias sb-kazusa "mplayer -playlist http://www.simulradio.jp/asx/KazusaFM.asx"
alias sb-kisarazu sb-kazusa

# フラワーラジオ         (埼玉県鴻巣市)
alias sb-flower 'mplayer http://wms.shibapon.net/flower'
alias sb-kounosu sb-flower
# REDS WAVE              (埼玉県さいたま市浦和区)
alias sb-redswave 'mplayer http://wms.shibapon.net/reds-wave'
# すまいる FM 24時間     (埼玉県朝霞市)
alias sb-smile 'mplayer mmsh://hdv.nkansai.tv/smile'
alias sb-asaka sb-smile

# かつしかFM  24時間     (東京都葛飾区)
alias sb-katsushika "mplayer -playlist http://www.simulradio.jp/asx/KatsushikaFM.asx"
# レインボータウンFM     (東京都江東区)
alias sb-rainbowtown "mplayer -playlist http://www.simulradio.jp/asx/RainbowtownFM.asx"
# 中央エフエム  24時間   (東京都中央区)
alias sb-chuo "mplayer -playlist http://www.simulradio.jp/asx/chuo_fm.asx"
# むさしのFM  24時間     (東京都武蔵野市)
alias sb-musashino "mplayer -playlist http://www.simulradio.jp/asx/MusashinoFM.asx"
# FM 西東京   24時間     (東京都西東京市)
alias sb-nishitokyo 'mplayer mmsh://wms.shibapon.net/FmNishiTokyo'
# FM たちかわ 24時間     (東京都立川市)
alias sb-tachikawa 'mplayer mmsh://simuledge.shibapon.net/FmTachikawa'
# 調布FM      24時間     (東京都調布市)
alias sb-chofu "mplayer -playlist http://www.simulradio.jp/asx/ChofuFM.asx"

# かわさきFM             (神奈川県川崎市)
alias sb-kawasaki 'mplayer http://wms.shibapon.net/FM_K-City'
# FMサルース  24時間     (神奈川県横浜市)
alias sb-salus "mplayer -playlist http://www.simulradio.jp/asx/FmSalus.asx"
# FM戸塚      24時間     (神奈川県横浜市)
alias sb-totsuka 'mplayer http://wms.shibapon.net/FmTotsuka'
# 湘南ビーチFM  24時間   (神奈川県逗子市/三浦郡葉山町)
alias sb-shonanbeach 'mplayer mmst://simul.freebit.net/shonanbeachfma'
alias sb-hayama sb-shonanbeach
# FMやまと               (神奈川県大和市)
alias sb-yamato 'mplayer http://wms.shibapon.net/FMYamato'
# レディオ湘南           (神奈川県藤沢市)
alias sb-radioshonan 'mplayer mms://simul.freebit.net/radioshonan'
alias sb-fujisawa sb-radioshonan
# エフエムさがみ         (神奈川県相模原市)
alias sb-sagami "mplayer -novideo -playlist http://www.fmsagami.co.jp/asx/fmsagami.asx"
# FM kaon     24時間     (神奈川県海老名市)
alias sb-kaon "mplayer mmsh://hdv.nkansai.tv/kaon"
alias sb-ebina sb-kaon
# FMおだわら  24時間     (神奈川県小田原市)
alias sb-odawara 'mplayer mmst://simul.freebit.net/fmodawara'

# FM Kento               (新潟県新潟市)
alias sb-kento 'mplayer mms://simul.freebit.net/fmkento'
alias sb-niigata sb-kento
# FM PIKKARA             (新潟県柏崎市)
alias sb-pikkara 'mplayer -novideo -playlist http://www.happy-kashiwazaki.com/pikkara/livekcb.asx'
alias sb-kashiwazaki sb-pikkara
# FM軽井沢    24時間     (長野県軽井沢町)
alias sb-karuizawa 'mplayer mmst://simul.freebit.net/fmkaruizawa'
# FMさくだいら           (長野県佐久市)
alias sb-sakudaira "mplayer mms://hdv.nkansai.tv/sakudaira"
# あづみ野FM  24時間     (長野県安曇野市)
alias sb-azumino "mplayer mms://hdv.nkansai.tv/azumino"

# FM-N1                  (石川県石川郡野々市町)
alias sb-n1 "mplayer -novideo http://android.fmn1.jp/live/"
alias sb-nonoichi sb-n1
# ハーバーステーション   (福井県敦賀市)
alias sb-harbor779 'mplayer `wget -O - http://www.web-services.jp/harbor779/radio.html | sed -n "/mp3/s/^.*\(http:[^;]*\).*$/\1/p"`'
alias sb-tsuruga sb-harbor779

# エフエム熱海湯河原     (静岡県熱海市)
alias sb-ciao 'mplayer http://simul.freebit.net:8310/ciao'
alias sb-atami sb-ciao

# RADIO SANQ  24時間     (愛知県瀬戸市)
alias sb-sanq "mplayer -playlist http://www.simulradio.jp/asx/RadioSANQ.asx"
alias sb-seto sb-sanq
# FMおかざき             (愛知県岡崎市)
alias sb-okazaki "mplayer -playlist http://www.simulradio.jp/asx/FmOkazaki.asx"
# Pitch FM               (愛知県刈谷市)
alias sb-pitch "mplayer mms://hdv.nkansai.tv/pitch"
alias sb-kariya sb-pitch
# MID-FM                 (愛知県名古屋市)
alias sb-mid 'mplayer http://wms.shibapon.net/mid-fm761'
alias sb-nagoya sb-mid
# PORT WAVE              (三重県四日市)
alias sb-portwave 'mplayer -playlist http://www.p-wave.ne.jp/live/wmedia/portwave.asx'
alias sb-yokkaichi sb-portwave

# えふえむ草津  24時間   (滋賀県草津市)
alias sb-kusatsu "mplayer mmsh://hdv.nkansai.tv/rockets785"

# 京都リビングエフエム   (京都市伏見区)
alias sb-kyotoliving "mplayer -playlist http://www.simulradio.jp/asx/KyotoLivingFM.asx"
# FM 丹波     24時間     (京都府福知山市)
alias sb-tanba 'mplayer `wget -O - http://fukuchiyama.fm-tanba.jp/simul.asx | tr "\r" "\n" | sed -n "s/^.*\(mms:[^\"]*\).*$/\1/p"`'
alias sb-fukuchiyama sb-tanba

# FMひらかた  24時間     (大阪府枚方市)
alias sb-hirakata 'mplayer mms://simuledge.shibapon.net/Fmhirakata'
# みのおエフエム  24時間 (大阪府箕面市)
alias sb-minoh "mplayer -playlist http://fm.minoh.net/minohfm.asx"
# FM千里                 (大阪府豊中市)
alias sb-senri 'mplayer http://simul.freebit.net:8310/fmsenri'
# FM HANAKO              (大阪府守口市)
alias sb-hanako 'mplayer -novideo `wget -O - http://fmhanako.jp/radio/824.asx | sed -n "/mms/{s/^.*\(mms:[^\"]*\).*$/\1/p; q;}"`'
alias sb-moriguchi sb-hanako
# ウメダFM Be Happy!   24時間  (大阪府大阪市)
alias sb-umeda "mplayer -playlist http://www.simulradio.jp/asx/FmKita.asx"
# YES-fm                 (大阪府大阪市中央区)
alias sb-yes "mplayer -playlist http://www.simulradio.jp/asx/YesFM.asx"
alias sb-nanba sb-yes

# FM JUNGLE   24時間     (兵庫県豊岡市)
alias sb-jungle 'mplayer http://wms.shibapon.net/FmJungle'
alias sb-toyooka sb-jungle
# FM宝塚                 (兵庫県宝塚市)
alias sb-takarazuka "mplayer -playlist http://www.simulradio.jp/asx/FmTakarazuka.asx"
# エフエムあまがさき     (兵庫県尼崎市)
alias sb-amagasaki "mplayer mmsh://hdv.nkansai.tv/aiai"
# さくらFM               (兵庫県西宮市)
alias sb-sakura "mplayer mms://hdv.nkansai.tv/sakura"
alias sb-nishinomiya sb-sakura
# FMわぃわぃ             (兵庫県神戸市)
alias sb-yy 'mplayer http://simul.freebit.net:8310/fmyy'
# エフエムみっきぃ       (兵庫県三木市)
alias sb-miki 'mplayer http://wms.shibapon.net/FmMiki'
# BAN-BANラジオ  24時間  (兵庫県加古川市)
alias sb-banban 'mplayer mmsh://wms.shibapon.net/BAN-BAN_Radio'
alias sb-kakogawa sb-banban
# FM GENKI               (兵庫県姫路市)
alias sb-genki 'mplayer http://wms.shibapon.net/FmGenki'
alias sb-himeji sb-genki

# BananaFM    24時間     (和歌山県和歌山市)
alias sb-banana "mplayer mmsh://wms.shibapon.net/BananaFM"
alias sb-wakayama sb-banana
# FM TANABE              (和歌山県田辺市)
alias sb-tanabe 'mplayer http://wms.shibapon.net/FmTanabe'
# FMビーチステーション   (和歌山県白浜町)
alias sb-beachstation "mplayer -playlist http://www.simulradio.jp/asx/BeachStation.asx"
alias sb-shirahama sb-beachstation

# DARAZ FM    24時間     (鳥取県米子市)
alias sb-daraz "mplayer -playlist http://www.darazfm.com/streaming.asx"
alias sb-yonago sb-daraz
# エフエムつやま         (岡山県津山市)
alias sb-tsuyama 'mplayer `wget -O - http://www.fm-tsuyama.jp:1080/flashplayer.html | sed -n "s/^<e.*\(http:[^\&]*\).*$/\1/p"`'
# FMちゅーピー           (広島県広島市)
alias sb-chupea 'mplayer http://wms.shibapon.net/FmChuPea'
alias sb-hiroshima sb-chupea

# FM高松                 (香川県高松市)
alias sb-takamatsu 'mplayer http://wms.shibapon.net/FmTakamatsu'
# FMびざん               (徳島県徳島市)
alias sb-bfm 'mplayer http://wms.shibapon.net/B-FM791'
alias sb-tokushima sb-bfm

# FM KITAQ               (福岡県北九州市)
alias sb-kitaqk "mplayer mms://st1.shimabara.jp/fmkitaq"
# AIR STATION HIBIKI     (福岡県北九州市)
alias sb-hibiki "mplayer -playlist http://std1.ladio.net:8000/soxisix37494.m3u"
alias sb-kitaqw sb-hibiki
# スターコーンFM         (福岡県築上郡築上町)
alias sb-starcorn 'mplayer mms://hdv.nkansai.tv/starcorn'
# コミュニティラジオ天神 (福岡県福岡市)
alias sb-comiten 'mplayer `wget -O - http://comiten.jp/live.asx | sed -n "s/^.*\(mms:[^\"]*\).*$/\1/p"`'
alias sb-fukuokat sb-comiten
# FMしまばら             (長崎県島原市)
alias sb-shimabara 'mplayer mms://st1.shimabara.jp/fmlive'
# NOAS FM                (大分県中津市)
alias sb-noas 'mplayer mms://simul.freebit.net/fmnakatsu'
alias sb-nakatsu sb-noas
# ゆふいんラヂオ  24時間 (大分県由布市)
alias sb-yufuin "mplayer mmsh://hdv.nkansai.tv/yufuin"
# SunshineFM             (宮崎県宮崎市)
alias sb-sunshine 'mplayer mms://simul.freebit.net/sunshinefm'
alias sb-miyazaki sb-sunshine
# おおすみ半島FM 24時間  (鹿児島県鹿屋市)
alias sb-osumi 'mplayer -playlist http://bbcube.jp:8000/0033FM.m3u'
# あまみFM       24時間  (鹿児島県奄美市)
alias sb-amami "mplayer -playlist http://www.npo-d.org/simul/AmamiFM.asx"

# FMうるま       24時間  (沖縄県うるま市)
alias sb-uruma "mplayer mmsh://hdv.nkansai.tv/uruma"
# オキラジ       24時間  (沖縄県沖縄市)
alias sb-okiradi "mplayer mmsh://hdv.nkansai.tv/okiradi"
# FMニライ               (沖縄県北谷町) ちゃたんちょう
alias sb-nirai 'mplayer http://wms.shibapon.net/FmNirai'
alias sb-chatan sb-nirai
# FM21           24時間  (沖縄県浦添市)
alias sb-fm21 "mplayer -playlist http://www.simulradio.jp/asx/Fm21inOkinawa.asx"
# FMレキオ       24時間  (沖縄県那覇市)
alias sb-lequio "mplayer -playlist http://www.simulradio.jp/asx/FmLequio.asx"
# FMとよみ               (沖縄県豊見城市)
alias sb-toyomi "mplayer -playlist http://www.simulradio.jp/asx/FmToyomi.asx"
alias sb-tomigusuku sb-toyomi

# 変更のあったときに Twitter (sfish2010) に連絡して頂けると助かります。
# http://junk.s21.xrea.com/scripts/alias-sradio.txt

