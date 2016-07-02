.class public Lorg/gsma/joyn/session/MultimediaSession$State;
.super Ljava/lang/Object;
.source "MultimediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gsma/joyn/session/MultimediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ABORTED:I = 0x5

.field public static final FAILED:I = 0x7

.field public static final INITIATED:I = 0x2

.field public static final INVITED:I = 0x1

.field public static final STARTED:I = 0x3

.field public static final TERMINATED:I = 0x6

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method
