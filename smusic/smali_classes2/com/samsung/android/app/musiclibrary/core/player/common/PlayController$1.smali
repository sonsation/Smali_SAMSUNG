.class Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;
.super Ljava/lang/Object;
.source "PlayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->togglePlay()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$100(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 94
    :cond_0
    return-void
.end method
