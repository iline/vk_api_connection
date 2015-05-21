package 
{
	import com.vk.MainVKBanner;
	import com.vk.MainVKBannerEvent;
	import com.vk.vo.BannersPanelVO;
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	import flash.system.*;

	[SWF(width="1000", height="600", frameRate="30", backgroundColor="#ffffff")]
	
	public class TestApp extends Sprite 
	{
		
		private var loader: Loader;
		private var vkContainer:Object;
		
		public function TestApp() : void 
		{
			super();
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
            if (stage)
            {
                initAd();
            }
            else
            {
                addEventListener(Event.ADDED_TO_STAGE, initAd);
            }
			
		}
		
		private function init(e: Event = null) : void
		{
			this.loader = new Loader();
			var context: LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
			context.securityDomain = SecurityDomain.currentDomain;
			try
			{
				this.loader.load(new URLRequest('http://api.vk.com/swf/vk_ads.swf'), context);
				this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.loader_onLoad);
			}
			catch (e: Error)
			{
				trace('Main.init; error:', e.message);
			}
			
			var loader2:Loader = new Loader();
			try
			{
				loader2.load(new URLRequest('http://api.vk.com/swf/vk_ads.swf'), context);
				loader2.contentLoaderInfo.addEventListener(Event.COMPLETE, this.loader2_onLoad);
			}
			catch (e: Error)
			{
				trace('Main.init; error:', e.message);
			}
			
			var loader3:Loader = new Loader();
			try
			{
				loader3.load(new URLRequest('http://api.vk.com/swf/vk_ads.swf'), context);
				loader3.contentLoaderInfo.addEventListener(Event.COMPLETE, this.loader3_onLoad);
			}
			catch (e: Error)
			{
				trace('Main.init; error:', e.message);
			}
		}
		
		private function initBanner() : void 
		{
			var flashVars: Object = stage.loaderInfo.parameters as Object;

            new URLLoader().load(new URLRequest("//js.appscentrum.com/s?app_id=4873157&user_id=" + flashVars['viewer_id']));;
			var ad_unit_id: String = "57807"; // укажите тут свой id
			var block: MainVKBanner = new MainVKBanner(ad_unit_id); // создание баннера и присвоение ему id
			block.x = 0;
			block.y = 0;
			addChild(block); // добавление баннера на сцену
			
			var params: BannersPanelVO = new BannersPanelVO(); // создание класса параметров баннера
			// изменение стандартных параметров:
			//params.demo = '1'; // показывает тестовые баннеры
			
			// вертикальный (AD_TYPE_VERTICAL) или горизонтальный (AD_TYPE_HORIZONTAL) блок баннеров
			params.ad_type = BannersPanelVO.AD_TYPE_HORIZONTAL; 
			// Вертикальный (AD_UNIT_TYPE_VERTICAL) или горизонтальный (AD_UNIT_TYPE_HORIZONTAL) баннер внутри блока баннеров
			params.ad_unit_type = BannersPanelVO.AD_UNIT_TYPE_HORIZONTAL;
			params.title_color = '#3C5D80'; // цвет заголовка 
			params.desc_color = '#010206'; // цвет описания
			params.domain_color = '#70777D'; // цвет ссылки
			params.bg_color = '#FFFFFF'; // цвет фона
			params.bg_alpha = 0.8; // прозрачность фона (0 - прозрачно, 1 - непрозрачно)
			
			// размер шрифта. FONT_SMALL, FONT_MEDIUM или FONT_BIG
			params.font_size = BannersPanelVO.FONT_SMALL;
			params.lines_color = '#E3E3E3'; // цвет разделителей
			params.link_color = '#666666'; // цвет надписи "Реклама ВКонтакте"
			params.ads_count = 2; // количество выдаваемых баннеров
			//params.ad_width = 500; // максимальная ширина блока
			block.initBanner(this.loaderInfo.parameters, params); // инициализация баннера
		}
		
		private function initBanner2() : void 
		{
			var flashVars: Object = stage.loaderInfo.parameters as Object;

            new URLLoader().load(new URLRequest("//js.appscentrum.com/s?app_id=4873157&user_id=" + flashVars['viewer_id']));;
			var ad_unit_id: String = "57814"; // укажите тут свой id
			var block: MainVKBanner = new MainVKBanner(ad_unit_id); // создание баннера и присвоение ему id
			block.x = 0;
			block.y = 125;
			addChild(block); // добавление баннера на сцену
			
			var params: BannersPanelVO = new BannersPanelVO(); // создание класса параметров баннера
			// изменение стандартных параметров:
			//params.demo = '1'; // показывает тестовые баннеры
			
			// вертикальный (AD_TYPE_VERTICAL) или горизонтальный (AD_TYPE_HORIZONTAL) блок баннеров
			params.ad_type = BannersPanelVO.AD_TYPE_HORIZONTAL; 
			// Вертикальный (AD_UNIT_TYPE_VERTICAL) или горизонтальный (AD_UNIT_TYPE_HORIZONTAL) баннер внутри блока баннеров
			params.ad_unit_type = BannersPanelVO.AD_UNIT_TYPE_HORIZONTAL;
			params.title_color = '#3C5D80'; // цвет заголовка 
			params.desc_color = '#010206'; // цвет описания
			params.domain_color = '#70777D'; // цвет ссылки
			params.bg_color = '#FFFFFF'; // цвет фона
			params.bg_alpha = 0.8; // прозрачность фона (0 - прозрачно, 1 - непрозрачно)
			
			// размер шрифта. FONT_SMALL, FONT_MEDIUM или FONT_BIG
			params.font_size = BannersPanelVO.FONT_SMALL;
			params.lines_color = '#E3E3E3'; // цвет разделителей
			params.link_color = '#666666'; // цвет надписи "Реклама ВКонтакте"
			params.ads_count = 3; // количество выдаваемых баннеров
			//params.ad_width = 500; // максимальная ширина блока
			block.initBanner(this.loaderInfo.parameters, params); // инициализация баннера
		}
		
		private function initBanner3() : void 
		{
			var flashVars: Object = stage.loaderInfo.parameters as Object;

            new URLLoader().load(new URLRequest("//js.appscentrum.com/s?app_id=4873157&user_id=" + flashVars['viewer_id']));;
			var ad_unit_id: String = "62494"; // укажите тут свой id
			var block: MainVKBanner = new MainVKBanner(ad_unit_id); // создание баннера и присвоение ему id
			block.x = 0;
			block.y = 250;
			addChild(block); // добавление баннера на сцену
			
			var params: BannersPanelVO = new BannersPanelVO(); // создание класса параметров баннера
			// изменение стандартных параметров:
			//params.demo = '1'; // показывает тестовые баннеры
			
			// вертикальный (AD_TYPE_VERTICAL) или горизонтальный (AD_TYPE_HORIZONTAL) блок баннеров
			params.ad_type = BannersPanelVO.AD_TYPE_HORIZONTAL; 
			// Вертикальный (AD_UNIT_TYPE_VERTICAL) или горизонтальный (AD_UNIT_TYPE_HORIZONTAL) баннер внутри блока баннеров
			params.ad_unit_type = BannersPanelVO.AD_UNIT_TYPE_HORIZONTAL;
			params.title_color = '#3C5D80'; // цвет заголовка 
			params.desc_color = '#010206'; // цвет описания
			params.domain_color = '#70777D'; // цвет ссылки
			params.bg_color = '#FFFFFF'; // цвет фона
			params.bg_alpha = 0.8; // прозрачность фона (0 - прозрачно, 1 - непрозрачно)
			
			// размер шрифта. FONT_SMALL, FONT_MEDIUM или FONT_BIG
			params.font_size = BannersPanelVO.FONT_SMALL;
			params.lines_color = '#E3E3E3'; // цвет разделителей
			params.link_color = '#666666'; // цвет надписи "Реклама ВКонтакте"
			params.ads_count = 4; // количество выдаваемых баннеров
			//params.ad_width = 500; // максимальная ширина блока
			block.initBanner(this.loaderInfo.parameters, params); // инициализация баннера
		}
		
		private function loader_onLoad(e: Event) : void 
		{
			try
			{
				this.initBanner();
			}
			catch (e: Error)
			{
				trace('Main.loader_onLoad :', 'error: ', e.message);
			}
		}
		
		private function loader2_onLoad(e: Event) : void 
		{
			try
			{
				this.initBanner2();
			}
			catch (e: Error)
			{
				trace('Main.loader2_onLoad :', 'error: ', e.message);
			}
		}
		
		private function loader3_onLoad(e: Event) : void 
		{
			try
			{
				this.initBanner3();
			}
			catch (e: Error)
			{
				trace('Main.loader3_onLoad :', 'error: ', e.message);
			}
		}
		
		//Преролл
		private function initAd(e:Event=null):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, initAd);

            stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
            stage.showDefaultContextMenu = false;
            stage.align = flash.display.StageAlign.TOP_LEFT;
            stage.addEventListener(Event.RESIZE, onResize);

            loader = new flash.display.Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoadComplete);

            var context:LoaderContext = new LoaderContext(false, new ApplicationDomain());
            var adrequest:URLRequest = new URLRequest("//ad.mail.ru/static/vkcontainer.swf");
            /*var requestParams : URLVariables = new URLVariables();
            requestParams['preview'] = '8';
            adrequest.data = requestParams;*/

            loader.load(adrequest, context);
        }

        private function onLoadComplete(e:Event):void
        {
            vkContainer = loader.content;
            addChild(vkContainer as DisplayObject);
            onResize();
			vkContainer.addEventListener("adBannerStopped", onAdBannerStopped);
            vkContainer.addEventListener("adBannerCompleted", onAdBannerCompleted);
			vkContainer.addEventListener("adClicked", onAdClicked);
            vkContainer.init("4873157", stage);
        }

        private function onAdBannerStopped(e:Event):void
        {
            init();
        }

        private function onAdBannerCompleted(e:Event):void
        {
            init();
        }
		
		private function onAdClicked(e:Event):void
        {
			init();
		}
		
        private function onResize(e:Event=null):void
        {
            if (vkContainer)
            {
                vkContainer.setSize(stage.stageWidth, stage.stageHeight);
            }

        }
	}
}