.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1$1;
.super Ljava/lang/Object;
.source "MyStationsAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1$1;->this$1:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 75
    return-void
.end method
