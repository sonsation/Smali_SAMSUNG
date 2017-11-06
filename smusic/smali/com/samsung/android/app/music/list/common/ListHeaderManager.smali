.class public Lcom/samsung/android/app/music/list/common/ListHeaderManager;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    }
.end annotation


# static fields
.field public static final LIST_BUTTON_EDIT:I = 0x2

.field public static final LIST_BUTTON_PLAY_ALL:I = 0x1

.field public static final LIST_BUTTON_SELECT_ALL:I


# instance fields
.field private final mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field private final mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private final mListButtonViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mValidItemCount:I

.field private final mView:Landroid/view/View;

.field private final mViewEnabler:Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)V
    .locals 8
    .param p1, "builder"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .prologue
    const v7, 0x7f12022a

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mValidItemCount:I

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mListButtonViews:Ljava/util/List;

    .line 97
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->access$100(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 98
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 99
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->access$200(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mView:Landroid/view/View;

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->access$300(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mView:Landroid/view/View;

    const v4, 0x7f120225

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "spinner":Landroid/view/View;
    new-instance v3, Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const v5, 0x7f12004a

    .line 104
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 105
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->access$300(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .line 110
    .end local v2    # "spinner":Landroid/view/View;
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->access$400(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 111
    .local v1, "listButtonCount":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 112
    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mListButtonViews:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mView:Landroid/view/View;

    .line 113
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 122
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->access$400(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mListButtonViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->initButton(ILandroid/view/View;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    .end local v0    # "i":I
    .end local v1    # "listButtonCount":I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    goto :goto_0

    .line 114
    .restart local v1    # "listButtonCount":I
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 115
    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mListButtonViews:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mView:Landroid/view/View;

    const v5, 0x7f120228

    .line 116
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mListButtonViews:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mView:Landroid/view/View;

    .line 118
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .restart local v0    # "i":I
    :cond_3
    new-instance v3, Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mViewEnabler:Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .line 134
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mViewEnabler:Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 135
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v4, Lcom/samsung/android/app/music/list/common/ListHeaderManager$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$2;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 151
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v4, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$3;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addOnItemCountListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;)V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .prologue
    .line 33
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mValidItemCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/list/common/ListHeaderManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mValidItemCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/common/ListHeaderManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->setViewEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mListButtonViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method private initButton(ILandroid/view/View;)V
    .locals 0
    .param p1, "button"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 193
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 195
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->initPlayAll(Landroid/view/View;)V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->initSelectAll(Landroid/view/View;)V

    goto :goto_0

    .line 201
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->initEdit(Landroid/view/View;)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initEdit(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 250
    const v1, 0x7f120221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, "editTextView":Landroid/widget/TextView;
    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$6;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method private initPlayAll(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 224
    const v1, 0x7f120221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    .local v0, "playAllTextView":Landroid/widget/TextView;
    const v1, 0x7f0a014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method private initSelectAll(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    const v1, 0x7f120221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    .local v0, "selectAllTextView":Landroid/widget/TextView;
    const v1, 0x7f0a0450

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method private setViewEnabledInternal(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mListButtonViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    .local v0, "view":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 170
    const v2, 0x7f120221

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 172
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public getFilterOption()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->getFilterOption()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setFilterOption(I)V
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->setFilterOption(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public setListButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mViewEnabler:Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    .line 180
    return-void
.end method

.method public updateUi()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getValidItemCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mValidItemCount:I

    .line 163
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mValidItemCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 164
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->setViewEnabledInternal(Z)V

    .line 165
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
