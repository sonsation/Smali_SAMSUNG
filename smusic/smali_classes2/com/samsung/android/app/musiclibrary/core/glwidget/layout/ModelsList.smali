.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;
.super Ljava/lang/Object;
.source "ModelsList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<T",
        "ListModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ModelsList"


# instance fields
.field private mAdapterSize:I

.field private mAdapterWrap:Z

.field private mEmptyIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

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

.field private mInitialized:Z

.field private mListFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mListSize:I

.field private mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSelectedAdapterIndex:I

.field private mSelectedModelIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory",
            "<T",
            "ListModel;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload",
            "<T",
            "ListModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    .local p1, "factory":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory<TListModel;>;"
    .local p2, "reload":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload<TListModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterator:Ljava/util/Iterator;

    .line 100
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterable:Ljava/lang/Iterable;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    .line 109
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    return-object v0
.end method

.method private reloadAll(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 399
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v3, :cond_1

    .line 419
    :cond_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    invoke-direct {p0, v3, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    .line 403
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v0, v3, 0x1

    .line 404
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 406
    .local v2, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_2

    .line 407
    const/4 v0, 0x0

    .line 409
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    move v0, v1

    .line 410
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 411
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    :cond_3
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v0, v3, -0x1

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 414
    .restart local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v4, :cond_4

    if-gez v0, :cond_4

    .line 415
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v0, v4, -0x1

    .line 417
    :cond_4
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    move v0, v1

    .line 418
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method private reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V
    .locals 1
    .param p2, "adapterIndex"    # I
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListModel;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    .local p1, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    if-ge p2, v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;->reload(Ljava/lang/Object;IZ)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mReloader:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Reload;->hide(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private selectNext()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    const/4 v5, 0x0

    .line 311
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->getLeft()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 312
    .local v1, "reloadModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    sub-int/2addr v3, v4

    add-int v0, v2, v3

    .line 314
    .local v0, "reloadAdapterIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 315
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    sub-int/2addr v0, v2

    .line 318
    :cond_0
    invoke-direct {p0, v1, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    .line 320
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->updateSelection(Z)V

    .line 321
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 322
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 323
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 329
    :cond_1
    return-void
.end method

.method private selectPrev()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    const/4 v4, 0x0

    .line 290
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->getRight()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 291
    .local v1, "reloadModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .line 293
    .local v0, "reloadAdapterIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v2, :cond_0

    if-gez v0, :cond_0

    .line 294
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/2addr v0, v2

    .line 297
    :cond_0
    invoke-direct {p0, v1, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    .line 299
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->updateSelection(Z)V

    .line 300
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 301
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    if-gez v2, :cond_1

    .line 302
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 308
    :cond_1
    return-void
.end method


# virtual methods
.method public getLeftFromSelected()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterable:Ljava/lang/Iterable;

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->toLeft()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0
.end method

.method public getModelsCount()I
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    return v0
.end method

.method public getRightFromSelected()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterable:Ljava/lang/Iterable;

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->toRight()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedAdapterIndex()I
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    return v0
.end method

.method public getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->getSelected()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    goto :goto_0
.end method

.method public getSelectedModelIndex()I
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<T",
            "ListModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mEmptyIterator:Ljava/util/Iterator;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public loadedAdapterIndex(I)Z
    .locals 6
    .param p1, "adapterIndex"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v2

    .line 342
    :cond_1
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    sub-int v0, v4, v5

    .line 343
    .local v0, "leftMostAdapterIndex":I
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 344
    .local v1, "rightMostAdapterIndex":I
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 345
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 346
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    add-int/lit8 v1, v4, 0x1

    .line 348
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-eqz v4, :cond_5

    .line 349
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    rem-int v0, v4, v5

    .line 350
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    rem-int v1, v4, v5

    .line 366
    :cond_3
    :goto_1
    if-le v0, v1, :cond_7

    .line 367
    if-ge p1, v0, :cond_4

    if-gt p1, v1, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 352
    :cond_5
    if-gez v0, :cond_6

    .line 353
    const/4 v0, 0x0

    .line 355
    :cond_6
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_3

    .line 356
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v1, v4, -0x1

    goto :goto_1

    .line 369
    :cond_7
    if-gt v0, p1, :cond_8

    if-gt p1, v1, :cond_8

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_8
    move v3, v2

    goto :goto_2
.end method

.method public reloadAll()V
    .locals 1

    .prologue
    .line 377
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V

    .line 378
    return-void
.end method

.method public reloadItem(I)Z
    .locals 4
    .param p1, "adapterIndex"    # I

    .prologue
    .line 381
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    const/4 v1, 0x0

    .line 382
    .local v1, "res":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 383
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 384
    const/4 v3, 0x1

    invoke-direct {p0, v0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V

    .line 389
    const/4 v1, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    :cond_1
    return v1
.end method

.method public setAdapterWrap(Z)V
    .locals 1
    .param p1, "adapterWrap"    # Z

    .prologue
    .line 168
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V

    .line 172
    return-void
.end method

.method public declared-synchronized setDimensions(III)V
    .locals 3
    .param p1, "adapterSize"    # I
    .param p2, "listSize"    # I
    .param p3, "selectedIdx"    # I

    .prologue
    .line 132
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    if-ne p3, v1, :cond_0

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 143
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    if-eqz v0, :cond_1

    .line 144
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$Factory;->recycle(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;, "TListModel;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 148
    :cond_2
    :try_start_2
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;

    invoke-direct {v1, p2, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;-><init>(IILcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;

    .line 149
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mListSize:I

    .line 150
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedModelIndex:I

    .line 151
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    .line 154
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setSelectedAdapterIndex(I)V
    .locals 1
    .param p1, "adapterIndex"    # I

    .prologue
    .line 232
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->reloadAll(Z)V

    .line 234
    return-void
.end method

.method public updateSelectedAdapterIndex(Z)Z
    .locals 3
    .param p1, "next"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList<TListModel;>;"
    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mInitialized:Z

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterWrap:Z

    if-nez v1, :cond_3

    .line 260
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mAdapterSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 268
    :cond_2
    if-nez p1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->mSelectedAdapterIndex:I

    if-lez v1, :cond_0

    .line 277
    :cond_3
    if-eqz p1, :cond_4

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->selectNext()V

    .line 282
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->selectPrev()V

    goto :goto_1
.end method
