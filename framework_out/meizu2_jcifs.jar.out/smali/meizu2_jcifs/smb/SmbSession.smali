.class public final Lmeizu2_jcifs/smb/SmbSession;
.super Ljava/lang/Object;
.source "SmbSession.java"


# static fields
.field private static final CACHE_POLICY:I

.field private static final DOMAIN:Ljava/lang/String;

.field private static final LOGON_SHARE:Ljava/lang/String;

.field private static final LOOKUP_RESP_LIMIT:I

.field private static final USERNAME:Ljava/lang/String;

.field static dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

.field static dc_list_counter:I

.field static dc_list_expiration:J


# instance fields
.field private address:Lmeizu2_jcifs/UniAddress;

.field auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

.field connectionState:I

.field expiration:J

.field private localAddr:Ljava/net/InetAddress;

.field private localPort:I

.field netbiosName:Ljava/lang/String;

.field private port:I

.field transport:Lmeizu2_jcifs/smb/SmbTransport;

.field trees:Ljava/util/Vector;

.field uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v0, "meizu2_jcifs.smb.client.logonShare"

    invoke-static {v0, v2}, Lmeizu2_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    .line 35
    const-string v0, "meizu2_jcifs.netbios.lookupRespLimit"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmeizu2_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu2_jcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    .line 37
    const-string v0, "meizu2_jcifs.smb.client.domain"

    invoke-static {v0, v2}, Lmeizu2_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    .line 39
    const-string v0, "meizu2_jcifs.smb.client.username"

    invoke-static {v0, v2}, Lmeizu2_jcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu2_jcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    .line 41
    const-string v0, "meizu2_jcifs.netbios.cachePolicy"

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lmeizu2_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lmeizu2_jcifs/smb/SmbSession;->CACHE_POLICY:I

    .line 44
    sput-object v2, Lmeizu2_jcifs/smb/SmbSession;->dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

    return-void
.end method

