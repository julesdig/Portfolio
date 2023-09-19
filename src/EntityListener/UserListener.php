<?php

namespace App\EntityListener;

use App\Entity\User;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserListener
{
    private UserPasswordHasherInterface $hashes;

    public function __construct(UserPasswordHasherInterface $harsher)
    {
        $this->hashes=$harsher;
    }
    public function prePersist(User $user): void
    {
        $this->encodePassword($user);
    }
    public function preUpdate(User $user): void
    {
        $this->encodePassword($user);
    }

    /**
     * Encode password based on plain password
     * @param User $user
     * @return void
     */
    public function encodePassword(User $user): void
    {
        if ($user ->getPlainPassword()=== null) {
            return;
        }
        $user->setPassword(
            $this->hashes->hashPassword(
                $user,
                $user->getPlainPassword()
            )
        );
        $user->setPlainPassword(null);
    }
}
