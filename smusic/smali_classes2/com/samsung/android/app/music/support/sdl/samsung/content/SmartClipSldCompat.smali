.class public Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat;
.super Ljava/lang/Object;
.source "SmartClipSldCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDataExtractionListener(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 17
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_0

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat$1;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/content/SmartClipSldCompat$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p0, v0}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->setDataExtractionListener(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;)Z

    .line 39
    :cond_0
    return-void
.end method
