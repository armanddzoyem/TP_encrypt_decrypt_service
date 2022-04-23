from crypto.Publickey import RSA

#creation d'un couple de cles

key = RSA.generate(1024)


# afficher les cles
k = key.exportkey('PEM')
p = key.publickey().exportkey('PEM')


#sauvegarder ses cles dans des fichiers
with open('.private.pem','w') as  kf:
	kf.write(k.decode())
	kf.close()

with open('.public.pem','w') as pf:
	pf.write(p.decode())
	pf.close()
