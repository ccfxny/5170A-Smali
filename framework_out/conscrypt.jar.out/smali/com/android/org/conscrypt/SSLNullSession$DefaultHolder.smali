.class Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;
.super Ljava/lang/Object;
.source "SSLNullSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLNullSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHolder"
.end annotation


# static fields
.field public static final NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/android/org/conscrypt/SSLNullSession;

    invoke-direct {v0}, Lcom/android/org/conscrypt/SSLNullSession;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/SSLNullSession$DefaultHolder;->NULL_SESSION:Lcom/android/org/conscrypt/SSLNullSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
