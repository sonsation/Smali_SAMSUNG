.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$10;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getTopChartTracks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$10;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 765
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 770
    packed-switch p3, :pswitch_data_0

    .line 778
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 772
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    instance-of v0, p4, Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$10;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$400(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x100050

    const/4 v2, 0x0

    check-cast p4, Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    .line 774
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/SimpleTrackList;->getTrackList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 773
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
