.class public Lcom/android/systemui/infinity/InfinityWallpaperGold;
.super Lcom/android/systemui/infinity/GalaxyWallpaperService;
.source "InfinityWallpaperGold.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWallpaperTheme()Lcom/android/systemui/infinity/theme/ThemeInterface;
    .locals 1

    const-string/jumbo v0, "gold"

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/InfinityWallpaperGold;->setEdgeLightningColor(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/infinity/theme/ThemeFactory;->getTheme(Landroid/content/Context;I)Lcom/android/systemui/infinity/theme/ThemeInterface;

    move-result-object v0

    return-object v0
.end method
