package kr.or.anyapart.commonsweb.view;

import java.io.File;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.view.AbstractView;

import kr.or.anyapart.commons.enumpkg.Browser;
import kr.or.anyapart.servicecompany.vo.ServiceAttachVO;

public class SvDownloadView extends AbstractView{

	@Value("#{appInfo.contratFiles}")
	private File saveFolder;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse resp) throws Exception {
		
		ServiceAttachVO attatch =  (ServiceAttachVO) model.get("attatchs");
		System.out.println(attatch);
		String browser = request.getHeader("User-Agent");
		String savename = attatch.getSvcFile();
		String filename = attatch.getSvcFilename();
		if(Browser.TRIDENT.equals(browser)) {
			filename = URLEncoder.encode(filename, "UTF-8").replace("+", "%20");
		}else {
			byte[] bytes = filename.getBytes();
			filename = new String(bytes, "ISO-8859-1");
			System.out.println("===============>"+filename);
		}
		resp.setHeader("Content-Disposition", "attatchment;filename=\""+filename+"\"");
		File saveFile = new File(saveFolder, savename);
		resp.setContentType("application/octet-stream");
		try(
			OutputStream os = resp.getOutputStream();	
		){
			FileUtils.copyFile(saveFile, os);
		}		
	}

}




