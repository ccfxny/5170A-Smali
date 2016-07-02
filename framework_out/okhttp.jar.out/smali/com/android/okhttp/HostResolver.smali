.class public interface abstract Lcom/android/okhttp/HostResolver;
.super Ljava/lang/Object;
.source "HostResolver.java"


# static fields
.field public static final DEFAULT:Lcom/android/okhttp/HostResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/okhttp/HostResolver$1;

    invoke-direct {v0}, Lcom/android/okhttp/HostResolver$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/HostResolver;->DEFAULT:Lcom/android/okhttp/HostResolver;

    return-void
.end method


# virtual methods
.method public abstract getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
