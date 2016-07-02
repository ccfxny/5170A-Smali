.class public Lmeizu2_jcifs/dcerpc/msrpc/netdfs;
.super Ljava/lang/Object;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray200;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo200;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray3;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo3;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsStorageInfo;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;,
        Lmeizu2_jcifs/dcerpc/msrpc/netdfs$DfsInfo1;
    }
.end annotation


# static fields
.field public static final DFS_STORAGE_STATE_ACTIVE:I = 0x4

.field public static final DFS_STORAGE_STATE_OFFLINE:I = 0x1

.field public static final DFS_STORAGE_STATE_ONLINE:I = 0x2

.field public static final DFS_VOLUME_FLAVOR_AD_BLOB:I = 0x200

.field public static final DFS_VOLUME_FLAVOR_STANDALONE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    return-void
.end method

.method public static getSyntax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "4fc742e0-4a10-11cf-8273-00aa004ae673:3.0"

    return-object v0
.end method
