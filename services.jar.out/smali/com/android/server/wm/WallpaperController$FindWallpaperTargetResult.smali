.class final Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindWallpaperTargetResult"
.end annotation


# instance fields
.field topWallpaper:Lcom/android/server/wm/WindowState;

.field topWallpaperIndex:I

.field wallpaperTarget:Lcom/android/server/wm/WindowState;

.field wallpaperTargetIndex:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    .line 924
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 925
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 926
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 922
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 939
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    .line 940
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 941
    iput v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 942
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 938
    return-void
.end method

.method setTopWallpaper(Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "index"    # I

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 930
    iput p2, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    .line 928
    return-void
.end method

.method setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "index"    # I

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 935
    iput p2, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 933
    return-void
.end method
