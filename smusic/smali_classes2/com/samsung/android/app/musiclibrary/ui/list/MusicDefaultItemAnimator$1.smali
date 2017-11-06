.class Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "MusicDefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRemoveFinishedListenerRunner.run()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->access$102(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->access$202(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z

    .line 34
    return-void
.end method
