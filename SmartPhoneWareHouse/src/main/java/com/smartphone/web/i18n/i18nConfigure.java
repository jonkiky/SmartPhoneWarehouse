package com.smartphone.web.i18n;

/**
 * i18nConfigure 
 * 
 * @author Yizhen Chen
 */
public final class i18nConfigure {
	
	//类加载时就初始化
    private static final i18nConfigure instance = new i18nConfigure();
    
    private i18nConfigure(){
    	EnglishTextString en = new EnglishTextString();
    	this.setLanguage(en);
    }

    public static i18nConfigure getInstance(){
        return instance;
    }
    
	private Language language;

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}
	
	
	}
