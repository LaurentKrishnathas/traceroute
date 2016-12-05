/*
 *
 * @author Laurent Krishnathas
 */
package devops

import org.gradle.api.DefaultTask
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.OutputDirectory
import org.gradle.api.tasks.TaskAction

import groovy.transform.CompileStatic
import groovy.transform.TypeChecked
import groovy.transform.TypeCheckingMode

@CompileStatic
class DownloadTask extends DefaultTask{

    @Input
	String url

	@OutputDirectory
	File destinationDir

	@TaskAction
	def executeTask() {
		assert url!=null && url.trim()!='': "url $url can not be empty"
		assert destinationDir: "destinationDir can not be null "

        project.delete(destinationDir)
        project.mkdir(destinationDir)

        project.logger.lifecycle "downloading $url ..."
        download()
        
	} 
	
	@CompileStatic(TypeCheckingMode.SKIP)
	private void download(){
		project.ant.get(src: url, dest: destinationDir)
	}

}
