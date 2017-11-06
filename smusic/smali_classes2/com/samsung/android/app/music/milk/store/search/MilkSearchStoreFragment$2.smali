.class Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;
.super Ljava/lang/Object;
.source "MilkSearchStoreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getPresetCallback()Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillSearchPrewrittenText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->isLocalMusicMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->access$202(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->access$400(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->access$302(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    :cond_0
    const-string v0, "MilkSearchStoreFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillSearchPrewrittenText : Prewritten("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") contentType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .line 520
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->access$300(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void

    .line 512
    :cond_1
    const-string v0, "MilkSearchStoreFragment"

    const-string v1, "fillSearchPrewrittenText : Local Music Mode !!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasPrewritten()Z
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "prewritten":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .line 504
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreSetLoadFinished()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public searchStoreContentsFromPreset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method
