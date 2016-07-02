.class public Lcom/meizu/camera/MeizuCamera;
.super Ljava/lang/Object;
.source "MeizuCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/camera/MeizuCamera$EventHandler;,
        Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;,
        Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;,
        Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;,
        Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;,
        Lcom/meizu/camera/MeizuCamera$FlashLightListener;
    }
.end annotation


# static fields
.field public static final CONTINUOUS_ENCODING_NOTIFY:I = 0x1

.field public static final CONTINUOUS_END_NOTIFY:I = 0x10

.field public static final CONTINUOUS_WRITE_FAILED_NOTIFY:I = 0x4

.field public static final CONTINUOUS_WRITE_FILE_NOTIFY:I = 0x2

.field public static final CONTINUOUS_WRITE_LAST_NOTIFY:I = 0x8

.field public static final LIGHT_FIELD_ENCODING_NOTIFY:I = 0x1

.field public static final LIGHT_FIELD_END_NOTIFY:I = 0x10

.field public static final LIGHT_FIELD_WRITE_FAILED_NOTIFY:I = 0x4

.field public static final LIGHT_FIELD_WRITE_FILE_NOTIFY:I = 0x2

.field public static final LIGHT_FIELD_WRITE_LAST_NOTIFY:I = 0x8

.field private static final MEIZU_CAMERA_ERROR_SERVER_DIED:I = 0x64

.field private static final MEIZU_CAMERA_ERROR_UNKNOWN:I = 0x65

.field private static final MEIZU_CAMERA_MSG_CONTINUOUS_SHOT:I = 0x2

.field private static final MEIZU_CAMERA_MSG_ERROR:I = 0x1

.field private static final MEIZU_CAMERA_MSG_FLASH_LIGHT:I = 0x8

.field private static final MEIZU_CAMERA_MSG_REFOCUS_SHOT:I = 0x10

.field private static final MEIZU_CAMERA_MSG_SECURE_DETECTION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MeizuCamera"

.field public static final TEMPERATURE_CLOSE_CAMERA_NOTIFY:I = 0xcd

.field public static final TEMPERATURE_CLOSE_FLASH_NOTIFY:I = 0xcb

.field public static final TEMPERATURE_CLOSE_RECORD_NOTIFY:I = 0xcc

.field public static final TEMPERATURE_FLASH_DANGER_NOTIFY:I = 0xca

.field public static final TEMPERATURE_NORMAL_NOTIFY:I = 0xc9


# instance fields
.field private mContinuousCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;

.field private mEventHandler:Lcom/meizu/camera/MeizuCamera$EventHandler;

.field private mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

.field private mMeizuCameraErrorCb:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

.field private mNativeContext:J

.field private mRefocusCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;

.field private mSecureDetectionCallback:Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const-string v0, "meizucamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "cameraid"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/meizu/camera/MeizuCamera;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    .line 74
    iput-object v1, p0, Lcom/meizu/camera/MeizuCamera;->mMeizuCameraErrorCb:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/meizu/camera/MeizuCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/meizu/camera/MeizuCamera$EventHandler;-><init>(Lcom/meizu/camera/MeizuCamera;Lcom/meizu/camera/MeizuCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/camera/MeizuCamera;->mEventHandler:Lcom/meizu/camera/MeizuCamera$EventHandler;

    .line 84
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/meizu/camera/MeizuCamera;->native_setup(Ljava/lang/Object;I)V

    .line 85
    return-void

    .line 78
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v1, Lcom/meizu/camera/MeizuCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/meizu/camera/MeizuCamera$EventHandler;-><init>(Lcom/meizu/camera/MeizuCamera;Lcom/meizu/camera/MeizuCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/camera/MeizuCamera;->mEventHandler:Lcom/meizu/camera/MeizuCamera$EventHandler;

    goto :goto_0

    .line 81
    :cond_1
    iput-object v1, p0, Lcom/meizu/camera/MeizuCamera;->mEventHandler:Lcom/meizu/camera/MeizuCamera$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$FlashLightListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/camera/MeizuCamera;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/camera/MeizuCamera;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera;->mMeizuCameraErrorCb:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/camera/MeizuCamera;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera;->mRefocusCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/camera/MeizuCamera;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera;->mContinuousCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/camera/MeizuCamera;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/camera/MeizuCamera;->mSecureDetectionCallback:Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;

    return-object v0
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;I)V
.end method

.method public static open(I)Lcom/meizu/camera/MeizuCamera;
    .locals 1
    .param p0, "cameraid"    # I

    .prologue
    .line 115
    new-instance v0, Lcom/meizu/camera/MeizuCamera;

    invoke-direct {v0, p0}, Lcom/meizu/camera/MeizuCamera;-><init>(I)V

    return-object v0
.end method

.method public static open(II)Lcom/meizu/camera/MeizuCamera;
    .locals 1
    .param p0, "cameraid"    # I
    .param p1, "hwVersion"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/meizu/camera/MeizuCamera;

    invoke-direct {v0, p0}, Lcom/meizu/camera/MeizuCamera;-><init>(I)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/camera/MeizuCamera;

    .line 194
    .local v0, "c":Lcom/meizu/camera/MeizuCamera;
    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v2, v0, Lcom/meizu/camera/MeizuCamera;->mEventHandler:Lcom/meizu/camera/MeizuCamera$EventHandler;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, v0, Lcom/meizu/camera/MeizuCamera;->mEventHandler:Lcom/meizu/camera/MeizuCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/meizu/camera/MeizuCamera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 199
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/meizu/camera/MeizuCamera;->mEventHandler:Lcom/meizu/camera/MeizuCamera$EventHandler;

    invoke-virtual {v2, v1}, Lcom/meizu/camera/MeizuCamera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public native cancelContinuousShot()V
.end method

.method public final native closeFlashLight(I)I
.end method

.method public final closeTorch()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/camera/MeizuCamera;->closeFlashLight(I)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/meizu/camera/MeizuCamera;->release()V

    .line 89
    return-void
.end method

.method public final native getFlashLightNum()I
.end method

.method public final native getFocusDistance()I
.end method

.method public final native getMaxFlashLightLevel(I)I
.end method

.method public final native openFlashLight(I)I
.end method

.method public final openTorch()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/camera/MeizuCamera;->openFlashLight(I)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/meizu/camera/MeizuCamera;->native_release()V

    .line 94
    return-void
.end method

.method public final native reset()I
.end method

.method public final native setFileDescriptor([Ljava/io/FileDescriptor;)I
.end method

.method public final native setFlashLightLevel(II)I
.end method

.method public final setFlashLightListener(Lcom/meizu/camera/MeizuCamera$FlashLightListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/meizu/camera/MeizuCamera;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    .line 128
    return-void
.end method

.method public final setMeizuCameraContinuousCallback(Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/meizu/camera/MeizuCamera;->mContinuousCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraContinuousCallback;

    .line 140
    return-void
.end method

.method public final setMeizuCameraErrorCallback(Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/meizu/camera/MeizuCamera;->mMeizuCameraErrorCb:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    .line 132
    return-void
.end method

.method public final setMeizuCameraRefocusCallBack(Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/camera/MeizuCamera;->mRefocusCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraRefocusCallback;

    .line 136
    return-void
.end method

.method public final setSecureDetectionCallback(Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/meizu/camera/MeizuCamera;->mSecureDetectionCallback:Lcom/meizu/camera/MeizuCamera$MeizuSecureDetectionCallback;

    .line 144
    return-void
.end method

.method public final native shutterButtonDown()V
.end method
