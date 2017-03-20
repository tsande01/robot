#ifndef _IMU_H
#define _IMU_H



class IMU {
public:
    // Scaled readings
    int MagVal [3];
    int AccVal [3];
    int GyroVal [3];
    
    virtual void readMag(int MagVal[]) = 0;  // In body coords, scaled to -1..1 range
    virtual void readAcc(int AccVal[]) = 0;  // In body coords, with units = g
    virtual void readGyro(int GyroVal[]) = 0; // In body coords, with units = rad/sec
    //void read(){ readAcc(AccVal[]); readMag(MagVal[]); readGyro(GyroVal[]); }

    virtual void measureOffsets() = 0;
    virtual void enable() = 0;

    int gyro_offset[3];
    int mag_min, mag_max;

    
};

#endif
