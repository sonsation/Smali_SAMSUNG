.class Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask$1;
.super Ljava/lang/Object;
.source "MainPlayTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 37
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 41
    return-void
.end method
