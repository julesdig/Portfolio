<?php

namespace App\Controller;


use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Form\ContactFormType;
use Symfony\Component\HttpFoundation\Request;

class DashboardController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function home(Request $request): Response
    {
        $form = $this->createForm(ContactFormType::class);

        $form->handleRequest($request);
        return $this->render('Dashboard/dashboard.html.twig', [
            'controller_name' => 'DashboardController',
            'form' => $form->createView(),
        ]);
    }

    #[Route('/home', name: 'home')]
    public function index(): Response
    {
        return $this->redirectToRoute('index');
    }
}
