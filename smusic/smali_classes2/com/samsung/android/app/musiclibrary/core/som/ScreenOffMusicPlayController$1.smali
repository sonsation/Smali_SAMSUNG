.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;
.super Ljava/lang/Object;
.source "ScreenOffMusicPlayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;->onClick(Landroid/view/View;)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 62
    .local v0, "id":I
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->prev()V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "GSOM"

    const-string v3, "Prev Next"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    if-ne v0, v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->next()V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$300(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .line 70
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "GSOM"

    const-string v3, "Prev Next"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$302(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)Z

    goto :goto_0

    .line 74
    :cond_3
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->togglePlay()V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$300(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .line 81
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "GSOM"

    const-string v3, "Play Pause"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$302(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)Z

    goto :goto_0
.end method
