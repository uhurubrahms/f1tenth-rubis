# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "drive_straight: 3 messages, 0 services")

set(MSG_I_FLAGS "-Idrive_straight:/home/tigerlily/rubis/src/drive_straight/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Idrive_straight:/home/tigerlily/rubis/src/drive_straight/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(drive_straight_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg" NAME_WE)
add_custom_target(_drive_straight_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drive_straight" "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg" ""
)

get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg" NAME_WE)
add_custom_target(_drive_straight_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drive_straight" "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg" ""
)

get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg" NAME_WE)
add_custom_target(_drive_straight_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drive_straight" "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drive_straight
)
_generate_msg_cpp(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drive_straight
)
_generate_msg_cpp(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drive_straight
)

### Generating Services

### Generating Module File
_generate_module_cpp(drive_straight
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drive_straight
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(drive_straight_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(drive_straight_generate_messages drive_straight_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_cpp _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_cpp _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_cpp _drive_straight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drive_straight_gencpp)
add_dependencies(drive_straight_gencpp drive_straight_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drive_straight_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drive_straight
)
_generate_msg_eus(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drive_straight
)
_generate_msg_eus(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drive_straight
)

### Generating Services

### Generating Module File
_generate_module_eus(drive_straight
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drive_straight
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(drive_straight_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(drive_straight_generate_messages drive_straight_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_eus _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_eus _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_eus _drive_straight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drive_straight_geneus)
add_dependencies(drive_straight_geneus drive_straight_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drive_straight_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drive_straight
)
_generate_msg_lisp(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drive_straight
)
_generate_msg_lisp(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drive_straight
)

### Generating Services

### Generating Module File
_generate_module_lisp(drive_straight
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drive_straight
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(drive_straight_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(drive_straight_generate_messages drive_straight_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_lisp _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_lisp _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_lisp _drive_straight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drive_straight_genlisp)
add_dependencies(drive_straight_genlisp drive_straight_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drive_straight_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drive_straight
)
_generate_msg_nodejs(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drive_straight
)
_generate_msg_nodejs(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drive_straight
)

### Generating Services

### Generating Module File
_generate_module_nodejs(drive_straight
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drive_straight
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(drive_straight_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(drive_straight_generate_messages drive_straight_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_nodejs _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_nodejs _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_nodejs _drive_straight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drive_straight_gennodejs)
add_dependencies(drive_straight_gennodejs drive_straight_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drive_straight_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drive_straight
)
_generate_msg_py(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drive_straight
)
_generate_msg_py(drive_straight
  "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drive_straight
)

### Generating Services

### Generating Module File
_generate_module_py(drive_straight
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drive_straight
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(drive_straight_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(drive_straight_generate_messages drive_straight_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_values.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_py _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/drive_param.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_py _drive_straight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tigerlily/rubis/src/drive_straight/msg/pid_input.msg" NAME_WE)
add_dependencies(drive_straight_generate_messages_py _drive_straight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drive_straight_genpy)
add_dependencies(drive_straight_genpy drive_straight_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drive_straight_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drive_straight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drive_straight
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(drive_straight_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET drive_straight_generate_messages_cpp)
  add_dependencies(drive_straight_generate_messages_cpp drive_straight_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drive_straight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drive_straight
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(drive_straight_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET drive_straight_generate_messages_eus)
  add_dependencies(drive_straight_generate_messages_eus drive_straight_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drive_straight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drive_straight
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(drive_straight_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET drive_straight_generate_messages_lisp)
  add_dependencies(drive_straight_generate_messages_lisp drive_straight_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drive_straight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drive_straight
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(drive_straight_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET drive_straight_generate_messages_nodejs)
  add_dependencies(drive_straight_generate_messages_nodejs drive_straight_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drive_straight)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drive_straight\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drive_straight
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(drive_straight_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET drive_straight_generate_messages_py)
  add_dependencies(drive_straight_generate_messages_py drive_straight_generate_messages_py)
endif()
