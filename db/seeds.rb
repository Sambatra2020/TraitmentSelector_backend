# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#




#remplir le categorie
Category.create(labelle_categorie: 'Diagnostics')
Category.create(labelle_categorie: 'Examinations')

#remplir le treatment
 Treatment.create( title: 'angiocardiography', traduction_french: "", traduction_malagasy: "", category_id: 1)
 Treatment.create( title: 'angiography', traduction_french: "", traduction_malagasy: "", category_id: 1)
 Treatment.create( title: 'brain scanning', traduction_french: "", traduction_malagasy: "", category_id: 1)
 Treatment.create( title: 'cholecystography', traduction_french: "", traduction_malagasy: "", category_id: 1)
 Treatment.create( title: 'echocardiography', traduction_french: "", traduction_malagasy: "", category_id: 1)

 Treatment.create( title: 'auscultation', traduction_french: "", traduction_malagasy: "", category_id: 2)
 Treatment.create( title: 'autopsy', traduction_french: "", traduction_malagasy: "", category_id: 2)
 Treatment.create( title: 'biopsy', traduction_french: "", traduction_malagasy: "", category_id: 2)
 Treatment.create( title: 'bronchoscopy', traduction_french: "", traduction_malagasy: "", category_id: 2)
 Treatment.create( title: 'cardiac catheterization', traduction_french: "", traduction_malagasy: "", category_id: 2)

# Ajout Admin
 Admin.create(adminname: "admin", password: "admin")

# Ajout Patient
 Patient.create(name: "patient 0")

# Ajout ListTreatment
 ListTreatment.create(patient_id: 1, treatment_id:1)



