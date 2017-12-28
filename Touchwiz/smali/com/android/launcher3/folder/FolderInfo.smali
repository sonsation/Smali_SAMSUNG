.class public Lcom/android/launcher3/folder/FolderInfo;
.super Lcom/android/launcher3/common/base/item/ItemInfo;
.source "FolderInfo.java"


# static fields
.field public static final FLAG_ITEMS_SORTED:I = 0x1

.field public static final FLAG_MULTI_PAGE_ANIMATION:I = 0x4

.field public static final FLAG_WORK_FOLDER:I = 0x2

.field private static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_FLAGS:I

.field private static mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;


# instance fields
.field public color:I

.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/FolderEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphabeticalOrder:Z

.field private mCurrentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocked:Z

.field private mLockedFolderOpenedOnce:Z

.field public opened:Z

.field public options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/launcher3/folder/FolderInfo$1;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderInfo$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/FolderInfo;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 86
    sget-object v0, Lcom/android/launcher3/folder/FolderInfo;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    .line 102
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 103
    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 122
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public add(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemsAdded(Ljava/util/ArrayList;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addListener(Lcom/android/launcher3/folder/FolderEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/folder/FolderEventListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void
.end method

.method public getBoundView(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "targetViewClass"    # Ljava/lang/Class;

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "boundView":Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 246
    const/4 v1, 0x0

    .end local v0    # "boundView":Ljava/lang/Object;
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasOption(I)Z
    .locals 1
    .param p1, "optionFlag"    # I

    .prologue
    .line 263
    iget v0, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabeticalOrder()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    return v0
.end method

.method public isLockedFolderOpenedOnce()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    return v0
.end method

.method public makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 5

    .prologue
    .line 284
    new-instance v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 285
    .local v1, "info":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v1, p0}, Lcom/android/launcher3/folder/FolderInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 286
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iput-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 287
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 288
    iget v2, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    iput v2, v1, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 289
    iget v2, p0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    iput v2, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 290
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    iput-object v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    .line 291
    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    iput-boolean v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    .line 292
    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    iput-boolean v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    .line 293
    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    iput-boolean v2, v1, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 297
    .local v0, "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v0, :cond_0

    .line 298
    iget-object v3, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v0    # "icon":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->sortContents()V

    .line 304
    return-object v1
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 198
    const-string v1, "title"

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "options"

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v0, "color"

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    return-void

    .line 198
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public remove(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public remove(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onItemsRemoved(Ljava/util/ArrayList;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/launcher3/folder/FolderEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/folder/FolderEventListener;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    return-void
.end method

.method public setAlphabeticalOrder(ZZLandroid/content/Context;)V
    .locals 3
    .param p1, "alphabeticalOrder"    # Z
    .param p2, "forced"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_5

    .line 172
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderInfo;->mAlphabeticalOrder:Z

    .line 173
    if-eqz p1, :cond_4

    .line 174
    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    .line 175
    new-instance v1, Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-direct {v1, p3}, Lcom/android/launcher3/common/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    .line 177
    :cond_2
    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    if-eqz v1, :cond_3

    .line 178
    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->mAppNameComparator:Lcom/android/launcher3/common/model/AppNameComparator;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    .line 183
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 186
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onOrderingChanged(Z)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "i":I
    :cond_4
    sget-object v1, Lcom/android/launcher3/folder/FolderInfo;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    goto :goto_0

    .line 189
    :cond_5
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderInfo;->mLocked:Z

    .line 233
    return-void
.end method

.method public setLockedFolderOpenedOnce(Z)V
    .locals 3
    .param p1, "opened"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderInfo;->mLockedFolderOpenedOnce:Z

    .line 218
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderEventListener;

    .line 219
    .local v0, "listener":Lcom/android/launcher3/folder/FolderEventListener;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/launcher3/folder/FolderEventListener;->onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 221
    .end local v0    # "listener":Lcom/android/launcher3/folder/FolderEventListener;
    :cond_0
    return-void
.end method

.method public setOption(IZLandroid/content/Context;)V
    .locals 3
    .param p1, "option"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    iget v0, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 273
    .local v0, "oldOptions":I
    if-eqz p2, :cond_1

    .line 274
    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 278
    :goto_0
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    if-eq v0, v1, :cond_0

    .line 279
    check-cast p3, Lcom/android/launcher3/Launcher;

    .end local p3    # "context":Landroid/content/Context;
    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/home/HomeController;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 281
    :cond_0
    return-void

    .line 276
    .restart local p3    # "context":Landroid/content/Context;
    :cond_1
    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/FolderInfo;->options:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderEventListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/folder/FolderEventListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public sortContents()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->mCurrentComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderInfo;->dropPos:[I

    .line 259
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;->unbind()V

    .line 238
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    :cond_0
    return-void
.end method
