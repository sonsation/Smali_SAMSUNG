.class public Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;
.super Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;
.source "SeslFragmentTabHost.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$DummyTabFactory;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

.field private mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 137
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "ft"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    move-result-object v0

    .line 336
    .local v0, "newTab":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    if-eq v1, v0, :cond_3

    .line 337
    if-nez p2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object p2

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 347
    :cond_1
    if-eqz v0, :cond_2

    .line 348
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 350
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 349
    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 351
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 357
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    .line 360
    :cond_3
    return-object p2

    .line 353
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->attach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    goto :goto_0
.end method

.method private ensureContent()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 219
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x1020013

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 157
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 158
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;-><init>(Landroid/content/Context;)V

    .line 165
    .local v2, "tw":Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;
    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setId(I)V

    .line 166
    invoke-virtual {v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->setOrientation(I)V

    .line 167
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v3, 0x1020011

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 173
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    new-instance v0, Landroid/widget/FrameLayout;

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 176
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 177
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;
    :cond_0
    return-void
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 366
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    .line 367
    .local v2, "tab":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    iget-object v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    .end local v2    # "tab":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    :goto_1
    return-object v2

    .line 365
    .restart local v2    # "tab":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "tab":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    invoke-super {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setOnTabChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;)V

    .line 152
    return-void
.end method


# virtual methods
.method public addTab(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "tabSpec"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$DummyTabFactory;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->setContent(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabContentFactory;)Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;

    .line 236
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    invoke-direct {v1, v2, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 239
    .local v1, "info":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mAttached:Z

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 244
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v0

    .line 246
    .local v0, "ft":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 247
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->commit()I

    .line 251
    .end local v0    # "ft":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->addTab(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$TabSpec;)V

    .line 253
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 257
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->onAttachedToWindow()V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "currentTag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 264
    .local v2, "ft":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 265
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    .line 266
    .local v4, "tab":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    iget-object v6, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 267
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_0

    .line 268
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mLastTab:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;

    .line 264
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :cond_1
    if-nez v2, :cond_2

    .line 277
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v2

    .line 279
    :cond_2
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    goto :goto_1

    .line 286
    .end local v4    # "tab":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$TabInfo;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mAttached:Z

    .line 287
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->doTabChanged(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v2

    .line 288
    if-eqz v2, :cond_4

    .line 289
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->commit()I

    .line 290
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->executePendingTransactions()Z

    .line 292
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->onDetachedFromWindow()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mAttached:Z

    .line 298
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 310
    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;

    if-nez v1, :cond_0

    .line 311
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 317
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 314
    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;

    .line 315
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 316
    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 302
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 303
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 304
    .local v0, "ss":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 305
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mAttached:Z

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->doTabChanged(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v0

    .line 323
    .local v0, "ft":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;->commit()I

    .line 327
    .end local v0    # "ft":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 330
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mOnTabChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$OnTabChangeListener;

    .line 230
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 195
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setup()V

    .line 196
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureContent()V

    .line 199
    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .param p3, "containerId"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 203
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setup()V

    .line 204
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContext:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    .line 206
    iput p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mContainerId:I

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->ensureContent()V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTabHost;->setId(I)V

    .line 215
    :cond_0
    return-void
.end method
