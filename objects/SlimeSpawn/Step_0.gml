if slimeKilled == slimePerWave && nextWave == false {
	nextWave = true;
	wave += 1;
	slimeCount = 0;
	slimeKilled = 0;
	slimePerWave += 2;
	slimeHp += 1;
	slimeDamage += 1;
	}