.class Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/WallpaperViewController;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/WallpaperViewController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;-><init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WallpaperChangedReceiver : onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string/jumbo v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$WallpaperChangedReceiver;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-wrap0(Lcom/android/keyguard/wallpaper/WallpaperViewController;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->-set0(Lcom/android/keyguard/wallpaper/WallpaperViewController;Z)Z

    .line 352
    :cond_0
    return-void
.end method
