.class public Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
.super Ljava/lang/Object;
.source "CertBlacklist.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final pubkeyBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end field

.field public final serialBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v4, "ANDROID_DATA"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "androidData":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/misc/keychain/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "blacklistRoot":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pubkey_blacklist.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "defaultPubkeyBlacklistPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "serial_blacklist.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "defaultSerialBlacklistPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    .line 50
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pubkeyBlacklistPath"    # Ljava/lang/String;
    .param p2, "serialBlacklistPath"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    .line 56
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    .line 57
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    .line 115
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 118
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static isHex(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse hex value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPubkeyHash(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pubkey hash length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isHex(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static readBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not read blacklist"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 80
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 96
    .local v3, "f":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .local v4, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 98
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 100
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 101
    .local v1, "byteCount":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 107
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 104
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "f":Ljava/io/RandomAccessFile;
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :goto_1
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/util/HashSet;

    const/16 v6, 0x9

    new-array v6, v6, [[B

    const/4 v7, 0x0

    const-string v8, "410f36363258f30b347d12ce4863e433437806a8"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "e8f91200c65cee16e039b9f883841661635f81c5"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "783333c9687df63377efceddd82efa9101913e8e"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v1, "bl":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "pubkeyBlacklist":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 197
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 198
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPubkeyHash(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tried to blacklist invalid pubkey "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static final readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    .line 126
    new-instance v1, Ljava/util/HashSet;

    const/16 v7, 0xd

    new-array v7, v7, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "077a59bcd53459601ca6907267a6dd1c"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "047ecbe9fca55f7bd09eae36e10cae1e"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "d8f35f4eb7872b2dab0692e315382fb0"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "b0b7133ed096f9b56fae91c874bd3ac0"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "9239d5348f40d1695a745470e1f23f43"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "e9028b9578e415dc1a710a2b88154447"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "d7558fdaf5f1105bb213282b707729a3"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x7

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "f5c86af36162f13a64f54f6dc9587c06"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0x8

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "392a434f0e07df1f8aa305de34e0c229"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0x9

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "3e75ced46b693021218830ae86a82a71"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0xa

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "864"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0xb

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "827"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0xc

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "31da7"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v1, "bl":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "serialBlacklist":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 147
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 149
    .local v6, "value":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/math/BigInteger;

    const/16 v8, 0x10

    invoke-direct {v7, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tried to blacklist invalid serial number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .locals 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 212
    .local v2, "encoded":[B
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 213
    .local v1, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    array-length v6, v2

    invoke-interface {v1, v2, v5, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 214
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v4, v6, [B

    .line 215
    .local v4, "out":[B
    invoke-interface {v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 216
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 217
    .local v0, "blacklisted":[B
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const/4 v5, 0x1

    .line 221
    .end local v0    # "blacklisted":[B
    :cond_1
    return v5
.end method

.method public isSerialNumberBlackListed(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
