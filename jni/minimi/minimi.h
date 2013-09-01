/*
 * gameobjects.h
 *
 *  Created on: Aug 31, 2013
 *      Author: antidotcb
 */

#ifndef GAMEOBJECTS_H_
#define GAMEOBJECTS_H_

#include <vector>
#include <GLES2/gl2.h>

//using namespace std;

namespace minimi {

class CGame;
class CLevel;
class CWorld;
class CIWorldObject;
class CIHealthy;
class CPlayer;
class CCrater;
class CEnemy;
class CRose;
class CBonus;
class CSpawner;

typedef CGame* GamePtr;
typedef CLevel* LevelPtr;
typedef CWorld* WorldPtr;
typedef CIWorldObject* IWorldObjectPtr;
typedef CIHealthy* IHealtyPtr;
typedef CPlayer* PlayerPtr;
typedef CCrater* CraterPtr;
typedef CEnemy* EnemyPtr;
typedef CRose* RosePtr;
typedef CBonus* BonusPtr;
typedef CSpawner* SpawnerPtr;

typedef std::vector<CLevel*> LevelList;
typedef std::vector<CWorld*> WorldList;
typedef std::vector<CIWorldObject*> WorldObjectList;
typedef std::vector<CPlayer*> PlayerList;
typedef std::vector<CCrater*> CraterList;
typedef std::vector<CEnemy*> EnemyList;
typedef std::vector<CRose*> RoseList;
typedef std::vector<CBonus*> BonusList;
typedef std::vector<CSpawner*> SpawnerList;

typedef unsigned long GameTime;

struct vector3df {
	GLfloat x, y, z;
};

class CGame {
private:
	CGame() {
	}

	GamePtr game_;
	LevelList levels_;
	GameTime time_;

public:
	enum Difficulty {
		Easy, Normal, Hard
	};

	static CGame & get();

	void startGame();
	void resume();
	void pause();
	void endGame();

	void update(GameTime time);
};

class CLevel {
private:
	GameTime time_;
	SpawnerList spawners_;
	WorldPtr world_;
public:
};

class CWorld {
private:

};

class CIWorldObject {
protected:
	vector3df pos;
};

class CIHealthy {
protected:
	GLint health;
};

class CPlayer: public CIWorldObject, public CIHealthy {

};

class CCrater: public CIWorldObject {

};

class CEnemy: public CIWorldObject, public CIHealthy {

};

class CBonus: public CIWorldObject {

};

class CRose: public CIWorldObject, public CIHealthy {

};

}

#endif /* GAMEOBJECTS_H_ */
