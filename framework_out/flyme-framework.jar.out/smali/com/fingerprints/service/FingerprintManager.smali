.class public Lcom/fingerprints/service/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/FingerprintManager$EventHandler;,
        Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;,
        Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;,
        Lcom/fingerprints/service/FingerprintManager$EnrolCallback;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRect;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;,
        Lcom/fingerprints/service/FingerprintManager$GuidedResult;,
        Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;,
        Lcom/fingerprints/service/FingerprintManager$GuidedData;,
        Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;,
        Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    }
.end annotation


# static fields
.field static final ARG_IDENTIFY_UPDATED:I = 0x1

.field public static final CAPTURE_FAILED_TOO_FAST:I = 0x1

.field public static final DELETE_TEMPLATES_SUCCESS:I = 0x1

.field static final FPC_GUIDE_DATA_INVALID:I = -0x80000000

.field static final FPC_GUIDE_DIRECTION_E:I = 0x7

.field static final FPC_GUIDE_DIRECTION_N:I = 0x5

.field static final FPC_GUIDE_DIRECTION_NA:I = 0x0

.field static final FPC_GUIDE_DIRECTION_NE:I = 0x6

.field static final FPC_GUIDE_DIRECTION_NW:I = 0x4

.field static final FPC_GUIDE_DIRECTION_S:I = 0x2

.field static final FPC_GUIDE_DIRECTION_SE:I = 0x3

.field static final FPC_GUIDE_DIRECTION_SW:I = 0x1

.field static final FPC_GUIDE_DIRECTION_W:I = 0x8

.field static final MEG_FINGERDOWN_TIMEOUT:I = 0x14

.field static final MSG_CAPTURE_FAILED:I = 0x13

.field public static final MSG_DELETE_RESULT:I = 0x1e

.field static final MSG_ENROLMENT_DATA_IMAGE_QUALITY:I = 0xe

.field static final MSG_ENROLMENT_DATA_IMAGE_STITCHED:I = 0x12

.field static final MSG_ENROLMENT_DATA_IMMOBILE:I = 0xf

.field static final MSG_ENROLMENT_DATA_NEXT_DIRECTION:I = 0x10

.field static final MSG_ENROLMENT_DATA_PROGRESS:I = 0x11

.field static final MSG_ENROLMENT_DONE:I = 0x5

.field static final MSG_ENROLMENT_FAILED:I = 0x8

.field static final MSG_ENROLMENT_LAST_TOUCH:I = 0xb

.field static final MSG_ENROLMENT_MASK_LIST:I = 0xd

.field static final MSG_ENROLMENT_NEXT_TOUCH:I = 0xc

.field static final MSG_ENROLMENT_SEND_GUIDE_DATA:I = 0xa

.field static final MSG_ENROLMENT_TOUCHES_QUALITY:I = 0x9

.field static final MSG_ENROL_PROGRESS:I = 0x4

.field static final MSG_FINGER_PRESENT:I = 0x2

.field static final MSG_FINGER_UP:I = 0x3

.field static final MSG_IDENTIFY_MATCH:I = 0x6

.field static final MSG_IDENTIFY_NO_MATCH:I = 0x7

.field static final MSG_WAITING_FINGER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"

.field private static mBundle:Landroid/os/Bundle;

.field private static mGuidedDataBundle:Landroid/os/Bundle;


# instance fields
.field private mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

.field private mClient:Lcom/fingerprints/service/IFingerprintClient;

.field private mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

.field private mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

.field private mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

.field private mGuidedDataCallback:Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;

.field private mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mReadyToStore:Z

