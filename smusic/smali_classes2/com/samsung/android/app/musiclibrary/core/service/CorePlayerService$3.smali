.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFadeFinished(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 851
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;)V

    .line 852
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V

    .line 853
    return-void
.end method
