.class Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 1

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 742
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 745
    return-void
.end method


# virtual methods
.method public awaitPendingOps()V
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 794
    return-void

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 754
    .local v0, "buffer":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->write([B)V

    .line 756
    return-void
.end method

.method public write([BII)V
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 765
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    # invokes: Lcom/android/org/conscrypt/OpenSSLSocketImpl;->checkOpen()V
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->access$000(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    .line 766
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/util/Arrays;->checkOffsetAndCount(III)V

    .line 767
    if-nez p3, :cond_0

    .line 783
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    # getter for: Lcom/android/org/conscrypt/OpenSSLSocketImpl;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->access$100(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 773
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    # getter for: Lcom/android/org/conscrypt/OpenSSLSocketImpl;->state:I
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->access$200(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 774
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 782
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 778
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 780
    :try_start_4
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    # getter for: Lcom/android/org/conscrypt/OpenSSLSocketImpl;->sslNativePointer:J
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->access$300(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    # getter for: Lcom/android/org/conscrypt/OpenSSLSocketImpl;->socket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->access$400(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    # getter for: Lcom/android/org/conscrypt/OpenSSLSocketImpl;->writeTimeoutMilliseconds:I
    invoke-static {v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->access$500(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    move-result v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V

    .line 782
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method
