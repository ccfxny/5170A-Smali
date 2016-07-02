.class public Lorg/gsma/joyn/ipcall/IPCall$Error;
.super Ljava/lang/Object;
.source "IPCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/ipcall/IPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final CALL_FAILED:I = 0x0

.field public static final INVITATION_DECLINED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method
