.class Lcom/android/server/SystemServer$Injector;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startFlymeDeviceControlService(Lcom/android/server/SystemServer;)V
    .locals 2
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1715
    const-string v0, "SystemServer"

    const-string v1, "FlymeDeviceControlService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    new-instance v0, Lcom/android/server/DeviceControlService;

    invoke-direct {v0}, Lcom/android/server/DeviceControlService;-><init>()V

    # setter for: Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;
    invoke-static {v0}, Lcom/android/server/SystemServer;->access$302(Lcom/android/server/DeviceControlService;)Lcom/android/server/DeviceControlService;

    .line 1717
    const-string v0, "device_control"

    # getter for: Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;
    invoke-static {}, Lcom/android/server/SystemServer;->access$300()Lcom/android/server/DeviceControlService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1718
    # getter for: Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;
    invoke-static {}, Lcom/android/server/SystemServer;->access$300()Lcom/android/server/DeviceControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceControlService;->calibFactoryValueWhenBootSystem()V

    .line 1720
    return-void
.end method

.method static startFlymeDeviceStateService(Lcom/android/server/SystemServer;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1790
    const-string v2, "SystemServer"

    const-string v3, "DeviceStateService "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    # getter for: Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/SystemServer;->access$400(Lcom/android/server/SystemServer;)Landroid/content/Context;

    move-result-object v0

    .line 1792
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/DeviceStateService;

    # getter for: Lcom/android/server/SystemServer;->mDeviceControlService:Lcom/android/server/DeviceControlService;
    invoke-static {}, Lcom/android/server/SystemServer;->access$300()Lcom/android/server/DeviceControlService;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/DeviceStateService;-><init>(Landroid/content/Context;Lcom/android/server/DeviceControlService;)V

    .line 1793
    .local v1, "deviceService":Lcom/android/server/DeviceStateService;
    const-string v2, "device_states"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1795
    return-void
.end method

.method static startFlymeHipsService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1736
    const-string v2, "SystemServer"

    const-string v3, "FlymeHipsService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1739
    .local v0, "context":Landroid/content/Context;
    const-string v2, "hips_service"

    new-instance v3, Lcom/android/server/hips/server/FlymeHipsService;

    invoke-direct {v3, v0}, Lcom/android/server/hips/server/FlymeHipsService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1741
    :catch_0
    move-exception v1

    .line 1742
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SystemServer"

    const-string v3, "BOOT FAILURE: FlymeHipsService"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static startFlymePackageManagerService(Lcom/android/server/SystemServer;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .prologue
    .line 1798
    const-string v2, "SystemServer"

    const-string v3, "FlymePackageManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1800
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->startFlymePackageManagerService(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;)Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v1

    .line 1801
    .local v1, "service":Lcom/android/server/pm/FlymePackageManagerService;
    const-string v2, "flyme_packagemanager"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1802
    return-void
.end method

.method static startFlymeService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 8
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v1

    .line 1749
    .local v1, "context":Landroid/content/Context;
    const-string v5, "SystemServer"

    const-string v6, "MoveWindowService"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->startMoveWindowService(Landroid/content/Context;)Lcom/android/server/wm/MoveWindowService;

    move-result-object v4

    .line 1751
    .local v4, "mws":Lcom/android/server/wm/MoveWindowService;
    const-string v5, "move_window"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1754
    const-string v5, "SystemServer"

    const-string v6, "AccessControlService"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    new-instance v0, Lcom/meizu/server/AccessControlService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerPolicy()Landroid/view/WindowManagerPolicy;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    .line 1757
    .local v0, "acs":Lcom/meizu/server/AccessControlService;
    const-string v5, "access_control"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1758
    if-eqz v0, :cond_0

    .line 1760
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/server/AccessControlService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->setPackageManager(Lcom/android/server/pm/PackageManagerService;)V

    .line 1768
    return-void

    .line 1761
    :catch_0
    move-exception v2

    .line 1762
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/String;

    const-string v5, "making AccessControlService Service ready"

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1763
    .local v3, "msg":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "***********************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BOOT FAILURE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static startFlymeSplitModeService(Lcom/android/server/SystemServer;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1825
    const-string v2, "SystemServer"

    const-string v3, "startFlymeSplitModeService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1827
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->startFlymeSplitModeService(Landroid/content/Context;)Lcom/android/server/am/FlymeSplitModeService;

    move-result-object v1

    .line 1828
    .local v1, "flymeSplitModeService":Lcom/android/server/am/FlymeSplitModeService;
    const-string v2, "flyme_splitmode"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1829
    return-void
.end method

.method static startFlymeStatusBarManagerService(Z)V
    .locals 4
    .param p0, "disableSystemUI"    # Z

    .prologue
    .line 1834
    if-nez p0, :cond_0

    .line 1835
    const/4 v1, 0x0

    .line 1837
    .local v1, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_0
    new-instance v2, Lmeizu/statusbar/FlymeStatusBarManagerService;

    invoke-direct {v2}, Lmeizu/statusbar/FlymeStatusBarManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .local v2, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_1
    const-string v3, "flyme_statusbar"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1843
    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :cond_0
    :goto_0
    return-void

    .line 1839
    .restart local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "FlymeStatusBarManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1839
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    goto :goto_1
.end method

.method static startFlymeThemeService(Lcom/android/server/SystemServer;)V
    .locals 7
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1772
    const-string v4, "SystemServer"

    const-string v5, "startFlymeThemeService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1774
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {v2, v0}, Landroid/content/res/flymetheme/FlymeThemeService;-><init>(Landroid/content/Context;)V

    .line 1775
    .local v2, "flymeThemeService":Landroid/content/res/flymetheme/FlymeThemeService;
    const-string v4, "flyme_theme_service"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1776
    if-eqz v2, :cond_0

    .line 1778
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1779
    :catch_0
    move-exception v1

    .line 1780
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/String;

    const-string v4, "making flymeThemeService Service ready"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1781
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "SystemServer"

    const-string v5, "***********************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT FAILURE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static startFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 1807
    const-string v2, "SystemServer"

    const-string v3, "FlymeWallpaperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1809
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->startFlymeWallpaperService(Landroid/content/Context;)Lcom/android/server/wallpaper/FlymeWallpaperService;

    move-result-object v1

    .line 1810
    .local v1, "fws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    const-string v2, "flyme_wallpaper"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1811
    return-void
.end method

.method static startGestureManagerService(Lcom/android/server/SystemServer;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1705
    const-string v2, "SystemServer"

    const-string v3, "GestureManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1707
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/GestureManagerService;

    invoke-direct {v1, v0}, Lcom/android/server/GestureManagerService;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v1, "gesture":Lcom/android/server/GestureManagerService;
    const-string v2, "gesture_manager"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1709
    invoke-virtual {v1}, Lcom/android/server/GestureManagerService;->systemReady()V

    .line 1710
    return-void
.end method

.method static startMtkThermalSwitchManager(Lcom/android/server/SystemServer;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1815
    const-string v2, "SystemServer"

    const-string v3, "startMtkThermalSwitchManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1817
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-direct {v1, v0}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;-><init>(Landroid/content/Context;)V

    .line 1818
    .local v1, "thermalMgr":Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1819
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setThermalManager(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    .line 1821
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->systemReady()V

    .line 1822
    return-void
.end method

.method static startPermissionControlService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1724
    const-string v2, "SystemServer"

    const-string v3, "FlymePermissionService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->getSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1727
    .local v0, "context":Landroid/content/Context;
    const-string v2, "flyme_permission"

    new-instance v3, Lcom/meizu/server/FlymePermissionService;

    invoke-direct {v3, v0}, Lcom/meizu/server/FlymePermissionService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1729
    :catch_0
    move-exception v1

    .line 1730
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SystemServer"

    const-string v3, "BOOT FAILURE "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
