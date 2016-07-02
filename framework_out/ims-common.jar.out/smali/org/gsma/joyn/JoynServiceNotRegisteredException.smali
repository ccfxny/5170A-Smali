.class public Lorg/gsma/joyn/JoynServiceNotRegisteredException;
.super Lorg/gsma/joyn/JoynServiceException;
.source "JoynServiceNotRegisteredException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "joyn service not registered"

    invoke-direct {p0, v0}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
