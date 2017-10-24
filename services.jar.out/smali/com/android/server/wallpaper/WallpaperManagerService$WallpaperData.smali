.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field allowBackup:Z

.field animatedPkgName:Ljava/lang/String;

.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field callingPackage:Ljava/lang/String;

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field cropFile:Ljava/io/File;

.field final cropHint:Landroid/graphics/Rect;

.field height:I

.field imageWallpaperPending:Z

.field kwpType:I

.field lastDiedTime:J

.field length:I

.field motionPkgName:Ljava/lang/String;

.field multiCropFile:[Ljava/io/File;

.field multiWallpaperFile:[Ljava/io/File;

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field preloadKWPColorCode:Ljava/lang/String;

.field setComplete:Landroid/app/IWallpaperManagerCallback;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperId:I

.field wallpaperObserver:Landroid/os/FileObserver;

.field wallpaperUpdating:Z

.field whichPending:I

.field width:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "wallpaperDir"    # Ljava/io/File;
    .param p3, "inputFileName"    # Ljava/lang/String;
    .param p4, "cropFileName"    # Ljava/lang/String;
    .param p5, "length"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    .line 708
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    .line 735
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 765
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    .line 770
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    .line 775
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    .line 777
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    .line 788
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 787
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 790
    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 791
    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 796
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 798
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    .line 801
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 802
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-le p5, v0, :cond_0

    .line 803
    invoke-virtual {p0, p2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setMultiWallpaperData(Ljava/io/File;I)V

    .line 800
    :goto_0
    return-void

    .line 805
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 843
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 844
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 845
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    .line 846
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :cond_0
    return-object v1

    .line 849
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 851
    const/4 v2, 0x0

    return-object v2
.end method

.method cropExists()Z
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method isSameWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 3
    .param p1, "compare"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v2, 0x1

    .line 857
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 859
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-get0()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    .line 861
    :cond_0
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Same Image Wallpaper!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return v2

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Same Live wallpaper!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return v2

    .line 871
    :cond_2
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Different wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "wallpaperDir"    # Ljava/io/File;
    .param p2, "inputFileName"    # Ljava/lang/String;
    .param p3, "cropFileName"    # Ljava/lang/String;

    .prologue
    .line 810
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 811
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    .line 813
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 814
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 809
    return-void
.end method

.method setMultiWallpaperData(Ljava/io/File;I)V
    .locals 6
    .param p1, "wallpaperDir"    # Ljava/io/File;
    .param p2, "length"    # I

    .prologue
    .line 819
    const-string/jumbo v3, "wallpaper_lock_orig"

    invoke-static {p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap6(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, "wallpaperList":[Ljava/lang/String;
    const-string/jumbo v3, "wallpaper_lock"

    invoke-static {p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap6(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "cropWallpaperList":[Ljava/lang/String;
    new-array v3, p2, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    .line 823
    new-array v3, p2, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    .line 825
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    .line 826
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    .line 828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 829
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v1

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 830
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    :cond_0
    return-void
.end method
