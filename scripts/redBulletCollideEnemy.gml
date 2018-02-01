///redBulletCollideEnemy()

score++;
audio_play_sound(snd_enemyExplode, 1, false);
instance_destroy(other);
instance_destroy();
