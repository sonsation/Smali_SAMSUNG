.class Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;
.super Ljava/lang/Object;
.source "TrackBaseAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->dispatchPlayAllClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    .prologue
    .line 279
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 282
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;"
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 287
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;"
    return-void
.end method
