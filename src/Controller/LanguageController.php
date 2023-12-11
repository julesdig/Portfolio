<?php

// src/Controller/LanguageController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

class LanguageController
{

    #[Route('/change-locale/{locale}', name: 'change-locale')]
    public function changeLanguage(Request $request, $locale): JsonResponse
    {
        $validLocales = ['fr', 'en'];
        if (in_array($locale, $validLocales)) {
            $request->getSession()->set('_locale', $locale);
        }
        return new JsonResponse(['locale' => $request->getSession()->get('_locale')]);
    }
}
