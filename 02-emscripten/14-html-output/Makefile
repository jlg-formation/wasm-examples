# Sortie HTML vs JS
# Question QCM: em_q20

NODE := $(shell which node)

EXPORTS := -sEXPORTED_FUNCTIONS=_multiply,_main
RUNTIME := -sEXPORTED_RUNTIME_METHODS=ccall,cwrap

# Sortie .js uniquement (pour intégration personnalisée)
build-js:
	@mkdir -p dist
	emcc app.c -O2 -o dist/app.js $(EXPORTS) $(RUNTIME)
	@echo "✓ Sortie JS: dist/app.js + dist/app.wasm"
	@ls -lh dist/app.*

# Sortie .html (page de test standalone)
build-html:
	@mkdir -p dist
	emcc app.c -O2 -o dist/app.html $(EXPORTS) $(RUNTIME)
	@echo "✓ Sortie HTML: dist/app.html + dist/app.js + dist/app.wasm"
	@ls -lh dist/app.*

# Compiler les deux versions
build: build-js build-html
	@echo "\n📊 Comparaison des sorties:"
	@echo "   JS:   app.js + app.wasm (intégration custom)"
	@echo "   HTML: app.html + app.js + app.wasm (page de test)"

# Lancer un serveur pour tester la version HTML
serve:
	@echo "Ouverture de http://localhost:3000/dist/app.html"
	npx serve -p 3000

run:
	$(NODE) wrapper.mjs

clean:
	rm -rf dist

.PHONY: build build-js build-html serve run clean
