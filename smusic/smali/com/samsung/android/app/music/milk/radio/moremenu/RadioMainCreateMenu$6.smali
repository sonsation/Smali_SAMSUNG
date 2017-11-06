.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$6;
.super Ljava/lang/Object;
.source "RadioMainCreateMenu.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$6;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$6;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$502(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;Z)Z

    .line 271
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu$6;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainCreateMenu;)Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->showProgress(Z)V

    .line 276
    return-void
.end method
