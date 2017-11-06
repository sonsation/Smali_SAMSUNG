.class public abstract Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
.source "SeslPreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;
    }
.end annotation


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIdRecycleCache:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mLargerFontLevel:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/preference/SeslPreference;",
            ">;"
        }
    .end annotation
.end field

.field mTitleLargerTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    .line 61
    iput v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mCurrentPreferenceOrder:I

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    .line 77
    new-instance v1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mIdRecycleCache:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 93
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceGroup_android_orderingFromXml:I

    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceGroup_android_orderingFromXml:I

    .line 97
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/content/res/SeslTypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mIdRecycleCache:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    return-object v0
.end method

.method private removePreferenceInt(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z
    .locals 6
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onPrepareForRemoval()V

    .line 234
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 235
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mIdRecycleCache:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onDetached()V

    .line 258
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return v1

    .line 259
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addItemFromInflater(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->addPreference(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    .line 141
    return-void
.end method

.method public addPreference(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z
    .locals 8
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    const/4 v6, 0x1

    .line 169
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 216
    :goto_0
    return v5

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getOrder()I

    move-result v5

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_2

    .line 175
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v5, :cond_1

    .line 176
    iget v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setOrder(I)V

    .line 179
    :cond_1
    instance-of v5, p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 182
    check-cast v5, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 186
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v5, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 187
    .local v2, "insertionIndex":I
    if-gez v2, :cond_3

    .line 188
    mul-int/lit8 v5, v2, -0x1

    add-int/lit8 v2, v5, -0x1

    .line 191
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->onPrepareAddPreference(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 192
    const/4 v5, 0x0

    goto :goto_0

    .line 195
    :cond_4
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    move-result-object v4

    .line 200
    .local v4, "preferenceManager":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mIdRecycleCache:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 203
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mIdRecycleCache:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 204
    .local v0, "id":J
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mIdRecycleCache:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_1
    invoke-virtual {p1, v4, v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onAttachedToHierarchy(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;J)V

    .line 210
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v5, :cond_5

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onAttached()V

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->notifyHierarchyChanged()V

    move v5, v6

    .line 216
    goto :goto_0

    .line 197
    .end local v0    # "id":J
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preferenceManager":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 206
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "preferenceManager":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    :cond_6
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getNextId()J

    move-result-wide v0

    .restart local v0    # "id":J
    goto :goto_1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 408
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 409
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 397
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 398
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .locals 6
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    .end local p0    # "this":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
    :goto_0
    return-object p0

    .line 303
    .restart local p0    # "this":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 304
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 305
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    .line 306
    .local v2, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v2

    .line 309
    goto :goto_0

    .line 312
    :cond_1
    instance-of v5, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    if-eqz v5, :cond_2

    .line 313
    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    .line 314
    .end local v2    # "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v4

    .line 315
    .local v4, "returnedPreference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    if-eqz v4, :cond_2

    move-object p0, v4

    .line 316
    goto :goto_0

    .line 304
    .end local v4    # "returnedPreference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->notifyDependencyChange(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 380
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 381
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onParentChanged(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Z)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onAttached()V

    .line 350
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 354
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 355
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onAttached()V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 3

    .prologue
    .line 361
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onDetached()V

    .line 364
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mAttachedToHierarchy:Z

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 368
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 369
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onDetached()V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onParentChanged(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Z)V

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 268
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/preference/SeslPreference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 269
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->removePreferenceInt(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    .line 268
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 271
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->notifyHierarchyChanged()V

    .line 273
    return-void

    .line 271
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/preference/SeslPreference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->removePreferenceInt(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v0

    .line 227
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->notifyHierarchyChanged()V

    .line 228
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mOrderingAsAdded:Z

    .line 124
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 388
    monitor-exit p0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
