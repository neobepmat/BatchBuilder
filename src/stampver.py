import os, shlex, subprocess, re, datetime


class StampVer:
	def __init__(self):
		self.stampVerPath = '.\\StampVer.EXE'
		
	def execute(self, fileName, newVersion, stampVerPath=None):
		try:	
			doStampverApplicationExists()
		
			if stampVerPath!=None:
				self.stampVerPath = stampVerPath

			if not os.path.isfile(self.stampVerPath):
				raise Exception(self.stampVerPath + ' not found.')

			if not os.path.isfile(fileName):
				raise Exception(fileName + ' not found.')
			
			arg1 = '-f' + newVersion
			p = subprocess.call([self.stampVerPath, arg1, fileName])
			if p==1: 
				return False	# exit early

		except MyException as e:
			QMessageBox.about(self, "StampVer execute - Exception", str(e))

		return True
	
	def doStampverApplicationExists(self, filePath):
		if not os.path.exists(filePath):
			raise Exception("Stamping application not found")
		return true
		
	def run(self, proj=None, test=None, nuspec=None):
		summary = '';
		
		# File header	
		start = datetime.datetime.now()
		print( '\n'*5)
		summary += self.log('STARTED BUILD - ' + start.strftime("%Y-%m-%d %H:%M:%S"))

		# Build the project
		if proj is not None:
			buildOk = self.build(proj)
			if not buildOk:
				self.log('BUILD: FAILED', start)
				sys.exit(100)
			summary += self.log('BUILD: SUCCEEDED', start)
		else:
			summary += self.log('BUILD: NOT SPECIFIED')
			
		# Build footer
		stop = datetime.datetime.now()
		diff = stop - start
		summary += self.log('FINISHED BUILD', start)
		
		# Build summary
		print( '\n\n' + '-'*80)
		print( summary)
		print( '-'*80)
		
	def log(self, message, start=None):
		timestamp = ''
		numsecs = ''
		if start is not None:
			split = datetime.datetime.now()
			diff = split - start
			timestamp = split.strftime("%Y-%m-%d %H:%M:%S") + '\t'
			numsecs = ' (' + str(diff.seconds) + ' seconds)'
		msg = timestamp + message + numsecs + '\n\n'
		print( '='*10 + '> ' + msg)
		return msg
