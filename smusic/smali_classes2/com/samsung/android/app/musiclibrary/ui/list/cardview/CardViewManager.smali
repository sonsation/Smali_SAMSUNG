.class public Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
.super Ljava/lang/Object;
.source "CardViewManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;
    }
.end annotation


# instance fields
.field private final mCardViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

.field private final mCardViewable:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

.field private final mContext:Landroid/content/Context;

.field private mData:Landroid/database/Cursor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mItemViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPlayCardViewListener:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequestedPosition:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "cardViewable"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;
    .param p3, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mItemViewHolders:Ljava/util/List;

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mRequestedPosition:I

    .line 48
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewable:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewable:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->getCardViewItemCount()I

    move-result v0

    .line 53
    .local v0, "cardViewItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mItemViewHolders:Ljava/util/List;

    iget-object v3, p3, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->onCreateItemViewHolder(Landroid/view/View;I)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    .end local p1    # "fragment":Landroid/app/Fragment;
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getListType()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$CursorLoaderCallbacks;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager$1;)V

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewable:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mData:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mItemViewHolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mRequestedPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mRequestedPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;)Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mOnPlayCardViewListener:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mOnPlayCardViewListener:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    return-object p1
.end method


# virtual methods
.method public playCardViewItem(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewable:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    if-nez v0, :cond_0

    .line 72
    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->onPlayStarted(Z)V

    .line 87
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mData:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mData:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mItemViewHolders:Ljava/util/List;

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewable:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mItemViewHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mData:Landroid/database/Cursor;

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->onPlayIconClick(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;Landroid/database/Cursor;)V

    .line 79
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->onPlayStarted(Z)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;->onPlayStarted(Z)V

    goto :goto_0

    .line 84
    :cond_2
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mRequestedPosition:I

    .line 85
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mOnPlayCardViewListener:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;

    goto :goto_0
.end method

.method public setViewEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mCardViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->setViewEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->mItemViewHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;

    .line 65
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->setViewEnabled(Z)V

    goto :goto_0

    .line 67
    .end local v0    # "holder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
    :cond_0
    return-void
.end method
