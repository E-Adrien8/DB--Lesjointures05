/*Premiere requète Retourne les noms, prénoms, rôle et équipe de tous les joueurs, classés dans l’ordre alphabétique par équipe, puis par rôle dans l’équipe,
puis par nom de famille, puis par prénom*/

SELECT w.lastname, w.firstname, p.role, t.name as team_name 
FROM wizard as w 
LEFT JOIN player AS p 
  ON w.id=p.wizard_id 
LEFT JOIN team AS t 
  ON t.id=p.team_id 
ORDER BY t.name, p.role, w.lastname, w.firstname;

/*Seconde requète Retourne uniquement les prénoms et noms des joueurs ayant le rôle de seeker (attrapeur), classés par ordre alphabétique de nom puis prénom*/

SELECT w.firstname, w.lastname
FROM wizard as w 
LEFT JOIN player AS p 
  ON w.id=p.wizard_id
/* where for filter */ 
WHERE p.role = 'seeker' 
ORDER BY w.lastname, w.firstname;


/*Troisième quete Retourne la liste de tous les sorciers qui ne pratiquent pas le quidditch.*/

SELECT w.* 
FROM wizard as w 
LEFT JOIN player AS p 
  ON w.id=p.wizard_id 
WHERE role is NULL;
