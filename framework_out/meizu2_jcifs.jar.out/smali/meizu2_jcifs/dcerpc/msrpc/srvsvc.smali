.class public Lmeizu2_jcifs/dcerpc/msrpc/srvsvc;
.super Ljava/lang/Object;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$RemoteTOD;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$TimeOfDayInfo;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerGetInfo;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ServerInfo100;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr502;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfo502;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr1;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfo1;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfoCtr0;,
        Lmeizu2_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "4b324fc8-1670-01d3-1278-5a47bf6ee188:3.0"

    return-object v0
.end method
