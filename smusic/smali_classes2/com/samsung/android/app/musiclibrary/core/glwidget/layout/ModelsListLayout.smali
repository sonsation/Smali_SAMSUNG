.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.source "ModelsListLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ModelsListLayout"


# instance fields
.field private mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field protected final mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPendingSelectedAlbumSizeChangedRequest:Z

.field private mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 3
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 37
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    .line 133
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    .line 145
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    .line 38
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract animateToChild(I)V
.end method

.method protected doRealign()V
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->doRealign()V

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->fireOnSelectedAlbumSizeChanged()V

    .line 72
    :cond_0
    return-void
.end method

.method protected doReload()V
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll()V

    .line 167
    :cond_0
    return-void
.end method

.method protected fireOnSelectedAlbumSizeChanged()V
    .locals 8

    .prologue
    .line 170
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v1

    .line 171
    .local v1, "selectedModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    if-nez v1, :cond_1

    .line 172
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mPendingSelectedAlbumSizeChangedRequest:Z

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 177
    .local v2, "start":J
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)Z

    move-result v0

    .line 178
    .local v0, "applied":Z
    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 179
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 180
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)Z

    move-result v0

    goto :goto_1

    .line 182
    :cond_2
    if-nez v0, :cond_0

    .line 183
    const-string v4, "SMUSIC-ModelsListLayout"

    const-string/jumbo v5, "unable to fireOnSelectedAlbumSizeChanged"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedAdapterIndex()I

    move-result v0

    return v0
.end method

.method protected abstract obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation
.end method

.method protected abstract recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            ")V"
        }
    .end annotation
.end method

.method public reloadItem(I)V
    .locals 1
    .param p1, "adapterIndex"    # I

    .prologue
    .line 116
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    .line 119
    :cond_0
    return-void
.end method

.method protected abstract reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            "IZ)V"
        }
    .end annotation
.end method

.method public setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 5
    .param p1, "adapter"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .param p2, "adapterPosition"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v4, :cond_2

    move v1, v2

    .line 48
    .local v1, "updateAdapter":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->stopAnimation()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v4

    if-eq v4, p2, :cond_3

    move v0, v2

    .line 52
    .local v0, "changed":Z
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    .line 57
    .end local v0    # "changed":Z
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doRealign()V

    .line 59
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doReload()V

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->fireOnSelectedAlbumSizeChanged()V

    .line 63
    return-void

    .end local v1    # "updateAdapter":Z
    :cond_2
    move v1, v3

    .line 46
    goto :goto_0

    .restart local v1    # "updateAdapter":Z
    :cond_3
    move v0, v3

    .line 51
    goto :goto_1
.end method

.method public setAdapterWrap(Z)V
    .locals 1
    .param p1, "wrap"    # Z

    .prologue
    .line 129
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setAdapterWrap(Z)V

    .line 130
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->setAdapterWrap(Z)V

    .line 131
    return-void
.end method

.method protected setListParams(II)V
    .locals 2
    .param p1, "listSize"    # I
    .param p2, "selectedModelIndex"    # I

    .prologue
    .line 122
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setDimensions(III)V

    .line 125
    :cond_0
    return-void
.end method

.method public setSelection(IZ)V
    .locals 4
    .param p1, "adapterIndex"    # I
    .param p2, "animation"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout<TListModel;>;"
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->hasAdapter()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAligned:Z

    if-nez v3, :cond_2

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mAligned:Z

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->getSelection()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 86
    if-eqz p2, :cond_3

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->animateToChild(I)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->getSelection()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 90
    .local v0, "distance":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 91
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->loadedAdapterIndex(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->getSelection()I

    move-result v3

    if-ge v3, p1, :cond_4

    const/4 v2, 0x1

    .line 93
    .local v2, "next":Z
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 94
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->updateSelectedAdapterIndex(Z)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doRealign()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->fireOnSelectedAlbumSizeChanged()V

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    .end local v2    # "next":Z
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsListLayout;->doRealign()V

    goto :goto_0
.end method
