<?php
    
    define('FPDF_FONTPATH','font/');
    require ('fpdf/fpdf.php');
    require 'connect.php';
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
        $this->SetY(-15);
        $this->SetFont('Arial','B',14);
        $this->Cell(0,10,'679 47 34 14 - 687 51 95 90',0,0,'C');
        }
    }
    //recuperation des donnes de l'etudiant
    
    $id=$_GET['id'];
    $sql="SELECT * FROM student WHERE idstud= ?";
    $stmt=$conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result=$stmt->get_result();
    $student=$result->fetch_assoc();
    //creation du pdf avec des dimensions de cartes scolaires(150mm*85mm)
    $pdf=new Carteetudiant('L','mm',array(150,85));//paysage,multimetres,dimension de la carte
    $pdf->AddPage();
    //ajouter l'image de fond
    $pdf->Image('images/lo.png',0,0,150,85);//positionner l'image de fond sur toute la carte
    //ajouter un titre
    // $pdf->SetFont('Arial','B', 16);
   
    // $pdf->Image('images/IMG2.jpg',10,5,14);
    // $pdf->SetFont('Arial','B',14);
    // $pdf->SetTextColor(255,165,0);//couleur orange
    // $pdf->SetXY(50,5);//deplace le texte vers la droite
    // $pdf->Cell(100,5,'sigeris Hight school',0,1);
    // $pdf->SetTextColor(0,0,0);//reinitialise la couleur du texte en noir
    // $pdf->Cell(0,15,'Carte scolaire',0,1,'C');
    
    
    //Ajouter des informations de l'etudiant
    $pdf->SetFont('Arial','B',12);
    $pdf->SetXY(10,30);//positionner les informations à gauche
    $pdf->Cell(50,8,'Nom        '  .$student['firstname'],0,1);
    $pdf->Cell(50,8,'Prenom     '  .$student['lastname'],0,1);
    $pdf->Cell(50,8,'date_naissance   '  .$student['birth'],0,1);
    
    //ajout de la photo de l'etudiant
    //if( file_exists('../images/'.$student['image'])){
    $pdf->Image('../images/'.$student['image'],120,20,24);//positionner l'image a droite 
    // }else{

    //     $pdf->Cell(0,10,'Aucune photo disponible.',0,1);
    // }
    //Affichage du pdf
    $pdf->Output();
   // $pdf->Output('D','information_etudiant'.$id.'.pdf');
?>