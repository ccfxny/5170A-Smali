.class public Lmeizu2_jcifs/smb/SmbAuthException;
.super Lmeizu2_jcifs/smb/SmbException;
.source "SmbAuthException.java"


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "errcode"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmeizu2_jcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    .line 32
    return-void
.end method
