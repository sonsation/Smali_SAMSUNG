.class final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;
.super Ljava/lang/Object;
.source "BaseScreenOffMusicService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceAnimationListener"
.end annotation


# instance fields
.field private final mService:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0
    .param p1, "service"    # Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mService:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    .line 598
    return-void
.end method


# virtual methods
.method public onScreenOffAnimationEnd(Z)V
    .locals 3
    .param p1, "isTimeOut"    # Z

    .prologue
    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mService:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$600(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-void

    .line 629
    :cond_0
    if-eqz p1, :cond_1

    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mService:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GSOM"

    const-string v2, "Time out"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mService:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$800(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    .line 635
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mService:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$602(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Z)Z

    goto :goto_0
.end method

.method public onScreenOffAnimationStart()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 6

    .prologue
    .line 609
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;->mService:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$700(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 611
    const-string v1, "SMUSIC-SOM"

    const-string v2, "ScreenOffMusicService onScreenOnAnimationEnd(), the screen off music view is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    const-string v1, "SMUSIC-SOM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenOffMusicService onScreenOnAnimationEnd() - view\'s visibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", drawing time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attached ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScreenOnAnimationStart()V
    .locals 2

    .prologue
    .line 602
    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onScreenOnAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method
