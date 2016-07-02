.class public Lorg/gsma/joyn/JoynContactFormatException;
.super Lorg/gsma/joyn/JoynServiceException;
.source "JoynContactFormatException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "joyn contact format not supported"

    invoke-direct {p0, v0}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
