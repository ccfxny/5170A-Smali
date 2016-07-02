.class public Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;
.super Ljava/lang/Object;
.source "AlarmAlignManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmAlignManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlignPermissionInfo"
.end annotation


# instance fields
.field active:I

.field idle:I

.field night:I

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/AlarmAlignManager;

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmAlignManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 412
    iput-object p1, p0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->this$0:Lcom/android/server/AlarmAlignManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->pkgName:Ljava/lang/String;

    .line 414
    iput v0, p0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->active:I

    .line 415
    iput v0, p0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->idle:I

    .line 416
    iput v0, p0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->night:I

    .line 417
    iput-boolean v0, p0, Lcom/android/server/AlarmAlignManager$AlignPermissionInfo;->valid:Z

    .line 418
    return-void
.end method
