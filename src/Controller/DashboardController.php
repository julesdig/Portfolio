<?php

namespace App\Controller;


use App\Repository\UserRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractController
{
    #[Route('/home', name: 'home')]
    public function home(UserRepository $userRepository): Response
    {

        return $this->render('Dashboard/dashboard.html.twig', [
            'controller_name' => 'DashboardController',
            'users' => $userRepository->findAll(),
        ]);
    }

    #[Route('/', name: 'index')]
    public function index(): Response
    {
        return $this->redirectToRoute('home');
    }
}