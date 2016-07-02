.class public Landroid/provider/MzCallLog;
.super Landroid/provider/CallLog;
.source "MzCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MzCallLog$MzCalls;,
        Landroid/provider/MzCallLog$MzSipCalls;,
        Landroid/provider/MzCallLog$MzCallsSpam;,
        Landroid/provider/MzCallLog$MzCallsSync;
    }
.end annotation


# static fields
.field public static final SEARCH_SUGGESTION_CLICKED:Ljava/lang/String; = "android.provider.Calls.SEARCH_SUGGESTION_CLICKED"

.field private static final TAG:Ljava/lang/String; = "MzCallLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/provider/CallLog;-><init>()V

    .line 165
    return-void
.end method
