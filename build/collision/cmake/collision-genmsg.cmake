# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "collision: 0 messages, 0 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ikobuki_msgs:/home/student/tp_turtle_Grellier_Leconte_Mallecourt_ws/src/kobuki_msgs/msg;-Ikobuki_msgs:/home/student/tp_turtle_Grellier_Leconte_Mallecourt_ws/devel/share/kobuki_msgs/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(collision_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(collision
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collision
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(collision_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(collision_generate_messages collision_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(collision_gencpp)
add_dependencies(collision_gencpp collision_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(collision
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collision
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(collision_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(collision_generate_messages collision_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(collision_geneus)
add_dependencies(collision_geneus collision_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(collision
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collision
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(collision_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(collision_generate_messages collision_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(collision_genlisp)
add_dependencies(collision_genlisp collision_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(collision
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collision
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(collision_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(collision_generate_messages collision_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(collision_gennodejs)
add_dependencies(collision_gennodejs collision_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(collision
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(collision_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(collision_generate_messages collision_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(collision_genpy)
add_dependencies(collision_genpy collision_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collision
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(collision_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET kobuki_msgs_generate_messages_cpp)
  add_dependencies(collision_generate_messages_cpp kobuki_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collision
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(collision_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET kobuki_msgs_generate_messages_eus)
  add_dependencies(collision_generate_messages_eus kobuki_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collision
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(collision_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET kobuki_msgs_generate_messages_lisp)
  add_dependencies(collision_generate_messages_lisp kobuki_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collision
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(collision_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET kobuki_msgs_generate_messages_nodejs)
  add_dependencies(collision_generate_messages_nodejs kobuki_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(collision_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET kobuki_msgs_generate_messages_py)
  add_dependencies(collision_generate_messages_py kobuki_msgs_generate_messages_py)
endif()
