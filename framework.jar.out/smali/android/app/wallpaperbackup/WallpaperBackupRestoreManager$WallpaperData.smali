.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field rotation:I

.field top:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    .line 375
    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    .line 376
    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    .line 377
    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    .line 378
    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    .line 373
    return-void
.end method
