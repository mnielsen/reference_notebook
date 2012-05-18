(require 'org-publish)
(setq org-export-default-language "en")

(setq org-publish-project-alist
      '(
	("reference_notebook_html"
	 :base-directory "~/code/reference_notebook/org/"
	 :base-extension "org"
	 :publishing-directory "~/code/reference_notebook/html/"
	 :recursive t
	 :publishing-function org-publish-org-to-html
	 :headline-levels 4
	 :auto-preamble t
	 :table-of-contents nil
	 :section-numbers nil
	 :style "<link rel=\"stylesheet\" title=\"Standard\" href=\"/css/main.css\" type=\"text/css\" />"
	 )
	("reference_notebook_static"
	 :base-directory "~/code/reference_notebook/org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf"
	 :publishing-directory "~/code/reference_notebook/html/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	("reference_notebook" 
	 :components ("reference_notebook_html" "reference_notebook_static"))
      ))
