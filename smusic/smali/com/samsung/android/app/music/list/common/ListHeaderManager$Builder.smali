.class public Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

.field private final mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mLayoutId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final mListButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mListButtons:Ljava/util/List;

    .line 53
    const v0, 0x7f0400a3

    iput v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mLayoutId:I

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .prologue
    .line 45
    iget v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mLayoutId:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mListButtons:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .locals 2
    .param p1, "button"    # I

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 67
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mListButtons:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    :goto_0
    return-object p0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mListButtons:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;Lcom/samsung/android/app/music/list/common/ListHeaderManager$1;)V

    return-object v0
.end method

.method public setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .locals 0
    .param p1, "filterable"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mFilterable:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    .line 62
    return-object p0
.end method

.method public setLayout(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .locals 0
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->mLayoutId:I

    .line 80
    return-object p0
.end method
