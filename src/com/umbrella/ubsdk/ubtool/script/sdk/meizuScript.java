package com.umbrella.ubsdk.ubtool.script.sdk;

import java.io.File;
import java.io.IOException;

import com.umbrella.ubsdk.ubtool.bean.Channel;
import com.umbrella.ubsdk.ubtool.bean.Game;
import com.umbrella.ubsdk.ubtool.script.BaseScript;
import com.umbrella.ubsdk.ubtool.utils.FileUtil;

/**
 * 魅族渠道自定义插件
 * @author qingshanliao
 */
public class meizuScript extends BaseScript{
	private static final String TAG=meizuScript.class.getSimpleName();
	/**
	 * 魅族渠道要将game/sdk/meizu/payConfig.xml中的计费点配置文件copy到打包过程中的Temp/assets/目录下
	 */
	@Override
	public void execute(Game game, Channel channel) throws IOException {
		System.out.println(TAG+"----->execute");
		String sourcePath=GAMES_PATH+File.separator+game.getName()+File.separator+"sdk"+File.separator+"meizu"+File.separator+"payConfig.xml";
		String targetPath=TEMP_PATH+File.separator+"assets"+File.separator+"payConfig.xml";
		File sourceFile = new File(sourcePath);
		if (!sourceFile.exists()) {
			String parent = sourceFile.getParent();
			new File(parent).mkdirs();
			sourceFile.createNewFile();
		}
		File targetFile = new File(targetPath);
		if (!targetFile.exists()) {
			String parent = targetFile.getParent();
			new File(parent).mkdirs();
			targetFile.createNewFile();
		}
		FileUtil.copyFile(sourceFile, targetFile);
	}
}
