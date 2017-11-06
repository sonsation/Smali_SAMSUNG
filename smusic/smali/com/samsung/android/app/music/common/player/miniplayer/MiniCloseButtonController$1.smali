.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController$1;
.super Ljava/lang/Object;
.source "MiniCloseButtonController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setActiveQueueType(I)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->access$000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->close()V

    .line 35
    return-void
.end method
