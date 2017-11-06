.class public Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;
.super Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
.source "RecyclerGridView.java"


# static fields
.field private static final DEFAULT_NUM_COLUMNS:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mNumColumns:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mNumColumns:I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    sget-object v10, Lcom/samsung/android/app/music/R$styleable;->MilkRecyclerGridView:[I

    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 35
    .local v4, "count":I
    const/4 v6, 0x0

    .line 36
    .local v6, "leftMargin":I
    const/4 v8, 0x0

    .line 37
    .local v8, "rightMargin":I
    const/4 v9, 0x0

    .line 38
    .local v9, "topMargin":I
    const/4 v2, 0x0

    .line 40
    .local v2, "bottomMargin":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 41
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 42
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 43
    const/4 v10, 0x3

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 44
    .local v7, "numColumns":I
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setNumColums(I)V

    .line 40
    .end local v7    # "numColumns":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    .line 46
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    goto :goto_1

    .line 47
    :cond_2
    const/4 v10, 0x2

    if-ne v1, v10, :cond_3

    .line 48
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    goto :goto_1

    .line 49
    :cond_3
    const/4 v10, 0x3

    if-ne v1, v10, :cond_4

    .line 50
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    goto :goto_1

    .line 51
    :cond_4
    const/4 v10, 0x4

    if-ne v1, v10, :cond_5

    .line 52
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    goto :goto_1

    .line 53
    :cond_5
    const/4 v10, 0x5

    if-ne v1, v10, :cond_0

    .line 54
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 55
    .local v3, "bottomPadding":I
    new-instance v10, Lcom/samsung/android/app/music/milk/store/widget/EndLineSpacingDecoration;

    invoke-direct {v10, v3}, Lcom/samsung/android/app/music/milk/store/widget/EndLineSpacingDecoration;-><init>(I)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    .line 58
    .end local v1    # "attr":I
    .end local v3    # "bottomPadding":I
    :cond_6
    invoke-virtual {p0, v6, v9, v8, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setMarginsInt(IIII)V

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->initializeSpanSize()V

    .line 61
    return-void
.end method

.method private initializeSpanSize()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initializeSpanSize, "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getNumColumns()I
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 84
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumColumns : layout manager is null. columns - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mNumColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mNumColumns:I

    goto :goto_0
.end method

.method public newLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method public setMarginsInt(IIII)V
    .locals 1
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I
    .param p3, "rightMargin"    # I
    .param p4, "bottomMargin"    # I

    .prologue
    .line 89
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;-><init>(IIII)V

    .line 91
    .local v0, "itemDecoration":Lcom/samsung/android/app/music/milk/store/widget/GridViewItemOffsetDecoration;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 92
    return-void
.end method

.method public setNumColums(I)V
    .locals 3
    .param p1, "columns"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mNumColumns:I

    .line 74
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNumColums : columns - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 78
    :cond_0
    return-void
.end method