.method constructor <init>(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;ILmeizu2_jcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1
    .param p1, "address"    # Lmeizu2_jcifs/UniAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    .line 171
    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lmeizu2_jcifs/smb/SmbSession;->address:Lmeizu2_jcifs/UniAddress;

    .line 177
    iput p2, p0, Lmeizu2_jcifs/smb/SmbSession;->port:I

    .line 178
    iput-object p3, p0, Lmeizu2_jcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    .line 179
    iput p4, p0, Lmeizu2_jcifs/smb/SmbSession;->localPort:I

    .line 180
    iput-object p5, p0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .line 181
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    .line 183
    return-void
.end method

.method public static getChallenge(Lmeizu2_jcifs/UniAddress;)[B
    .locals 1
    .param p0, "dc"    # Lmeizu2_jcifs/UniAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmeizu2_jcifs/smb/SmbSession;->getChallenge(Lmeizu2_jcifs/UniAddress;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getChallenge(Lmeizu2_jcifs/UniAddress;I)[B
    .locals 2
    .param p0, "dc"    # Lmeizu2_jcifs/UniAddress;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0, p1}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;I)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v0

    .line 124
    .local v0, "trans":Lmeizu2_jcifs/smb/SmbTransport;
    invoke-virtual {v0}, Lmeizu2_jcifs/smb/SmbTransport;->connect()V

    .line 125
    iget-object v1, v0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    return-object v1
.end method

.method public static getChallengeForDomain()Lmeizu2_jcifs/smb/NtlmChallenge;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v9, Lmeizu2_jcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 67
    new-instance v9, Lmeizu2_jcifs/smb/SmbException;

    const-string v10, "A domain was not specified"

    invoke-direct {v9, v10}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 69
    :cond_0
    sget-object v10, Lmeizu2_jcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    monitor-enter v10

    .line 70
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 71
    .local v4, "now":J
    const/4 v6, 0x1

    .local v6, "retry":I
    move v7, v6

    .line 74
    .end local v6    # "retry":I
    .local v7, "retry":I
    :goto_0
    sget-wide v12, Lmeizu2_jcifs/smb/SmbSession;->dc_list_expiration:J

    cmp-long v9, v12, v4

    if-gez v9, :cond_1

    .line 75
    sget-object v9, Lmeizu2_jcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v11, v12, v13}, Lmeizu2_jcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v2

    .line 76
    .local v2, "list":[Lmeizu2_jcifs/netbios/NbtAddress;
    sget v9, Lmeizu2_jcifs/smb/SmbSession;->CACHE_POLICY:I

    int-to-long v12, v9

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    add-long/2addr v12, v4

    sput-wide v12, Lmeizu2_jcifs/smb/SmbSession;->dc_list_expiration:J

    .line 77
    if-eqz v2, :cond_2

    array-length v9, v2

    if-lez v9, :cond_2

    .line 78
    sput-object v2, Lmeizu2_jcifs/smb/SmbSession;->dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

    .line 87
    .end local v2    # "list":[Lmeizu2_jcifs/netbios/NbtAddress;
    :cond_1
    :goto_1
    sget-object v9, Lmeizu2_jcifs/smb/SmbSession;->dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

    array-length v9, v9

    sget v11, Lmeizu2_jcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 88
    .local v3, "max":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 89
    sget v9, Lmeizu2_jcifs/smb/SmbSession;->dc_list_counter:I

    add-int/lit8 v11, v9, 0x1

    sput v11, Lmeizu2_jcifs/smb/SmbSession;->dc_list_counter:I

    rem-int v0, v9, v3

    .line 90
    .local v0, "i":I
    sget-object v9, Lmeizu2_jcifs/smb/SmbSession;->dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

    aget-object v9, v9, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_4

    .line 92
    :try_start_1
    sget-object v9, Lmeizu2_jcifs/smb/SmbSession;->dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

    aget-object v9, v9, v0

    invoke-static {v9}, Lmeizu2_jcifs/smb/SmbSession;->interrogate(Lmeizu2_jcifs/netbios/NbtAddress;)Lmeizu2_jcifs/smb/NtlmChallenge;
    :try_end_1
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :try_start_2
    monitor-exit v10

    return-object v9

    .line 80
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "max":I
    .restart local v2    # "list":[Lmeizu2_jcifs/netbios/NbtAddress;
    :cond_2
    const-wide/32 v12, 0xdbba0

    add-long/2addr v12, v4

    sput-wide v12, Lmeizu2_jcifs/smb/SmbSession;->dc_list_expiration:J

    .line 81
    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v9, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v11, 0x2

    if-lt v9, v11, :cond_1

    .line 82
    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    const-string v11, "Failed to retrieve DC list from WINS"

    invoke-virtual {v9, v11}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v2    # "list":[Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v7    # "retry":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 93
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "max":I
    .restart local v7    # "retry":I
    :catch_0
    move-exception v8

    .line 94
    .local v8, "se":Lmeizu2_jcifs/smb/SmbException;
    :try_start_3
    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v9, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v11, 0x2

    if-lt v9, v11, :cond_3

    .line 95
    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed validate DC: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lmeizu2_jcifs/smb/SmbSession;->dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

    aget-object v12, v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v9, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v11, 0x2

    if-le v9, v11, :cond_3

    .line 97
    sget-object v9, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v8, v9}, Lmeizu2_jcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 100
    :cond_3
    sget-object v9, Lmeizu2_jcifs/smb/SmbSession;->dc_list:[Lmeizu2_jcifs/netbios/NbtAddress;

    const/4 v11, 0x0

    aput-object v11, v9, v0

    .line 88
    .end local v8    # "se":Lmeizu2_jcifs/smb/SmbException;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    .end local v0    # "i":I
    :cond_5
    const-wide/16 v12, 0x0

    sput-wide v12, Lmeizu2_jcifs/smb/SmbSession;->dc_list_expiration:J

    .line 107
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "retry":I
    .restart local v6    # "retry":I
    if-gtz v7, :cond_6

    .line 109
    const-wide/32 v12, 0xdbba0

    add-long/2addr v12, v4

    sput-wide v12, Lmeizu2_jcifs/smb/SmbSession;->dc_list_expiration:J

    .line 110
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    new-instance v9, Ljava/net/UnknownHostException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to negotiate with a suitable domain controller for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lmeizu2_jcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    move v7, v6

    .end local v6    # "retry":I
    .restart local v7    # "retry":I
    goto/16 :goto_0
.end method

.method private static interrogate(Lmeizu2_jcifs/netbios/NbtAddress;)Lmeizu2_jcifs/smb/NtlmChallenge;
    .locals 5
    .param p0, "addr"    # Lmeizu2_jcifs/netbios/NbtAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v0, Lmeizu2_jcifs/UniAddress;

    invoke-direct {v0, p0}, Lmeizu2_jcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 50
    .local v0, "dc":Lmeizu2_jcifs/UniAddress;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;I)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v2

    .line 51
    .local v2, "trans":Lmeizu2_jcifs/smb/SmbTransport;
    sget-object v3, Lmeizu2_jcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 52
    invoke-virtual {v2}, Lmeizu2_jcifs/smb/SmbTransport;->connect()V

    .line 53
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v3, Lmeizu2_jcifs/util/LogStream;->level:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 54
    sget-object v3, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    const-string v4, "Default credentials (meizu2_jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation."

    invoke-virtual {v3, v4}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    new-instance v3, Lmeizu2_jcifs/smb/NtlmChallenge;

    iget-object v4, v2, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget-object v4, v4, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-direct {v3, v4, v0}, Lmeizu2_jcifs/smb/NtlmChallenge;-><init>([BLmeizu2_jcifs/UniAddress;)V

    return-object v3

    .line 59
    :cond_1
    sget-object v3, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v3}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbSession(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbSession;

    move-result-object v1

    .line 60
    .local v1, "ssn":Lmeizu2_jcifs/smb/SmbSession;
    sget-object v3, Lmeizu2_jcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lmeizu2_jcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Lmeizu2_jcifs/smb/SmbTree;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lmeizu2_jcifs/smb/SmbTree;->treeConnect(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    goto :goto_0
.end method

.method public static logon(Lmeizu2_jcifs/UniAddress;ILmeizu2_jcifs/smb/NtlmPasswordAuthentication;)V
    .locals 6
    .param p0, "dc"    # Lmeizu2_jcifs/UniAddress;
    .param p1, "port"    # I
    .param p2, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-static {p0, p1}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;I)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v3

    invoke-virtual {v3, p2}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbSession(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbSession;

    move-result-object v3

    sget-object v4, Lmeizu2_jcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lmeizu2_jcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Lmeizu2_jcifs/smb/SmbTree;

    move-result-object v2

    .line 146
    .local v2, "tree":Lmeizu2_jcifs/smb/SmbTree;
    sget-object v3, Lmeizu2_jcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {v2, v5, v5}, Lmeizu2_jcifs/smb/SmbTree;->treeConnect(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lmeizu2_jcifs/smb/Trans2FindFirst2;

    const-string v3, "\\"

    const-string v4, "*"

    const/16 v5, 0x10

    invoke-direct {v0, v3, v4, v5}, Lmeizu2_jcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    .local v0, "req":Lmeizu2_jcifs/smb/Trans2FindFirst2;
    new-instance v1, Lmeizu2_jcifs/smb/Trans2FindFirst2Response;

    invoke-direct {v1}, Lmeizu2_jcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 151
    .local v1, "resp":Lmeizu2_jcifs/smb/Trans2FindFirst2Response;
    invoke-virtual {v2, v0, v1}, Lmeizu2_jcifs/smb/SmbTree;->send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    goto :goto_0
.end method

.method public static logon(Lmeizu2_jcifs/UniAddress;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1
    .param p0, "dc"    # Lmeizu2_jcifs/UniAddress;
    .param p1, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmeizu2_jcifs/smb/SmbSession;->logon(Lmeizu2_jcifs/UniAddress;ILmeizu2_jcifs/smb/NtlmPasswordAuthentication;)V

    .line 141
    return-void
.end method


# virtual methods
.method declared-synchronized getSmbTree(Ljava/lang/String;Ljava/lang/String;)Lmeizu2_jcifs/smb/SmbTree;
    .locals 4
    .param p1, "share"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;

    .prologue
    .line 188
    monitor-enter p0

    if-nez p1, :cond_0

    .line 189
    :try_start_0
    const-string p1, "IPC$"

    .line 191
    :cond_0
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu2_jcifs/smb/SmbTree;

    .line 193
    .local v1, "t":Lmeizu2_jcifs/smb/SmbTree;
    invoke-virtual {v1, p1, p2}, Lmeizu2_jcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 199
    .end local v1    # "t":Lmeizu2_jcifs/smb/SmbTree;
    .local v2, "t":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 197
    .end local v2    # "t":Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v1, Lmeizu2_jcifs/smb/SmbTree;

    invoke-direct {v1, p0, p1, p2}, Lmeizu2_jcifs/smb/SmbTree;-><init>(Lmeizu2_jcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .restart local v1    # "t":Lmeizu2_jcifs/smb/SmbTree;
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 199
    .restart local v2    # "t":Ljava/lang/Object;
    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "t":Lmeizu2_jcifs/smb/SmbTree;
    .end local v2    # "t":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method logoff(Z)V
    .locals 6
    .param p1, "inError"    # Z

    .prologue
    .line 439
    invoke-virtual {p0}, Lmeizu2_jcifs/smb/SmbSession;->transport()Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v4

    monitor-enter v4

    .line 441
    :try_start_0
    iget v3, p0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    .line 442
    monitor-exit v4

    .line 469
    :goto_0
    return-void

    .line 443
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    .line 445
    const/4 v3, 0x0

    iput-object v3, p0, Lmeizu2_jcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 447
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu2_jcifs/smb/SmbTree;

    .line 449
    .local v2, "t":Lmeizu2_jcifs/smb/SmbTree;
    invoke-virtual {v2, p1}, Lmeizu2_jcifs/smb/SmbTree;->treeDisconnect(Z)V

    goto :goto_1

    .line 468
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v2    # "t":Lmeizu2_jcifs/smb/SmbTree;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 452
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    iget-object v3, v3, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v3, :cond_2

    .line 457
    new-instance v1, Lmeizu2_jcifs/smb/SmbComLogoffAndX;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lmeizu2_jcifs/smb/SmbComLogoffAndX;-><init>(Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 458
    .local v1, "request":Lmeizu2_jcifs/smb/SmbComLogoffAndX;
    iget v3, p0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    iput v3, v1, Lmeizu2_jcifs/smb/SmbComLogoffAndX;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lmeizu2_jcifs/smb/SmbTransport;->send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    :try_end_2
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    :goto_2
    const/4 v3, 0x0

    :try_start_3
    iput v3, p0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    .line 466
    .end local v1    # "request":Lmeizu2_jcifs/smb/SmbComLogoffAndX;
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    .line 467
    iget-object v3, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 461
    .restart local v1    # "request":Lmeizu2_jcifs/smb/SmbComLogoffAndX;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method matches(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1
    .param p1, "auth"    # Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    .prologue
    .line 202
    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    .locals 10
    .param p1, "request"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .param p2, "response"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lmeizu2_jcifs/smb/SmbSession;->transport()Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v5

    monitor-enter v5

    .line 213
    if-eqz p2, :cond_0

    .line 214
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->received:Z

    .line 217
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget v4, Lmeizu2_jcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lmeizu2_jcifs/smb/SmbSession;->expiration:J

    .line 218
    invoke-virtual {p0, p1, p2}, Lmeizu2_jcifs/smb/SmbSession;->sessionSetup(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 219
    if-eqz p2, :cond_1

    iget-boolean v4, p2, Lmeizu2_jcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v4, :cond_1

    .line 220
    monitor-exit v5

    .line 247
    :goto_0
    return-void

    .line 223
    :cond_1
    instance-of v4, p1, Lmeizu2_jcifs/smb/SmbComTreeConnectAndX;

    if-eqz v4, :cond_2

    .line 224
    move-object v0, p1

    check-cast v0, Lmeizu2_jcifs/smb/SmbComTreeConnectAndX;

    move-object v3, v0

    .line 225
    .local v3, "tcax":Lmeizu2_jcifs/smb/SmbComTreeConnectAndX;
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lmeizu2_jcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    const-string v6, "\\IPC$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\\\"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lmeizu2_jcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\\IPC$"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmeizu2_jcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 235
    .end local v3    # "tcax":Lmeizu2_jcifs/smb/SmbComTreeConnectAndX;
    :cond_2
    iget v4, p0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    iput v4, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->uid:I

    .line 236
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    iput-object v4, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    iget-object v4, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    invoke-virtual {v4, p1, p2}, Lmeizu2_jcifs/smb/SmbTransport;->send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    :try_end_1
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "se":Lmeizu2_jcifs/smb/SmbException;
    :try_start_3
    instance-of v4, p1, Lmeizu2_jcifs/smb/SmbComTreeConnectAndX;

    if-eqz v4, :cond_3

    .line 241
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lmeizu2_jcifs/smb/SmbSession;->logoff(Z)V

    .line 243
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p1, Lmeizu2_jcifs/smb/ServerMessageBlock;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 244
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method sessionSetup(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    .locals 18
    .param p1, "andx"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .param p2, "andxResponse"    # Lmeizu2_jcifs/smb/ServerMessageBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu2_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual/range {p0 .. p0}, Lmeizu2_jcifs/smb/SmbSession;->transport()Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v15

    monitor-enter v15

    .line 251
    const/4 v5, 0x0

    .line 252
    .local v5, "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    const/4 v3, 0x0

    .line 255
    .local v3, "ex":Lmeizu2_jcifs/smb/SmbException;
    const/4 v14, 0x0

    :try_start_0
    new-array v13, v14, [B

    .line 256
    .local v13, "token":[B
    const/16 v12, 0xa

    .line 258
    .local v12, "state":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    if-eqz v14, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget v14, v0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v14, v0, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 260
    :cond_0
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :goto_1
    return-void

    .line 262
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v4

    .line 264
    .local v4, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v14, Lmeizu2_jcifs/smb/SmbException;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v4}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 436
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    .end local v12    # "state":I
    .end local v13    # "token":[B
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 267
    .restart local v12    # "state":I
    .restart local v13    # "token":[B
    :cond_2
    const/4 v14, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    invoke-virtual {v14}, Lmeizu2_jcifs/smb/SmbTransport;->connect()V

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    sget-object v14, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v14, Lmeizu2_jcifs/util/LogStream;->level:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v14, v0, :cond_3

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    sget-object v14, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sessionSetup: accountName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",primaryDomain="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 284
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->uid:I
    :try_end_4
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    move-object v6, v5

    .line 287
    .end local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .local v6, "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    sparse-switch v12, :sswitch_data_0

    .line 426
    :try_start_5
    new-instance v14, Lmeizu2_jcifs/smb/SmbException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected session setup state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lmeizu2_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_5
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 429
    :catch_1
    move-exception v10

    move-object v5, v6

    .line 430
    .end local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .local v10, "se":Lmeizu2_jcifs/smb/SmbException;
    :goto_2
    const/4 v14, 0x1

    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmeizu2_jcifs/smb/SmbSession;->logoff(Z)V

    .line 431
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    .line 432
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 434
    .end local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    :catchall_1
    move-exception v14

    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->notifyAll()V

    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 289
    .end local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :sswitch_0
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    sget-object v16, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/smb/SmbTransport;->hasCapability(I)Z
    :try_end_8
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v14

    if-eqz v14, :cond_6

    .line 291
    const/16 v12, 0x14

    move-object v5, v6

    .line 428
    .end local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :cond_5
    :goto_4
    if-nez v12, :cond_4

    .line 434
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 436
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 295
    .end local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :cond_6
    :try_start_a
    new-instance v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1, v14}, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;-><init>(Lmeizu2_jcifs/smb/SmbSession;Lmeizu2_jcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 296
    .local v7, "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    new-instance v8, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 302
    .local v8, "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/smb/SmbTransport;->isSignatureSetupRequired(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v14, v14, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v14, :cond_8

    sget-object v14, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_8

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    sget-object v16, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbSession(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu2_jcifs/smb/SmbSession;

    move-result-object v14

    sget-object v16, Lmeizu2_jcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lmeizu2_jcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Lmeizu2_jcifs/smb/SmbTree;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lmeizu2_jcifs/smb/SmbTree;->treeConnect(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 313
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    iput-object v14, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    :try_end_a
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 316
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    invoke-virtual {v14, v7, v8}, Lmeizu2_jcifs/smb/SmbTransport;->send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    :try_end_b
    .catch Lmeizu2_jcifs/smb/SmbAuthException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 323
    :goto_6
    :try_start_c
    iget-boolean v14, v8, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v14, :cond_9

    const-string v14, "GUEST"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    iget-object v14, v14, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    iget v14, v14, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    sget-object v16, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_9

    .line 327
    new-instance v14, Lmeizu2_jcifs/smb/SmbAuthException;

    const v16, -0x3fffff93    # -2.000026f

    move/from16 v0, v16

    invoke-direct {v14, v0}, Lmeizu2_jcifs/smb/SmbAuthException;-><init>(I)V

    throw v14

    .line 434
    .end local v7    # "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    .end local v8    # "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    goto/16 :goto_3

    .line 308
    .end local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v7    # "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    .restart local v8    # "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbTransport;->server:Lmeizu2_jcifs/smb/SmbTransport$ServerData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->getSigningKey([B)[B

    move-result-object v11

    .line 309
    .local v11, "signingKey":[B
    new-instance v14, Lmeizu2_jcifs/smb/SigningDigest;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v11, v0}, Lmeizu2_jcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v14, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    goto :goto_5

    .line 317
    .end local v11    # "signingKey":[B
    :catch_2
    move-exception v9

    .line 318
    .local v9, "sae":Lmeizu2_jcifs/smb/SmbAuthException;
    throw v9

    .line 319
    .end local v9    # "sae":Lmeizu2_jcifs/smb/SmbAuthException;
    :catch_3
    move-exception v10

    .line 320
    .restart local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    move-object v3, v10

    goto :goto_6

    .line 330
    .end local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    :cond_9
    if-eqz v3, :cond_a

    .line 331
    throw v3

    .line 333
    :cond_a
    iget v14, v8, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;->uid:I

    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    .line 335
    iget-object v14, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    if-eqz v14, :cond_b

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    iget-object v0, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v14, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 340
    :cond_b
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    .line 342
    const/4 v12, 0x0

    move-object v5, v6

    .line 344
    .end local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    goto/16 :goto_4

    .line 346
    .end local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .end local v7    # "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    .end local v8    # "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    .restart local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :sswitch_1
    if-nez v6, :cond_12

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    iget v14, v14, Lmeizu2_jcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_d

    const/4 v2, 0x1

    .line 348
    .local v2, "doSigning":Z
    :goto_7
    new-instance v5, Lmeizu2_jcifs/smb/NtlmContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v5, v14, v2}, Lmeizu2_jcifs/smb/NtlmContext;-><init>(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;Z)V
    :try_end_c
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 351
    .end local v2    # "doSigning":Z
    .end local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :goto_8
    :try_start_d
    sget-object v14, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    sget v14, Lmeizu2_jcifs/util/LogStream;->level:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v14, v0, :cond_c

    .line 352
    sget-object v14, Lmeizu2_jcifs/smb/SmbTransport;->log:Lmeizu2_jcifs/util/LogStream;

    invoke-virtual {v14, v5}, Lmeizu2_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 354
    :cond_c
    invoke-virtual {v5}, Lmeizu2_jcifs/smb/NtlmContext;->isEstablished()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 356
    invoke-virtual {v5}, Lmeizu2_jcifs/smb/NtlmContext;->getNetbiosName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 358
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I
    :try_end_d
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 360
    const/4 v12, 0x0

    .line 361
    goto/16 :goto_4

    .line 347
    .end local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 365
    .end local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :cond_e
    const/4 v14, 0x0

    :try_start_e
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v0}, Lmeizu2_jcifs/smb/NtlmContext;->initSecContext([BII)[B
    :try_end_e
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v13

    .line 376
    if-eqz v13, :cond_5

    .line 377
    :try_start_f
    new-instance v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14, v13}, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;-><init>(Lmeizu2_jcifs/smb/SmbSession;Lmeizu2_jcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 378
    .restart local v7    # "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    new-instance v8, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;

    const/4 v14, 0x0

    invoke-direct {v8, v14}, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Lmeizu2_jcifs/smb/ServerMessageBlock;)V

    .line 380
    .restart local v8    # "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/smb/SmbTransport;->isSignatureSetupRequired(Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 381
    invoke-virtual {v5}, Lmeizu2_jcifs/smb/NtlmContext;->getSigningKey()[B

    move-result-object v11

    .line 382
    .restart local v11    # "signingKey":[B
    if-eqz v11, :cond_f

    .line 383
    new-instance v14, Lmeizu2_jcifs/smb/SigningDigest;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v11, v0}, Lmeizu2_jcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v14, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 386
    .end local v11    # "signingKey":[B
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    iput v14, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->uid:I

    .line 387
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->uid:I
    :try_end_f
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 390
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    invoke-virtual {v14, v7, v8}, Lmeizu2_jcifs/smb/SmbTransport;->send(Lmeizu2_jcifs/smb/ServerMessageBlock;Lmeizu2_jcifs/smb/ServerMessageBlock;)V
    :try_end_10
    .catch Lmeizu2_jcifs/smb/SmbAuthException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 411
    :goto_9
    if-eqz v3, :cond_10

    .line 412
    :try_start_11
    throw v3
    :try_end_11
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 429
    .end local v7    # "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    .end local v8    # "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    :catch_4
    move-exception v10

    goto/16 :goto_2

    .line 366
    :catch_5
    move-exception v10

    .line 371
    .restart local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 372
    :goto_a
    const/4 v14, 0x0

    :try_start_13
    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    .line 373
    throw v10

    .line 391
    .end local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    .restart local v7    # "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    .restart local v8    # "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    :catch_6
    move-exception v9

    .line 392
    .restart local v9    # "sae":Lmeizu2_jcifs/smb/SmbAuthException;
    throw v9
    :try_end_13
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 393
    .end local v9    # "sae":Lmeizu2_jcifs/smb/SmbAuthException;
    :catch_7
    move-exception v10

    .line 394
    .restart local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    move-object v3, v10

    .line 401
    :try_start_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lmeizu2_jcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_9

    :catch_8
    move-exception v14

    goto :goto_9

    .line 414
    .end local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    :cond_10
    :try_start_15
    iget v14, v8, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;->uid:I

    move-object/from16 v0, p0

    iput v14, v0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    .line 416
    iget-object v14, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    if-eqz v14, :cond_11

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    iget-object v0, v7, Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v14, Lmeizu2_jcifs/smb/SmbTransport;->digest:Lmeizu2_jcifs/smb/SigningDigest;

    .line 421
    :cond_11
    iget-object v13, v8, Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B
    :try_end_15
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_4

    .line 371
    .end local v7    # "request":Lmeizu2_jcifs/smb/SmbComSessionSetupAndX;
    .end local v8    # "response":Lmeizu2_jcifs/smb/SmbComSessionSetupAndXResponse;
    .restart local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    :catch_9
    move-exception v14

    goto :goto_a

    .end local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .end local v10    # "se":Lmeizu2_jcifs/smb/SmbException;
    .restart local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    :cond_12
    move-object v5, v6

    .end local v6    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    .restart local v5    # "nctx":Lmeizu2_jcifs/smb/NtlmContext;
    goto/16 :goto_8

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmbSession[accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu2_jcifs/smb/SmbSession;->auth:Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu2_jcifs/smb/SmbSession;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu2_jcifs/smb/SmbSession;->connectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized transport()Lmeizu2_jcifs/smb/SmbTransport;
    .locals 5

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->address:Lmeizu2_jcifs/UniAddress;

    iget v1, p0, Lmeizu2_jcifs/smb/SmbSession;->port:I

    iget-object v2, p0, Lmeizu2_jcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    iget v3, p0, Lmeizu2_jcifs/smb/SmbSession;->localPort:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lmeizu2_jcifs/smb/SmbTransport;->getSmbTransport(Lmeizu2_jcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Lmeizu2_jcifs/smb/SmbTransport;

    move-result-object v0

    iput-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;

    .line 208
    :cond_0
    iget-object v0, p0, Lmeizu2_jcifs/smb/SmbSession;->transport:Lmeizu2_jcifs/smb/SmbTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