.field private mService:Lcom/fingerprints/service/IFingerprintService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    .locals 4
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    .line 507
    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    .line 508
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get fp method time, mService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Lcom/fingerprints/service/FingerprintManager$EventHandler;

    invoke-direct {v0, p0, p2}, Lcom/fingerprints/service/FingerprintManager$EventHandler;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V

    .line 510
    .local v0, "handler":Lcom/fingerprints/service/FingerprintManager$EventHandler;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;

    .line 511
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    .line 513
    new-instance v1, Lcom/fingerprints/service/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/fingerprints/service/FingerprintManager$1;-><init>(Lcom/fingerprints/service/FingerprintManager;)V

    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    .line 554
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->open(Lcom/fingerprints/service/IFingerprintClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "finger service open failed    "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 559
    :cond_1
    iput-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

    .line 560
    return-void
.end method

.method private PackGuidedData()V
    .locals 50

    .prologue
    .line 213
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "progress"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 214
    .local v30, "mGuidedProgress":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "next_direction"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 215
    .local v31, "mGuidedNextDirection":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "acceptance"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 216
    .local v6, "mGuidedAcceptance":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "stitched"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x0

    .line 217
    .local v7, "mGuidedStitched":Z
    :goto_0
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "immobile"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v8, 0x0

    .line 218
    .local v8, "mGuidedImmobile":Z
    :goto_1
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "reject_reason"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 219
    .local v45, "reason":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskNumber"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 220
    .local v44, "mGuidedNumberOfMask":I
    const/16 v42, 0x0

    .line 221
    .local v42, "mGuidedLowCoverage":Z
    const/16 v43, 0x0

    .line 222
    .local v43, "mGuidedLowQuality":Z
    sparse-switch v45, :sswitch_data_0

    .line 234
    :goto_2
    new-instance v9, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v9, v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;-><init>(Lcom/fingerprints/service/FingerprintManager;ZZ)V

    .line 235
    .local v9, "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    new-instance v4, Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/fingerprints/service/FingerprintManager$GuidedResult;-><init>(Lcom/fingerprints/service/FingerprintManager;IZZLcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;)V

    .line 236
    .local v4, "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    new-instance v12, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    invoke-direct {v12, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 237
    .local v12, "lastTouch_bottom_left":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    invoke-direct {v13, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 238
    .local v13, "lastTouch_bottom_right":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    invoke-direct {v14, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 239
    .local v14, "lastTouch_top_left":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    invoke-direct {v15, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 240
    .local v15, "lastTouch_top_right":Landroid/graphics/Point;
    new-instance v18, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 241
    .local v18, "nextTouch_bottom_left":Landroid/graphics/Point;
    new-instance v19, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 242
    .local v19, "nextTouch_bottom_right":Landroid/graphics/Point;
    new-instance v20, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 243
    .local v20, "nextTouch_top_left":Landroid/graphics/Point;
    new-instance v21, Landroid/graphics/Point;

    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 244
    .local v21, "nextTouch_top_right":Landroid/graphics/Point;
    new-instance v10, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 245
    .local v10, "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v16, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 247
    .local v16, "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v40, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    move/from16 v0, v41

    move/from16 v1, v44

    if-ge v0, v1, :cond_2

    .line 259
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x0

    aget v36, v5, v11

    .line 260
    .local v36, "bottomLeftX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x1

    aget v37, v5, v11

    .line 261
    .local v37, "bottomLeftY":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x2

    aget v38, v5, v11

    .line 262
    .local v38, "bottomRightX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x3

    aget v39, v5, v11

    .line 263
    .local v39, "bottomRightY":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x4

    aget v46, v5, v11

    .line 264
    .local v46, "topLeftX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x5

    aget v47, v5, v11

    .line 265
    .local v47, "topLeftY":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x6

    aget v48, v5, v11

    .line 266
    .local v48, "topRightX":I
    sget-object v5, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x7

    aget v49, v5, v11

    .line 267
    .local v49, "topRightY":I
    new-instance v26, Landroid/graphics/Point;

    move-object/from16 v0, v26

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 268
    .local v26, "pointTopLeft":Landroid/graphics/Point;
    new-instance v27, Landroid/graphics/Point;

    move-object/from16 v0, v27

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 269
    .local v27, "pointTopRight":Landroid/graphics/Point;
    new-instance v24, Landroid/graphics/Point;

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 270
    .local v24, "pointBottomLeft":Landroid/graphics/Point;
    new-instance v25, Landroid/graphics/Point;

    move-object/from16 v0, v25

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 271
    .local v25, "pointBottomRight":Landroid/graphics/Point;
    new-instance v22, Lcom/fingerprints/service/FingerprintManager$GuidedRect;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v27}, Lcom/fingerprints/service/FingerprintManager$GuidedRect;-><init>(Lcom/fingerprints/service/FingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 272
    .local v22, "mask":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 216
    .end local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .end local v7    # "mGuidedStitched":Z
    .end local v8    # "mGuidedImmobile":Z
    .end local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .end local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .end local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .end local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .end local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .end local v16    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .end local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .end local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .end local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .end local v22    # "mask":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .end local v24    # "pointBottomLeft":Landroid/graphics/Point;
    .end local v25    # "pointBottomRight":Landroid/graphics/Point;
    .end local v26    # "pointTopLeft":Landroid/graphics/Point;
    .end local v27    # "pointTopRight":Landroid/graphics/Point;
    .end local v36    # "bottomLeftX":I
    .end local v37    # "bottomLeftY":I
    .end local v38    # "bottomRightX":I
    .end local v39    # "bottomRightY":I
    .end local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .end local v41    # "i":I
    .end local v42    # "mGuidedLowCoverage":Z
    .end local v43    # "mGuidedLowQuality":Z
    .end local v44    # "mGuidedNumberOfMask":I
    .end local v45    # "reason":I
    .end local v46    # "topLeftX":I
    .end local v47    # "topLeftY":I
    .end local v48    # "topRightX":I
    .end local v49    # "topRightY":I
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 217
    .restart local v7    # "mGuidedStitched":Z
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 225
    .restart local v8    # "mGuidedImmobile":Z
    .restart local v42    # "mGuidedLowCoverage":Z
    .restart local v43    # "mGuidedLowQuality":Z
    .restart local v44    # "mGuidedNumberOfMask":I
    .restart local v45    # "reason":I
    :sswitch_0
    const/16 v43, 0x1

    .line 226
    goto/16 :goto_2

    .line 228
    :sswitch_1
    const/16 v42, 0x1

    .line 229
    goto/16 :goto_2

    .line 274
    .restart local v4    # "mGuidedResult":Lcom/fingerprints/service/FingerprintManager$GuidedResult;
    .restart local v9    # "mGuidedRejectReasons":Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;
    .restart local v10    # "mGuidedLastTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .restart local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .restart local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .restart local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .restart local v16    # "mGuidedNextTouch":Lcom/fingerprints/service/FingerprintManager$GuidedRect;
    .restart local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .restart local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .restart local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .restart local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .restart local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fingerprints/service/FingerprintManager$GuidedRect;>;"
    .restart local v41    # "i":I
    :cond_2
    new-instance v35, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;-><init>(Lcom/fingerprints/service/FingerprintManager;Ljava/util/ArrayList;I)V

    .line 276
    .local v35, "mGuidedMaskList":Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;
    new-instance v28, Lcom/fingerprints/service/FingerprintManager$GuidedData;

    move-object/from16 v29, p0

    move-object/from16 v32, v4

    move-object/from16 v33, v10

    move-object/from16 v34, v16

    invoke-direct/range {v28 .. v35}, Lcom/fingerprints/service/FingerprintManager$GuidedData;-><init>(Lcom/fingerprints/service/FingerprintManager;IILcom/fingerprints/service/FingerprintManager$GuidedResult;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedRect;Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;)V

    .line 277
    .local v28, "mGuidedData":Lcom/fingerprints/service/FingerprintManager$GuidedData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V

    .line 278
    return-void

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fingerprints/service/FingerprintManager;Lcom/fingerprints/service/FingerprintManager$EnrolCallback;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;
    .param p1, "x1"    # Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fingerprints/service/FingerprintManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    return v0
.end method

.method static synthetic access$302(Lcom/fingerprints/service/FingerprintManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fingerprints/service/FingerprintManager;->PackGuidedData()V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$800()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static open()Lcom/fingerprints/service/FingerprintManager;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 479
    :try_start_0
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 480
    .local v2, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 481
    .local v1, "getService":Ljava/lang/reflect/Method;
    new-instance v4, Lcom/fingerprints/service/FingerprintManager;

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "fingerprints_service"

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Lcom/fingerprints/service/FingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v3, v4

    .line 503
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v5

    .line 484
    goto :goto_0

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v3, v5

    .line 503
    goto :goto_0

    .line 488
    :catch_2
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 491
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 494
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 497
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 500
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->cancel(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFingerData(Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;[I)V
    .locals 3
    .param p1, "deleteTemplateCallback"    # Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;
    .param p2, "fingerIds"    # [I

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 672
    :goto_0
    return-void

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->removeData(Lcom/fingerprints/service/IFingerprintClient;[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 618
    :goto_0
    return-object v1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 618
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->release(Lcom/fingerprints/service/IFingerprintClient;)V

    .line 576
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    if-eqz v1, :cond_0

    .line 577
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fingerprints/service/FingerprintManager;->mReadyToStore:Z

    if-nez v1, :cond_1

    .line 579
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    if-eqz v1, :cond_2

    .line 581
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_2
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V
    .locals 0
    .param p1, "captureCallback"    # Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    .line 568
    return-void
.end method

.method public startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V
    .locals 3
    .param p1, "enrolCallback"    # Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 598
    if-nez p1, :cond_0

    .line 599
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 601
    :cond_0
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->startGuidedEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V
    .locals 3
    .param p1, "identifyCallback"    # Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 632
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
