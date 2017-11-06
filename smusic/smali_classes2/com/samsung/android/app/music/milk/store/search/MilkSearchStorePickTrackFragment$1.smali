.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStorePickTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    iget v2, p1, Landroid/os/Message;->what:I

    .line 281
    .local v2, "what":I
    if-nez v2, :cond_0

    .line 282
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {v3}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "MaxExceed"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 284
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [J

    move-object v1, v3

    check-cast v1, [J

    .line 286
    .local v1, "selectedTotalTracks":[J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v3, "extra_checked_item_ids"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 289
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 290
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 292
    .end local v0    # "resultIntent":Landroid/content/Intent;
    .end local v1    # "selectedTotalTracks":[J
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
