.class public Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
.super Ljava/lang/Object;
.source "SeslMenuBuilder.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/internal/view/SeslSupportMenu;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;,
        Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "SeslMenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mDefaultShowAsAction:I

    .line 163
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 165
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mOptionalIconsVisible:Z

    .line 169
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsClosing:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 221
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 226
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsVisibleItemsStale:Z

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 230
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsActionItemsStale:Z

    .line 232
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 233
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .prologue
    .line 457
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 281
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 284
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 285
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 286
    .local v0, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v0, :cond_1

    .line 287
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :cond_1
    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 292
    .end local v0    # "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 341
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 343
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 359
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 346
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 347
    .local v2, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v2, :cond_3

    .line 348
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_3
    invoke-interface {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->getId()I

    move-result v0

    .line 351
    .local v0, "id":I
    if-lez v0, :cond_2

    .line 352
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 353
    .local v1, "parcel":Landroid/os/Parcelable;
    if-eqz v1, :cond_2

    .line 354
    invoke-interface {v2, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 318
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 322
    .local v2, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 323
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 324
    .local v1, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v1, :cond_2

    .line 325
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->getId()I

    move-result v0

    .line 328
    .local v0, "id":I
    if-lez v0, :cond_1

    .line 329
    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 330
    .local v4, "state":Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    .line 331
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 337
    .end local v0    # "id":I
    .end local v1    # "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    .end local v4    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    .param p2, "preferredPresenter"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .prologue
    .line 297
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 314
    :cond_0
    return v2

    .line 299
    :cond_1
    const/4 v2, 0x0

    .line 302
    .local v2, "result":Z
    if-eqz p2, :cond_2

    .line 303
    invoke-interface {p2, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z

    move-result v2

    .line 306
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 307
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 308
    .local v0, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v0, :cond_4

    .line 309
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_4
    if-nez v2, :cond_3

    .line 311
    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z

    move-result v2

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 830
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 831
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 832
    add-int/lit8 v2, v0, 0x1

    .line 836
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :goto_1
    return v2

    .line 829
    .restart local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 836
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 762
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 764
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 765
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :cond_1
    sget-object v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 567
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 571
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1196
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1198
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1199
    iput-object p5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1202
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1203
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1222
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 1223
    return-void

    .line 1205
    :cond_0
    if-lez p1, :cond_3

    .line 1206
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1211
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1212
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1218
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1207
    :cond_3
    if-eqz p2, :cond_1

    .line 1208
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1213
    :cond_4
    if-eqz p4, :cond_2

    .line 1214
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 795
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 796
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/support/sesl/R$bool;->sesl_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 797
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mShortcutsVisible:Z

    .line 798
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 472
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 507
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 508
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 509
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 510
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 512
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 513
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeGroup(I)V

    .line 516
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 517
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 518
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 520
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 523
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 524
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 525
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 526
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 527
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 516
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 510
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 518
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 531
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 438
    invoke-static {p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getOrdering(I)I

    move-result v4

    .line 440
    .local v4, "ordering":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v7

    .line 443
    .local v7, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 451
    return-object v7
.end method

.method public addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method public addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {p1, p2, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsActionItemsStale:Z

    .line 263
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 493
    .local v0, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    .line 494
    .local v1, "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)V

    .line 496
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;->onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 826
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 595
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 579
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->clear()V

    .line 581
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->clearHeader()V

    .line 582
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 583
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 584
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 585
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1187
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1188
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1189
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 1192
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 1025
    return-void
.end method

.method public final close(Z)V
    .locals 4
    .param p1, "closeAllMenus"    # Z

    .prologue
    .line 1008
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsClosing:Z

    if-eqz v2, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 1010
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsClosing:Z

    .line 1011
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1012
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 1013
    .local v0, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v0, :cond_1

    .line 1014
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1016
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    goto :goto_1

    .line 1019
    .end local v0    # "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 1347
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eq v3, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1365
    :cond_1
    :goto_0
    return v0

    .line 1349
    :cond_2
    const/4 v0, 0x0

    .line 1351
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 1352
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1353
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 1354
    .local v1, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v1, :cond_4

    .line 1355
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1356
    :cond_4
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1360
    .end local v1    # "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    .line 1362
    if-eqz v0, :cond_1

    .line 1363
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;->onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 1325
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 1343
    :cond_0
    :goto_0
    return v0

    .line 1327
    :cond_1
    const/4 v0, 0x0

    .line 1329
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 1330
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1331
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 1332
    .local v1, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v1, :cond_3

    .line 1333
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1334
    :cond_3
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1338
    .end local v1    # "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    .line 1340
    if-eqz v0, :cond_0

    .line 1341
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v2

    .line 713
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 714
    const/4 p2, 0x0

    .line 717
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 718
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 720
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 725
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :goto_1
    return v0

    .line 717
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v3

    .line 677
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 678
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 679
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 690
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :goto_1
    return-object v1

    .line 681
    .restart local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 682
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 684
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 685
    goto :goto_1

    .line 677
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v2

    .line 696
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 697
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 698
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 703
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :goto_1
    return v0

    .line 696
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 908
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 909
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 910
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 912
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-object v8

    .line 916
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 917
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 919
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 922
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 923
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 924
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    goto :goto_0

    .line 927
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 930
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 931
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 932
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 934
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 940
    goto :goto_0

    .line 933
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 930
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    const/16 v10, 0x43

    .line 864
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 865
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 866
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 868
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 870
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 892
    :cond_0
    return-void

    .line 875
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 876
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 877
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 878
    .local v3, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 879
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 881
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 882
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    .line 888
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 889
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 9

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 1139
    .local v6, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsActionItemsStale:Z

    if-nez v7, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1144
    :cond_0
    const/4 v0, 0x0

    .line 1145
    .local v0, "flagged":Z
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1146
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 1147
    .local v4, "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-nez v4, :cond_1

    .line 1148
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1150
    :cond_1
    invoke-interface {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1154
    .end local v4    # "presenter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1155
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1156
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1157
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1158
    .local v3, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 1159
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 1160
    .local v2, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isActionButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1161
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1163
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1169
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v3    # "itemsSize":I
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1170
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1171
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1173
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->flagActionItems()V

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 735
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->flagActionItems()V

    .line 1183
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1321
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 0

    .prologue
    .line 1302
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1107
    :goto_0
    return-object v3

    .line 1095
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1097
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1099
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1100
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 1101
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1104
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsVisibleItemsStale:Z

    .line 1105
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsActionItemsStale:Z

    .line 1107
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 658
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v4, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v3

    .line 662
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v2

    .line 664
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 665
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 666
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    .end local v1    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1086
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsActionItemsStale:Z

    .line 1087
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 1088
    return-void
.end method

.method onItemVisibleChanged(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1075
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsVisibleItemsStale:Z

    .line 1076
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 1077
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1035
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsVisibleItemsStale:Z

    .line 1038
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mIsActionItemsStale:Z

    .line 1041
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 949
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 957
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 959
    .local v1, "itemImpl":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 996
    :cond_1
    :goto_0
    return v0

    .line 963
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->invoke()Z

    move-result v0

    .line 965
    .local v0, "invoked":Z
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getSupportActionProvider()Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    move-result-object v2

    .line 966
    .local v2, "provider":Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 967
    .local v3, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 968
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 969
    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    goto :goto_0

    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    move v3, v6

    .line 966
    goto :goto_1

    .line 972
    .restart local v3    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_9

    .line 973
    :cond_5
    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_6

    .line 975
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 978
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_7

    .line 979
    new-instance v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)V

    .line 982
    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .line 983
    .local v4, "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    if-eqz v3, :cond_8

    .line 984
    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 986
    :cond_8
    invoke-direct {p0, v4, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->dispatchSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 987
    if-nez v0, :cond_1

    .line 988
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    goto :goto_0

    .line 991
    .end local v4    # "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    :cond_9
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_1

    .line 992
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 841
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v1

    .line 843
    .local v1, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    const/4 v0, 0x0

    .line 845
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 846
    invoke-virtual {p0, v1, p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 849
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 850
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 853
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 543
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 544
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 545
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 546
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 548
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 552
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 554
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeItemAtInt(IZ)V

    .line 537
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeItemAtInt(IZ)V

    .line 576
    return-void
.end method

.method public removeMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 273
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;

    .line 274
    .local v0, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 397
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    .line 401
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 404
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v3

    .line 405
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 406
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 407
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 408
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 409
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 411
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 412
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .line 413
    .local v5, "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 405
    .end local v5    # "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 418
    .local v0, "expandedId":I
    if-lez v0, :cond_0

    .line 419
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 420
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 421
    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 367
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 370
    const/4 v5, 0x0

    .line 372
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v2

    .line 373
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 374
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 375
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 376
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 377
    if-nez v5, :cond_0

    .line 378
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 380
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 381
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 386
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .line 387
    .local v3, "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 373
    .end local v3    # "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 394
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method public setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    .line 432
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1314
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mDefaultShowAsAction:I

    .line 237
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 598
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 600
    .local v2, "group":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 601
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 602
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 603
    .local v1, "curItem":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 604
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 601
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 611
    .end local v1    # "curItem":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 615
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 617
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 618
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 619
    .local v2, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 620
    invoke-virtual {v2, p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setExclusiveCheckable(Z)V

    .line 621
    invoke-virtual {v2, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 617
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    .end local v2    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 646
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 648
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 649
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 650
    .local v2, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 651
    invoke-virtual {v2, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 648
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v2    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 628
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 633
    .local v0, "N":I
    const/4 v1, 0x0

    .line 634
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 635
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 636
    .local v3, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 637
    invoke-virtual {v3, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 634
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    .end local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 642
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1269
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1270
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1257
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1258
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1245
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1246
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1233
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1234
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1281
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1282
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1317
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mOptionalIconsVisible:Z

    .line 1318
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1378
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mOverrideVisibleItems:Z

    .line 1379
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mQwertyMode:Z

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 748
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1060
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1062
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 1063
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1064
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 1066
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1057
    :cond_0
    return-void
.end method
