.class public Lcom/samsung/android/app/music/list/common/FilterOptionManager;
.super Ljava/lang/Object;
.source "FilterOptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    }
.end annotation


# static fields
.field private static final FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;


# instance fields
.field private mFilterOption:I

.field private final mFilterOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

.field private mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

.field private final mUiPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const v2, 0x7f0a01bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f0a01c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0a01c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f0a01be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f0a01bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0a045b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0a045c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f0a04ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f0a0487

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f0a01bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V
    .locals 3
    .param p2, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "filterable"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;I",
            "Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "recyclerViewFragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<*>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V
    .locals 9
    .param p2, "root"    # Landroid/view/View;
    .param p3, "filterable"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;",
            "Landroid/view/View;",
            "Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "recyclerViewFragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOptionsList:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    const-string v6, "music_player_pref"

    const/4 v7, 0x0

    .line 64
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mUiPreferences:Landroid/content/SharedPreferences;

    .line 65
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 68
    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mUiPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;->getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    .line 70
    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-interface {v6}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;->getFilterOptions()[I

    move-result-object v3

    .line 71
    .local v3, "filterOptions":[I
    array-length v5, v3

    .line 72
    .local v5, "len":I
    new-array v1, v5, [I

    .line 73
    .local v1, "dropDownItems":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 74
    aget v2, v3, v4

    .line 75
    .local v2, "filterOption":I
    sget-object v6, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->FILTER_OPTION_STR_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    aput v6, v1, v4

    .line 76
    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOptionsList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "filterOption":I
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setDropDownItems([I)V

    .line 79
    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    new-instance v7, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager$1;-><init>(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setOnItemSelectedListener(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;)V

    .line 124
    iget v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->handleFilterOption(I)V

    .line 125
    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOptionsList:Ljava/util/List;

    iget v8, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setSelection(I)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/common/FilterOptionManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->handleFilterOption(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mUiPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/common/FilterOptionManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method private handleFilterOption(I)V
    .locals 3
    .param p1, "filterOption"    # I

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 130
    .local v0, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 132
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 147
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 150
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 153
    :pswitch_7
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 156
    :pswitch_8
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 159
    :pswitch_9
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getFilterOption()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setFilterItemEnabled(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setItemEnabled(IZ)V

    .line 179
    return-void
.end method

.method public setFilterOption(I)V
    .locals 3
    .param p1, "option"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    if-ne v0, p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mSpinnerHelper:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOptionsList:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->mFilterOption:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setSelection(I)V

    goto :goto_0
.end method
