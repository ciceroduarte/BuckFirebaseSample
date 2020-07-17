BUCK=tools/buck

install_buck:
	mkdir -p tools
	curl https://jitpack.io/com/github/airbnb/buck/4bd1a08625454c5034eb6ef6193e94f9e6e62a62/buck-4bd1a08625454c5034eb6ef6193e94f9e6e62a62.pex --output tools/buck
	chmod u+x tools/buck

clean:
	rm -rf **/*.xcworkspace
	rm -rf **/*.xcodeproj
	rm -rf buck-out
	rm -rf Carthage
	rm -rf Cartfile.resolved

setup: clean
	carthage update
	mkdir -p App/Frameworks
	cp -rf Carthage/Build/iOS/* App/Frameworks

project:
	$(BUCK) project app
	open App/BuckFirebaseSampleApp.xcworkspace

build:
	$(BUCK) build app

run:
	$(BUCK) install app --run --simulator-name 'iPhone 8'