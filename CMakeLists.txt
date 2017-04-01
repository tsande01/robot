cmake_minimum_required(VERSION 3.6)
project(robot)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        exceptions.h
        I2CBus.cpp
        I2CBus.h
        IMU.h
        L3G.cpp
        L3G.h
        LSM303.cpp
        LSM303.h
        main.cpp
        pwm.cpp)

add_executable(robot ${SOURCE_FILES})