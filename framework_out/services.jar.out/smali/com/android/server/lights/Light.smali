.class public abstract Lcom/android/server/lights/Light;
.super Ljava/lang/Object;
.source "Light.java"


# static fields
.field public static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field public static final BRIGHTNESS_MODE_USER:I = 0x0

.field public static final LIGHT_FLASH_HARDWARE:I = 0x2

.field public static final LIGHT_FLASH_NONE:I = 0x0

.field public static final LIGHT_FLASH_TIMED:I = 0x1

.field public static final LIGHT_TURNOFF_DOUBLE_FLICK:I = 0x4000

.field public static final LIGHT_TURNOFF_FLASH:I = 0x10000

.field public static final LIGHT_TURNOFF_FLICK:I = 0x1000

.field public static final LIGHT_TURNOFF_STABLE:I = 0x400

.field public static final LIGHT_TURNON_DOUBLE_FLICK:I = 0x2000

.field public static final LIGHT_TURNON_FLASH:I = 0x8000

.field public static final LIGHT_TURNON_FLICK:I = 0x800

.field public static final LIGHT_TURNON_ONESHOTBLINK:I = 0x20000

.field public static final LIGHT_TURNON_STABLE:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract mzTurnOffDoubleFlick()V
.end method

.method public abstract mzTurnOffFlash()V
.end method

.method public abstract mzTurnOffFlick()V
.end method

.method public abstract mzTurnOffStable()V
.end method

.method public abstract mzTurnOnDoubleFlick()V
.end method

.method public abstract mzTurnOnFlash()V
.end method

.method public abstract mzTurnOnFlick()V
.end method

.method public abstract mzTurnOnOneshotBlink()V
.end method

.method public abstract mzTurnOnStable()V
.end method

.method public abstract pulse()V
.end method

.method public abstract pulse(II)V
.end method

.method public abstract setBrightness(I)V
.end method

.method public abstract setBrightness(II)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setFlashing(IIII)V
.end method

.method public abstract turnOff()V
.end method
