.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;
.super Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
.source "SeslFragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SeslFragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

.field private mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field private final mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;)V
    .locals 2
    .param p1, "fm"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 74
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .line 78
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 131
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 133
    .local v0, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_1

    .line 139
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .line 142
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->saveFragmentInstanceState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;

    move-result-object v1

    .line 141
    :goto_1
    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->remove(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 146
    return-void

    :cond_2
    move-object v1, v2

    .line 142
    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->commitNowAllowingStateLoss()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 170
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 99
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    .line 100
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 101
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    .line 126
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    if-nez v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 110
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->getItem(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    .line 112
    .local v1, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_2

    .line 113
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;

    .line 114
    .local v2, "fss":Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setInitialSavedState(Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;)V

    .line 118
    .end local v2    # "fss":Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_3

    .line 119
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setMenuVisibility(Z)V

    .line 122
    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setUserVisibleHint(Z)V

    .line 123
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurTransaction:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-object v0, v1

    .line 126
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 201
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 202
    check-cast v0, Landroid/os/Bundle;

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 204
    const-string/jumbo v7, "states"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 205
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 207
    if-eqz v2, :cond_0

    .line 208
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 209
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v7, v2, v3

    check-cast v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 213
    .local v6, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    .local v5, "key":Ljava/lang/String;
    const-string v8, "f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 215
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 216
    .local v4, "index":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v8, v0, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    .line 217
    .local v1, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v1, :cond_3

    .line 218
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_2

    .line 219
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setMenuVisibility(Z)V

    .line 222
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 224
    :cond_3
    const-string v8, "SeslFragmentStatePagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad fragment at key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 181
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 182
    .restart local v4    # "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;

    .line 183
    .local v1, "fss":[Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 184
    const-string/jumbo v5, "states"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 186
    .end local v1    # "fss":[Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 188
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    if-nez v4, :cond_1

    .line 190
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 192
    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v5, v4, v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 186
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_3
    return-object v4
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 151
    .local v0, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eq v0, v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setMenuVisibility(Z)V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setUserVisibleHint(Z)V

    .line 156
    :cond_0
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setMenuVisibility(Z)V

    .line 158
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setUserVisibleHint(Z)V

    .line 160
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 162
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    return-void
.end method
