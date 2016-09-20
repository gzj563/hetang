module.exports = function(grunt){
	
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		uglify:{
			options:{
				banner:'/*! this line is comment information */'
			},
			builda:{// 任务a，压缩文件，不混淆变量名,不删除注释
				options:{
					mangle:false,//不混淆变量名
					preserveComments:'all',//不删除注释， false：删除全部注释 some：保留@preserve @license等注释
					footer:'\n /*! <%= pkg.name%> lasted modified: <%= grunt.template.today("yyyy-mm-dd")%> */'
				},
				files:{
					'output/js/a.min.js':['WebContent/target/js/bootstrap.js']
				}
			},
			buildall:{//按源文件结构压缩js文件夹
				files:[{
					expand:true,
					cwd:'WebContent/target/js/prj',//此目录下文件
					src:['**/*.js','*.js'],
					dest:'output/js'//输出到此目录下
				}]
			},
			release:{
				files:{
					'output/js/release.min.js':['WebContent/target/js/bootstrap.js','WebContent/target/js/prj/testUglify.js']
				}
			}
		}
	});
	//load the uglify plugin
	grunt.loadNpmTasks('grunt-contrib-uglify');
	//register default task
	grunt.registerTask('default',['uglify']);
	
}