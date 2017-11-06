.class public Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
.source "SeslPreferenceGroupAdapter.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;
.implements Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter",
        "<",
        "Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;",
        ">;",
        "Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;",
        "Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslPreferenceGroupAdapter"


# instance fields
.field private mCntPreferenceCategory:I

.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mIsForceRecycleList:Z

.field private mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

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

.field private mPreferenceListInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/preference/SeslPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

.field private mhasStableIds:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)V
    .locals 2
    .param p1, "preferenceGroup"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mhasStableIds:Z

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 76
    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mCntPreferenceCategory:I

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mIsForceRecycleList:Z

    .line 80
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    instance-of v0, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->shouldUseGeneratedIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 140
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->syncMyPreferences()V

    .line 141
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->setHasStableIds(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 212
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->createPreferenceLayout(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 213
    .local v0, "pl":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .param p2, "in"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 204
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 205
    .local v0, "pl":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->access$102(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->access$202(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->access$302(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;I)I

    .line 208
    return-object v0

    .line 204
    .end local v0    # "pl":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;-><init>()V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)V
    .locals 6
    .param p2, "group"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/preference/SeslPreference;",
            ">;",
            "Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/preference/SeslPreference;>;"
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->sortPreferences()V

    .line 169
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 170
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 171
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v2

    .line 173
    .local v2, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    instance-of v4, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceCategory;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    sget v4, Lcom/samsung/android/support/sesl/R$layout;->sesl_preference_category_empty:I

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setLayoutResource(I)V

    .line 181
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->addPreferenceClassName(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V

    .line 183
    instance-of v4, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 184
    check-cast v3, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    .line 185
    .local v3, "preferenceAsGroup":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)V

    .line 190
    .end local v3    # "preferenceAsGroup":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;
    :cond_1
    invoke-virtual {v2, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setOnPreferenceChangeInternalListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;)V

    .line 193
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mLargerFontLevel:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;->mTitleLargerTextSize:I

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setTitleLargerTextSize(II)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_2
    return-void
.end method

.method private syncMyPreferences()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 147
    .local v1, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->setOnPreferenceChangeInternalListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreference$OnPreferenceChangeInternalListener;)V

    goto :goto_0

    .line 149
    .end local v1    # "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "fullPreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/preference/SeslPreference;>;"
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceGroup:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)V

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v2, "visiblePreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/preference/SeslPreference;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 155
    .restart local v1    # "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    .end local v1    # "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_2
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 161
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 164
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 224
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-wide/16 v0, -0x1

    .line 233
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    .line 293
    .local v0, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->createPreferenceLayout(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .line 295
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 296
    .local v1, "viewType":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 301
    .end local v1    # "viewType":I
    .local v2, "viewType":I
    :goto_0
    return v2

    .line 299
    .end local v2    # "viewType":I
    .restart local v1    # "viewType":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 300
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v4, v5}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 301
    .end local v1    # "viewType":I
    .restart local v2    # "viewType":I
    goto :goto_0
.end method

.method public getPreferenceAdapterPosition(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)I
    .locals 4
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 356
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 357
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 358
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 359
    .local v0, "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    .end local v0    # "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 357
    .restart local v0    # "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPreferenceAdapterPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 345
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 346
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 347
    .local v0, "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    .end local v0    # "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 345
    .restart local v0    # "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "candidate":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    .line 339
    .local v0, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;)V

    .line 340
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->onBindViewHolder(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 307
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;

    .line 308
    .local v1, "pl":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 319
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 324
    .local v2, "view":Landroid/view/View;
    const v4, 0x1020018

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 325
    .local v3, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 326
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->access$300(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;->access$300(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 333
    :cond_0
    :goto_0
    new-instance v4, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    invoke-direct {v4, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v4

    .line 329
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 240
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 244
    :cond_0
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public onPreferenceVisibilityChange(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 6
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 254
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 261
    const/4 v2, -0x1

    .line 262
    .local v2, "previousVisibleIndex":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 263
    .local v1, "pref":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    .end local v1    # "pref":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 266
    .restart local v1    # "pref":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    .end local v1    # "pref":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .end local v2    # "previousVisibleIndex":I
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 279
    .local v0, "listSize":I
    const/4 v3, 0x0

    .local v3, "removalIndex":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 280
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 284
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 279
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
