/*
 * engine.cpp
 *
 *  Created on: Sep 2, 2013
 *      Author: antidotcb
 */

#include "engine.h"

namespace minimi {

engine::engine() {
	glm::vec4 Position = glm::vec4(glm::vec3(0.0), 1.0);
	glm::mat4 Model = glm::mat4(1.0);
	Model[3] = glm::vec4(1.0, 1.0, 0.0, 1.0);
	glm::vec4 Transformed = Model * Position;
	//return 0;
}

engine::~engine() {
	// TODO Auto-generated destructor stub
}

} /* namespace minimi */
