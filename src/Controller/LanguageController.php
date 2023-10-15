<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\BrowserKit\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class LanguageController extends AbstractController
{

    #[Route('/api/language', name: 'api_language')]
    public function index(Request $request)
    {
        $language = $request->getLanguages();
        dd($language);
        return new JsonResponse([
            'locale' => $language,
        ]);
    }
}
