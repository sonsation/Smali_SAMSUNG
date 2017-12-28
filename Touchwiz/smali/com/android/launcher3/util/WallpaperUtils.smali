.class public final Lcom/android/launcher3/util/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.WallpaperUtils"

.field public static final WALLPAPER_HEIGHT_KEY:Ljava/lang/String; = "wallpaper.height"

.field public static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field public static final WALLPAPER_WIDTH_KEY:Ljava/lang/String; = "wallpaper.width"

.field private static mWallpaperManager:Landroid/app/WallpaperManager;

.field private static refClassName:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultWallpaperSize:Landroid/graphics/Point;

.field private static wpDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 98
    const-class v8, Lcom/android/launcher3/util/WallpaperUtils;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/android/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    if-nez v7, :cond_0

    .line 99
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v5, "minDims":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 101
    .local v3, "maxDims":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 103
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 104
    .local v2, "maxDim":I
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 106
    .local v4, "minDim":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v6, "realSize":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 108
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 109
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 114
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x2d0

    if-lt v7, v9, :cond_1

    .line 115
    int-to-float v7, v2

    invoke-static {v2, v4}, Lcom/android/launcher3/util/WallpaperUtils;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v9

    mul-float/2addr v7, v9

    float-to-int v1, v7

    .line 116
    .local v1, "defaultWidth":I
    move v0, v2

    .line 121
    .local v0, "defaultHeight":I
    :goto_0
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    sput-object v7, Lcom/android/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;

    .line 123
    .end local v0    # "defaultHeight":I
    .end local v1    # "defaultWidth":I
    .end local v2    # "maxDim":I
    .end local v3    # "maxDims":Landroid/graphics/Point;
    .end local v4    # "minDim":I
    .end local v5    # "minDims":Landroid/graphics/Point;
    .end local v6    # "realSize":Landroid/graphics/Point;
    :cond_0
    sget-object v7, Lcom/android/launcher3/util/WallpaperUtils;->sDefaultWallpaperSize:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v7

    .line 118
    .restart local v2    # "maxDim":I
    .restart local v3    # "maxDims":Landroid/graphics/Point;
    .restart local v4    # "minDim":I
    .restart local v5    # "minDims":Landroid/graphics/Point;
    .restart local v6    # "realSize":Landroid/graphics/Point;
    :cond_1
    int-to-float v7, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    :try_start_1
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 119
    .restart local v1    # "defaultWidth":I
    move v0, v2

    .restart local v0    # "defaultHeight":I
    goto :goto_0

    .line 98
    .end local v0    # "defaultHeight":I
    .end local v1    # "defaultWidth":I
    .end local v2    # "maxDim":I
    .end local v3    # "maxDims":Landroid/graphics/Point;
    .end local v4    # "minDim":I
    .end local v5    # "minDims":Landroid/graphics/Point;
    .end local v6    # "realSize":Landroid/graphics/Point;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static declared-synchronized getWallpaperDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v1, Lcom/android/launcher3/util/WallpaperUtils;

    monitor-enter v1

    :try_start_0
    const-string v0, "Launcher.WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperDrawable is called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Lcom/android/launcher3/util/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    .line 136
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 139
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/WallpaperUtils;->wpDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    sget-object v0, Lcom/android/launcher3/util/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/launcher3/util/WallpaperUtils;->wpDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseWallpaperDrawable(Ljava/lang/String;)Z
    .locals 7
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 146
    const-class v3, Lcom/android/launcher3/util/WallpaperUtils;

    monitor-enter v3

    :try_start_0
    const-string v4, "Launcher.WallpaperUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWallpaperDrawable is called by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", refLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/util/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v4, Lcom/android/launcher3/util/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    sget-object v4, Lcom/android/launcher3/util/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    sget-object v4, Lcom/android/launcher3/util/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 152
    sget-object v4, Lcom/android/launcher3/util/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 154
    sget-object v1, Lcom/android/launcher3/util/WallpaperUtils;->wpDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 155
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 157
    const-string v4, "Launcher.WallpaperUtils"

    const-string v5, "check bitmap.recycle() on releaseWallpaperDrawable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    sget-object v4, Lcom/android/launcher3/util/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_0
    monitor-exit v3

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Z)V
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "wallpaperManager"    # Landroid/app/WallpaperManager;
    .param p4, "fallBackToDefaults"    # Z

    .prologue
    const/4 v4, -0x1

    .line 45
    invoke-static {p0, p2}, Lcom/android/launcher3/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    .line 48
    .local v0, "defaultWallpaperSize":Landroid/graphics/Point;
    const-string v3, "wallpaper.width"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "savedWidth":I
    const-string v3, "wallpaper.height"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "savedHeight":I
    if-eq v2, v4, :cond_0

    if-ne v1, v4, :cond_3

    .line 52
    :cond_0
    if-nez p4, :cond_2

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 56
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 60
    :cond_3
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 61
    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 62
    :cond_4
    invoke-virtual {p3, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_0
.end method

.method public static wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 71
    int-to-float v7, p0

    int-to-float v8, p1

    div-float v4, v7, v8

    .line 78
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 79
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 80
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 81
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 88
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 91
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 92
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method
