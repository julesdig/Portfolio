<?php

// src/Controller/LanguageController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

class LanguageController
{

    #[Route('/change-language/{loacle}', name: 'change_language')]
    public function changeLanguage(Request $request, $locale): JsonResponse
    {

        $request->getSession()->set('_locale', $locale);
        return new JsonResponse([
            'locale' => $request->getSession()->get('_locale')
        ]);
        // putenv('APP_LOCALE=' . $locale);
        /*$referer = $request->headers->get('referer');
        dump($request->getSession()->get('_locale'));
        return new RedirectResponse($referer);*/
    }
}
