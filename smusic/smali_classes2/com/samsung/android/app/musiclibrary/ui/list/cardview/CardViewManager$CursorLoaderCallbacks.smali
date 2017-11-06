.class Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;
.super Ljava/lang/Object;
.source "CardViewManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->onCreateLoader()Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 11
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 98
    const-string v5, "UiList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onLoadFinished()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$202(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 101
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->updateCardView(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;Landroid/database/Cursor;)V

    .line 103
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 104
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->getCardViewItemCount()I

    move-result v1

    .line 105
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 106
    move v4, v3

    .line 107
    .local v4, "position":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    .line 108
    .local v2, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 109
    const-string v5, "UiList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call updateCardViewItem | position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | columnCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object v5

    invoke-interface {v5, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->playIcon:Landroid/view/View;

    sget v6, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v7, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 116
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->playIcon:Landroid/view/View;

    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    iget-object v8, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->playIcon:Landroid/view/View;

    .line 117
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v8

    .line 116
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 118
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 119
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->thumbnailClickArea:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->thumbnailClickArea:Landroid/view/View;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_1
    :goto_1
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->playIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 147
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->playIcon:Landroid/view/View;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$3;

    invoke-direct {v6, p0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 129
    .restart local v0    # "contentDescription":Ljava/lang/String;
    :cond_3
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->noItemView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->noItemView:Landroid/view/View;

    .line 130
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->noItemThumbnailClickArea:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->noItemThumbnailClickArea:Landroid/view/View;

    .line 133
    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->noItemThumbnailClickArea:Landroid/view/View;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;

    invoke-direct {v6, p0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;ILcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;)V

    .line 135
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 158
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object v5

    invoke-interface {v5, v2, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->updateCardViewItem(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)Ljava/lang/String;

    goto :goto_2

    .line 161
    .end local v2    # "holder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    .end local v4    # "position":I
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$600(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)I

    move-result v5

    if-eq v5, v9, :cond_6

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$700(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 162
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$600(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->onPlayIconClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V

    .line 163
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$700(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->onPlayStarted(Z)V

    .line 165
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$602(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;I)I

    .line 166
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-static {v5, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$702(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    .line 169
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onLoaderReset()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->access$202(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 175
    return-void
.end method
