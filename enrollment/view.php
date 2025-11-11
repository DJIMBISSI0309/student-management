<?php
    
    define('FPDF_FONTPATH','font/');
    require ('fpdf/fpdf.php');
    //chemin pour enregistrer le qrcode
    require ('phpqrcode/qrlib.php');
    //require ('phpqrcode/phpqrcode.php');

    require 'connect.php';


    $qrcodepath='phpqrcode/cache/frame_40.png';
    //donnees encoder dans le qrcode
    $data='https://www.monsite.com';
    //generation du qrcode
    QRcode::png($data,$qrcodepath,QR_ECLEVEL_L,4);
    //recuperation des donnes de l'etudiant
    
    $id=$_GET['id'];
    $sql="SELECT * FROM enrollment,student,level1,specialty,department WHERE specialty.idspe= enrollment.idspe
    AND student.idstud=enrollment.idstud AND level1.idlev=enrollment.idlev AND
    specialty.iddepart=department.iddepart
      AND enrollment.idenrol= ? ";
     
    $stmt=$conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result=$stmt->get_result();
    $student=$result->fetch_assoc();



    
    class Carteetudiant extends FPDF{
        function Header(){
      
            $this->Image('images/IMG2.jpg',10,5,14);
            $this->SetFont('Arial','B',14);
            $this->SetTextColor(255,165,0);//couleur orange
            $this->SetXY(50,5);//deplace le texte vers la droite
            $this->Cell(100,5,'sigeris Hight school',0,1);
            $this->SetTextColor(0,0,0);//reinitialise la couleur du texte en noir
            $this->Cell(0,15,'Carte scolaire',0,1,'C');
            $this->Ln(10);
        }
        function Footer(){
        $this->SetY(-20);
        $this->SetFont('Arial','B',12);
        //$this->Cell(0,10,'ANNEE ACADEMIQUE:   '  .$student['academic_year'],0,1);
     
        $this->Image('images/sphere.png',5,71,5);
        $this->Cell(25,8,'www.iues-univ.com',0,1);
        $this->Image('images/phone.png',5,80,5);
        $this->Cell(25,8,'679 47 34 14 - 687 51 95 90',0,1);
    
       
        }
     
     
    }
    //creation du pdf avec des dimensions de cartes scolaires(150mm*85mm)
    $pdf=new Carteetudiant('L','mm',array(150,90));//paysage,mullimetres,dimension de la carte
    $pdf->AddPage();
    //ajouter l'image de fond
    $pdf->Image('images/lo.png',0,0,150,85);//positionner l'image de fond sur toute la carte
    //ajouter un titre
   
    //Ajouter des informations de l'etudiant
    $pdf->SetFont('Arial','B',12);
    $pdf->SetXY(10,30);//positionner les informations à gauche
    $pdf->Cell(50,8,'Nom:        '  .$student['firstname'],0,1);
    $pdf->Cell(50,8,mb_convert_encoding('Prénom:     '  .$student['lastname'],'ISO-8859-1','UTF-8'),0,1);
    //$pdf->Cell(50,8,'date_naissance   '  .$student['birth'],0,1);
    $pdf->Cell(50,8,mb_convert_encoding('departement:   '  .$student['namedepart'],'ISO-8859-1','UTF-8'),0,1);
    $pdf->Cell(50,8,mb_convert_encoding('specialité:   '  .$student['namespe'],'ISO-8859-1','UTF-8'),0,1);
  
    //ajout de la photo de l'etudiant
    
    $pdf->Image('../images/'.$student['image'],100,20,24);//positionner l'image a droite

    $pdf->SetFont('Arial','B',12);
    //positionner les informations a droite 
    $pdf->SetXY(90,45); 
    $pdf->Cell(45,10, $student['desclev'],0,1,'C');
    $pdf->SetXY(90,55); 
    $pdf->Cell(50,8,$student['academic_year'],0,1,'C');
  

  
    $pdf->Image($qrcodepath,105,65,20);//position 10 10 avec une largeur de 50 unites
    //Affichage du pdf
    $pdf->Output();
   // $pdf->Output('D','information_etudiant'.$id.'.pdf');
?>