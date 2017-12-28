.class public Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;
.super Ljava/lang/Object;
.source "AppsAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;
    }
.end annotation


# instance fields
.field private mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

.field private mAdapters:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/allapps/controller/AppsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "listener"    # Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;
    .param p3, "type"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mAdapters:Lcom/android/launcher3/util/LongArrayMap;

    .line 57
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 58
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    .line 59
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;-><init>(Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    .line 60
    invoke-virtual {p0, p3}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)Lcom/android/launcher3/allapps/controller/AppsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->activate()V

    .line 62
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)Lcom/android/launcher3/allapps/controller/AppsAdapter;
    .locals 4
    .param p1, "type"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 65
    sget-object v0, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsCustomAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsAlphabetAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;)V

    goto :goto_0
.end method

.method public deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 129
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->destroy()V

    .line 105
    return-void
.end method

.method public getAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)Lcom/android/launcher3/allapps/controller/AppsAdapter;
    .locals 4
    .param p1, "type"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mAdapters:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ordinal()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .line 71
    .local v0, "adapter":Lcom/android/launcher3/allapps/controller/AppsAdapter;
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->createAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)Lcom/android/launcher3/allapps/controller/AppsAdapter;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mAdapters:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ordinal()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 75
    :cond_0
    return-object v0
.end method

.method public getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->getItemById(J)Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/controller/Normalizer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->getNormalizer()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v0

    return-object v0
.end method

.method public reloadAllItemsFromDB(Z)V
    .locals 1
    .param p1, "withFolderContents"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->reloadAllItemsFromDB(Z)V

    .line 141
    return-void
.end method

.method public requestRunDeferredRunnables()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->postDeferredRunnables()V

    .line 137
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->resume()V

    .line 97
    return-void
.end method

.method public setAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->deactivate()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->getAdapter(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)Lcom/android/launcher3/allapps/controller/AppsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->activate()V

    .line 85
    :cond_0
    return-void
.end method

.method public setStateAndUpdateLock(IZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "updateLock"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->setStateAndUpdateLock(IZ)V

    .line 89
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mStopped:Z

    .line 93
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mStopped:Z

    .line 101
    return-void
.end method

.method public updateDirtyItems()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateDirtyItems()V

    .line 133
    return-void
.end method

.method public updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "value"    # Landroid/content/ContentValues;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 119
    return-void
.end method

.method public updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider;->mActiveAdapter:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 124
    return-void
.end method
