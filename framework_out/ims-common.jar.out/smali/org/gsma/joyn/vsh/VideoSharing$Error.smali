.class public Lorg/gsma/joyn/vsh/VideoSharing$Error;
.super Ljava/lang/Object;
.source "VideoSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/vsh/VideoSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final INVITATION_DECLINED:I = 0x1

.field public static final SHARING_FAILED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method
