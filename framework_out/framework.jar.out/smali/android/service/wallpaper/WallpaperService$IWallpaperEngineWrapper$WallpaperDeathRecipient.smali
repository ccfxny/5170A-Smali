.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper$WallpaperDeathRecipient;
.super Ljava/lang/Object;
.source "WallpaperService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper$WallpaperDeathRecipient;->this$1:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper$WallpaperDeathRecipient;->this$1:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->destroy()V

    .line 1135
    return-void
.end method
