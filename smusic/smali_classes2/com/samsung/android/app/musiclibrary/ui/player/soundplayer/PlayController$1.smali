.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;
.super Ljava/lang/Object;
.source "PlayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->access$000(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->togglePlay()V

    .line 30
    return-void
.end method
