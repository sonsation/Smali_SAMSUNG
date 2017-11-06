.class Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;
.super Ljava/lang/Object;
.source "AbsMilkActionModeSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mMetadataChanged:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->access$000(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[mPostDelayed] Play fail"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->access$000(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;->playFail(Z)V

    .line 96
    :cond_0
    return-void
.end method
