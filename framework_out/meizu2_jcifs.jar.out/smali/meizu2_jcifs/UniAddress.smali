.class public Lmeizu2_jcifs/UniAddress;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu2_jcifs/UniAddress$ReachableThread;,
        Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;,
        Lmeizu2_jcifs/UniAddress$QueryThread;,
        Lmeizu2_jcifs/UniAddress$Sem;
    }
.end annotation


# static fields
.field private static final RESOLVER_BCAST:I = 0x1

.field private static final RESOLVER_DNS:I = 0x2

.field private static final RESOLVER_LMHOSTS:I = 0x3

.field private static final RESOLVER_WINS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "jcifs:UniAddress"

.field private static baddr:Ljava/net/InetAddress;

.field private static log:Lmeizu2_jcifs/util/LogStream;

.field private static final reachableAddrLocker:Ljava/lang/Object;

.field private static resolveOrder:[I


# instance fields
.field addr:Ljava/lang/Object;

.field calledName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v9, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 61
    invoke-static {}, Lmeizu2_jcifs/util/LogStream;->getInstance()Lmeizu2_jcifs/util/LogStream;

    move-result-object v7

    sput-object v7, Lmeizu2_jcifs/UniAddress;->log:Lmeizu2_jcifs/util/LogStream;

    .line 64
    const-string v7, "meizu2_jcifs.resolveOrder"

    invoke-static {v7}, Lmeizu2_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "ro":Ljava/lang/String;
    invoke-static {}, Lmeizu2_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 68
    .local v2, "nbns":Ljava/net/InetAddress;
    :try_start_0
    const-string v7, "meizu2_jcifs.netbios.baddr"

    const-string v8, "255.255.255.255"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-static {v7, v8}, Lmeizu2_jcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v7

    sput-object v7, Lmeizu2_jcifs/UniAddress;->baddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 81
    :cond_0
    if-nez v2, :cond_1

    .line 82
    new-array v7, v13, [I

    sput-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    .line 83
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aput v13, v7, v11

    .line 84
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aput v12, v7, v10

    .line 85
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aput v10, v7, v12

    .line 248
    :goto_1
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sput-object v7, Lmeizu2_jcifs/UniAddress;->reachableAddrLocker:Ljava/lang/Object;

    return-void

    .line 87
    :cond_1
    new-array v7, v9, [I

    sput-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    .line 88
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aput v13, v7, v11

    .line 89
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aput v11, v7, v10

    .line 90
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aput v12, v7, v12

    .line 91
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aput v10, v7, v13

    goto :goto_1

    .line 94
    :cond_2
    new-array v6, v9, [I

    .line 95
    .local v6, "tmp":[I
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v5, "st":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 97
    .local v0, "i":I
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 98
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "s":Ljava/lang/String;
    const-string v7, "LMHOSTS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 100
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput v13, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 101
    :cond_4
    const-string v7, "WINS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 102
    if-nez v2, :cond_5

    .line 103
    sget-object v7, Lmeizu2_jcifs/UniAddress;->log:Lmeizu2_jcifs/util/LogStream;

    sget v7, Lmeizu2_jcifs/util/LogStream;->level:I

    if-le v7, v10, :cond_3

    .line 104
    sget-object v7, Lmeizu2_jcifs/UniAddress;->log:Lmeizu2_jcifs/util/LogStream;

    const-string v8, "UniAddress resolveOrder specifies WINS however the meizu2_jcifs.netbios.wins property has not been set"

    invoke-virtual {v7, v8}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 109
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput v11, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 110
    :cond_6
    const-string v7, "BCAST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 111
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput v10, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 112
    :cond_7
    const-string v7, "DNS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 113
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput v12, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 114
    :cond_8
    sget-object v7, Lmeizu2_jcifs/UniAddress;->log:Lmeizu2_jcifs/util/LogStream;

    sget v7, Lmeizu2_jcifs/util/LogStream;->level:I

    if-le v7, v10, :cond_3

    .line 115
    sget-object v7, Lmeizu2_jcifs/UniAddress;->log:Lmeizu2_jcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown resolver method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    .end local v4    # "s":Ljava/lang/String;
    :cond_9
    new-array v7, v0, [I

    sput-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    .line 119
    sget-object v7, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    invoke-static {v6, v11, v7, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 70
    .end local v0    # "i":I
    .end local v5    # "st":Ljava/util/StringTokenizer;
    .end local v6    # "tmp":[I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/Object;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 440
    :cond_0
    iput-object p1, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    .line 441
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lmeizu2_jcifs/UniAddress;->reachableAddrLocker:Ljava/lang/Object;

    return-object v0
.end method

.method public static getAllByName(Ljava/lang/String;Z)[Lmeizu2_jcifs/UniAddress;
    .locals 9
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "possibleNTDomainOrWorkgroup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 328
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 329
    :cond_0
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    throw v5

    .line 332
    :cond_1
    invoke-static {p0}, Lmeizu2_jcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 333
    new-array v1, v6, [Lmeizu2_jcifs/UniAddress;

    .line 334
    .local v1, "addrs":[Lmeizu2_jcifs/UniAddress;
    new-instance v5, Lmeizu2_jcifs/UniAddress;

    invoke-static {p0}, Lmeizu2_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;)Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v6

    invoke-direct {v5, v6}, Lmeizu2_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v5, v1, v7

    .line 384
    :cond_2
    :goto_0
    return-object v1

    .line 338
    .end local v1    # "addrs":[Lmeizu2_jcifs/UniAddress;
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 340
    :try_start_0
    sget-object v5, Lmeizu2_jcifs/UniAddress;->resolveOrder:[I

    aget v5, v5, v2

    packed-switch v5, :pswitch_data_0

    .line 380
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    :catch_0
    move-exception v5

    .line 338
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    :pswitch_0
    invoke-static {p0}, Lmeizu2_jcifs/netbios/Lmhosts;->getByName(Ljava/lang/String;)Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v0

    .local v0, "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    if-eqz v0, :cond_4

    .line 382
    :goto_2
    const/4 v5, 0x1

    new-array v1, v5, [Lmeizu2_jcifs/UniAddress;

    .line 383
    .restart local v1    # "addrs":[Lmeizu2_jcifs/UniAddress;
    const/4 v5, 0x0

    new-instance v6, Lmeizu2_jcifs/UniAddress;

    invoke-direct {v6, v0}, Lmeizu2_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v6, v1, v5

    goto :goto_0

    .line 347
    .end local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v1    # "addrs":[Lmeizu2_jcifs/UniAddress;
    :pswitch_1
    const-string v5, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq p0, v5, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_4

    .line 352
    if-eqz p1, :cond_5

    .line 353
    invoke-static {}, Lmeizu2_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {p0, v5}, Lmeizu2_jcifs/UniAddress;->lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v0

    .restart local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 355
    .end local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    :cond_5
    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {}, Lmeizu2_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lmeizu2_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 357
    .restart local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 359
    .end local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v8, :cond_4

    .line 363
    if-eqz p1, :cond_6

    .line 364
    sget-object v5, Lmeizu2_jcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    invoke-static {p0, v5}, Lmeizu2_jcifs/UniAddress;->lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v0

    .restart local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 366
    .end local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    :cond_6
    const/16 v5, 0x20

    const/4 v6, 0x0

    sget-object v7, Lmeizu2_jcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    invoke-static {p0, v5, v6, v7}, Lmeizu2_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 368
    .restart local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    goto :goto_2

    .line 370
    .end local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    :pswitch_3
    invoke-static {p0}, Lmeizu2_jcifs/UniAddress;->isAllDigits(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 371
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    :cond_7
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 374
    .local v3, "iaddrs":[Ljava/net/InetAddress;
    array-length v5, v3

    new-array v1, v5, [Lmeizu2_jcifs/UniAddress;

    .line 375
    .restart local v1    # "addrs":[Lmeizu2_jcifs/UniAddress;
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 376
    new-instance v5, Lmeizu2_jcifs/UniAddress;

    aget-object v6, v3, v4

    invoke-direct {v5, v6}, Lmeizu2_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v5, v1, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 389
    .end local v1    # "addrs":[Lmeizu2_jcifs/UniAddress;
    .end local v3    # "iaddrs":[Ljava/net/InetAddress;
    .end local v4    # "ii":I
    :cond_8
    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getByName(Ljava/lang/String;)Lmeizu2_jcifs/UniAddress;
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmeizu2_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu2_jcifs/UniAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;Z)Lmeizu2_jcifs/UniAddress;
    .locals 3
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "possibleNTDomainOrWorkgroup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {p0, p1}, Lmeizu2_jcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Lmeizu2_jcifs/UniAddress;

    move-result-object v0

    .line 317
    .local v0, "addrs":[Lmeizu2_jcifs/UniAddress;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 318
    invoke-static {v0}, Lmeizu2_jcifs/UniAddress;->getReachableAddress([Lmeizu2_jcifs/UniAddress;)Lmeizu2_jcifs/UniAddress;

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static getReachableAddress([Lmeizu2_jcifs/UniAddress;)Lmeizu2_jcifs/UniAddress;
    .locals 11
    .param p0, "addrs"    # [Lmeizu2_jcifs/UniAddress;

    .prologue
    const/4 v10, 0x0

    .line 281
    new-instance v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;-><init>(Lmeizu2_jcifs/UniAddress;)V

    .line 282
    .local v5, "reachableAddressWrapper":Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;
    move-object v1, p0

    .local v1, "arr$":[Lmeizu2_jcifs/UniAddress;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 283
    .local v0, "addr":Lmeizu2_jcifs/UniAddress;
    iget-object v7, v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    if-eqz v7, :cond_0

    .line 284
    const-string v7, "jcifs:UniAddress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GREAT found reachableAddressWrapper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v7, v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    .line 303
    .end local v0    # "addr":Lmeizu2_jcifs/UniAddress;
    :goto_1
    return-object v7

    .line 287
    .restart local v0    # "addr":Lmeizu2_jcifs/UniAddress;
    :cond_0
    new-instance v6, Lmeizu2_jcifs/UniAddress$ReachableThread;

    invoke-direct {v6, v0, v5}, Lmeizu2_jcifs/UniAddress$ReachableThread;-><init>(Lmeizu2_jcifs/UniAddress;Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;)V

    .line 288
    .local v6, "thread":Lmeizu2_jcifs/UniAddress$ReachableThread;
    invoke-virtual {v6}, Lmeizu2_jcifs/UniAddress$ReachableThread;->start()V

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "addr":Lmeizu2_jcifs/UniAddress;
    .end local v6    # "thread":Lmeizu2_jcifs/UniAddress$ReachableThread;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v7, 0x64

    if-ge v2, v7, :cond_3

    .line 292
    iget-object v7, v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    if-eqz v7, :cond_2

    .line 293
    const-string v7, "jcifs:UniAddress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "good found reachableAddressWrapper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v7, v5, Lmeizu2_jcifs/UniAddress$ReachableAddressWrapper;->addr:Lmeizu2_jcifs/UniAddress;

    goto :goto_1

    .line 297
    :cond_2
    const-wide/16 v8, 0x3c

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 302
    :cond_3
    const-string v7, "jcifs:UniAddress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad NOT found reachableAddressWrapper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    aget-object v7, p0, v10

    goto :goto_1

    .line 298
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method static isAllDigits(Ljava/lang/String;)Z
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const/4 v1, 0x0

    .line 237
    :goto_1
    return v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static isDotQuadIP(Ljava/lang/String;)Z
    .locals 8
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    const/4 v1, 0x0

    .local v1, "dots":I
    move v2, v1

    .line 214
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 215
    .local v4, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "data":[C
    move v3, v2

    .line 216
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-char v6, v0, v3

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    if-ne v2, v4, :cond_1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    .line 219
    const/4 v5, 0x1

    .line 228
    .end local v0    # "data":[C
    .end local v1    # "dots":I
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_0
    return v5

    .line 221
    .restart local v0    # "data":[C
    .restart local v1    # "dots":I
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_1
    if-ge v2, v4, :cond_2

    aget-char v6, v0, v2

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_2

    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 223
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0
.end method

.method static lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Lmeizu2_jcifs/netbios/NbtAddress;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "svr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 167
    new-instance v1, Lmeizu2_jcifs/UniAddress$Sem;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lmeizu2_jcifs/UniAddress$Sem;-><init>(I)V

    .line 168
    .local v1, "sem":Lmeizu2_jcifs/UniAddress$Sem;
    invoke-static {p1}, Lmeizu2_jcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x1b

    .line 170
    .local v3, "type":I
    :goto_0
    new-instance v0, Lmeizu2_jcifs/UniAddress$QueryThread;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmeizu2_jcifs/UniAddress$QueryThread;-><init>(Lmeizu2_jcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    .line 171
    .local v0, "q1x":Lmeizu2_jcifs/UniAddress$QueryThread;
    new-instance v5, Lmeizu2_jcifs/UniAddress$QueryThread;

    const/16 v8, 0x20

    move-object v6, v1

    move-object v7, p0

    move-object v9, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lmeizu2_jcifs/UniAddress$QueryThread;-><init>(Lmeizu2_jcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    .line 172
    .local v5, "q20":Lmeizu2_jcifs/UniAddress$QueryThread;
    invoke-virtual {v0, v12}, Lmeizu2_jcifs/UniAddress$QueryThread;->setDaemon(Z)V

    .line 173
    invoke-virtual {v5, v12}, Lmeizu2_jcifs/UniAddress$QueryThread;->setDaemon(Z)V

    .line 175
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :try_start_1
    invoke-virtual {v0}, Lmeizu2_jcifs/UniAddress$QueryThread;->start()V

    .line 177
    invoke-virtual {v5}, Lmeizu2_jcifs/UniAddress$QueryThread;->start()V

    .line 179
    :goto_1
    iget v2, v1, Lmeizu2_jcifs/UniAddress$Sem;->count:I

    if-lez v2, :cond_1

    iget-object v2, v0, Lmeizu2_jcifs/UniAddress$QueryThread;->ans:Lmeizu2_jcifs/netbios/NbtAddress;

    if-nez v2, :cond_1

    iget-object v2, v5, Lmeizu2_jcifs/UniAddress$QueryThread;->ans:Lmeizu2_jcifs/netbios/NbtAddress;

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    :catch_0
    move-exception v11

    .line 184
    .local v11, "ie":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    .end local v0    # "q1x":Lmeizu2_jcifs/UniAddress$QueryThread;
    .end local v3    # "type":I
    .end local v5    # "q20":Lmeizu2_jcifs/UniAddress$QueryThread;
    .end local v11    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    const/16 v3, 0x1d

    goto :goto_0

    .line 182
    .restart local v0    # "q1x":Lmeizu2_jcifs/UniAddress$QueryThread;
    .restart local v3    # "type":I
    .restart local v5    # "q20":Lmeizu2_jcifs/UniAddress$QueryThread;
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    iget-object v2, v0, Lmeizu2_jcifs/UniAddress$QueryThread;->ans:Lmeizu2_jcifs/netbios/NbtAddress;

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, v0, Lmeizu2_jcifs/UniAddress$QueryThread;->ans:Lmeizu2_jcifs/netbios/NbtAddress;

    .line 189
    :goto_2
    return-object v2

    .line 188
    :cond_2
    iget-object v2, v5, Lmeizu2_jcifs/UniAddress$QueryThread;->ans:Lmeizu2_jcifs/netbios/NbtAddress;

    if-eqz v2, :cond_3

    .line 189
    iget-object v2, v5, Lmeizu2_jcifs/UniAddress$QueryThread;->ans:Lmeizu2_jcifs/netbios/NbtAddress;

    goto :goto_2

    .line 191
    :cond_3
    iget-object v2, v0, Lmeizu2_jcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 456
    instance-of v0, p1, Lmeizu2_jcifs/UniAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast p1, Lmeizu2_jcifs/UniAddress;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public firstCalledName()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 470
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v1, v1, Lmeizu2_jcifs/netbios/NbtAddress;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v1, Lmeizu2_jcifs/netbios/NbtAddress;

    invoke-virtual {v1}, Lmeizu2_jcifs/netbios/NbtAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    .line 473
    :cond_0
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 474
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-static {v1}, Lmeizu2_jcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    const-string v1, "*SMBSERVER     "

    iput-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 488
    :goto_1
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 478
    .local v0, "i":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    if-ge v0, v3, :cond_2

    .line 479
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    .line 480
    :cond_2
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 481
    const-string v1, "*SMBSERVER     "

    iput-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    .line 483
    :cond_3
    iget-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAddress()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v0, v0, Lmeizu2_jcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Lmeizu2_jcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Lmeizu2_jcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v0, v0, Lmeizu2_jcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Lmeizu2_jcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Lmeizu2_jcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v0, v0, Lmeizu2_jcifs/netbios/NbtAddress;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast v0, Lmeizu2_jcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Lmeizu2_jcifs/netbios/NbtAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    .line 499
    :cond_0
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    const-string v1, "*SMBSERVER     "

    if-eq v0, v1, :cond_1

    .line 500
    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lmeizu2_jcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
